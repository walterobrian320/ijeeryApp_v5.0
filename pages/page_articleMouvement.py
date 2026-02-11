import customtkinter as ctk
from tkinter import ttk, messagebox
from tkcalendar import DateEntry
import psycopg2
import json
from datetime import datetime

class FenetreRechercheArticle(ctk.CTkToplevel):
    """Fenêtre de recherche d'articles"""
    def __init__(self, parent, callback):
        super().__init__(parent)
        self.callback = callback
        self.title("🔍 Recherche d'Article")
        self.geometry("800x500")
        self.selected_article = None
        
        # Rendre la fenêtre modale
        self.transient(parent)
        self.grab_set()
        
        self.setup_ui()
        self.charger_articles()
    
    def connect_db(self):
        """Connexion à la base de données PostgreSQL"""
        try:
            with open('config.json') as f:
                config = json.load(f)
                db_config = config['database']
            conn = psycopg2.connect(
                host=db_config['host'],
                user=db_config['user'],
                password=db_config['password'],
                database=db_config['database'],
                port=db_config['port']  
            )
            return conn
        except Exception as e:
            messagebox.showerror("Erreur", f"Connexion impossible : {e}")
            return None
    
    def setup_ui(self):
        """Configuration de l'interface"""
        # Frame de recherche
        search_frame = ctk.CTkFrame(self)
        search_frame.pack(pady=10, padx=10, fill="x")
        
        ctk.CTkLabel(search_frame, text="Rechercher:", font=("Arial", 12)).pack(side="left", padx=5)
        self.entry_recherche = ctk.CTkEntry(search_frame, width=300, placeholder_text="Nom ou code article...")
        self.entry_recherche.pack(side="left", padx=5)
        self.entry_recherche.bind("<KeyRelease>", lambda e: self.filtrer_articles())
        
        ctk.CTkButton(
            search_frame, 
            text="🔄 Réinitialiser",
            command=self.charger_articles,
            width=120
        ).pack(side="left", padx=5)
        
        # Frame du treeview
        tree_frame = ctk.CTkFrame(self)
        tree_frame.pack(pady=10, padx=10, fill="both", expand=True)
        
        # Scrollbars
        scrollbar_y = ttk.Scrollbar(tree_frame, orient="vertical")
        scrollbar_y.pack(side="right", fill="y")
        
        # Style
        style = ttk.Style()
        style.theme_use("clam")
        style.configure("Treeview",
                       background="#2b2b2b",
                       foreground="white",
                       fieldbackground="#2b2b2b",
                       borderwidth=0)
        style.configure("Treeview.Heading",
                       background="#1f538d",
                       foreground="white",
                       borderwidth=1)
        style.map('Treeview', background=[('selected', '#0d47a1')])
        
        # Treeview
        columns = ("ID", "Désignation", "Catégorie")
        self.tree = ttk.Treeview(
            tree_frame,
            columns=columns,
            show="headings",
            yscrollcommand=scrollbar_y.set,
            height=15
        )
        
        scrollbar_y.config(command=self.tree.yview)
        
        # Configuration des colonnes
        self.tree.heading("ID", text="ID Article")
        self.tree.heading("Désignation", text="Désignation")
        self.tree.heading("Catégorie", text="Catégorie")
        
        self.tree.column("ID", width=100, anchor="center")
        self.tree.column("Désignation", width=400, anchor="w")
        self.tree.column("Catégorie", width=200, anchor="w")
        
        self.tree.pack(fill="both", expand=True)
        self.tree.bind("<Double-Button-1>", lambda e: self.valider())
        
        # Frame des boutons
        btn_frame = ctk.CTkFrame(self)
        btn_frame.pack(pady=10, padx=10, fill="x")
        
        ctk.CTkButton(
            btn_frame,
            text="✓ Sélectionner",
            command=self.valider,
            fg_color="#2e7d32",
            width=150
        ).pack(side="left", padx=5)
        
        ctk.CTkButton(
            btn_frame,
            text="✕ Annuler",
            command=self.destroy,
            fg_color="#d32f2f",
            width=150
        ).pack(side="right", padx=5)
    
    def charger_articles(self):
        """Charge tous les articles"""
        for item in self.tree.get_children():
            self.tree.delete(item)
        
        conn = self.connect_db()
        if conn:
            cursor = conn.cursor()
            cursor.execute("""
                SELECT DISTINCT 
                    a.idarticle, 
                    a.designation,
                    COALESCE(c.designationcat, 'Sans catégorie') as categorie
                FROM tb_article a
                LEFT JOIN tb_categoriearticle c ON a.idca = c.idca
                WHERE a.deleted = 0
                ORDER BY a.designation
            """)
            
            for row in cursor.fetchall():
                self.tree.insert("", "end", values=row)
            
            cursor.close()
            conn.close()
    
    def filtrer_articles(self):
        """Filtre les articles selon la recherche"""
        recherche = self.entry_recherche.get().strip().lower()
        
        if not recherche:
            self.charger_articles()
            return
        
        for item in self.tree.get_children():
            self.tree.delete(item)
        
        conn = self.connect_db()
        if conn:
            cursor = conn.cursor()
            cursor.execute("""
                SELECT DISTINCT 
                    a.idarticle, 
                    a.designation,
                    COALESCE(c.designationcat, 'Sans catégorie') as categorie
                FROM tb_article a
                LEFT JOIN tb_categoriearticle c ON a.idca = c.idca
                WHERE a.deleted = 0
                AND (
                    LOWER(a.designation) LIKE %s 
                    OR CAST(a.idarticle AS TEXT) LIKE %s
                )
                ORDER BY a.designation
            """, (f"%{recherche}%", f"%{recherche}%"))
            
            for row in cursor.fetchall():
                self.tree.insert("", "end", values=row)
            
            cursor.close()
            conn.close()
    
    def valider(self):
        """Valide la sélection"""
        selection = self.tree.selection()
        if not selection:
            messagebox.showwarning("Attention", "Veuillez sélectionner un article.")
            return
        
        item = self.tree.item(selection[0])
        values = item['values']
        
        self.selected_article = {
            'idarticle': values[0],
            'designation': values[1],
            'categorie': values[2]
        }
        
        self.callback(self.selected_article)
        self.destroy()


class PageArticleMouvement(ctk.CTkFrame):
    def __init__(self, parent, initial_idarticle=None):
        super().__init__(parent)

        self.grid_columnconfigure(0, weight=1)
        self.grid_rowconfigure(1, weight=1)

        self.initial_idarticle = initial_idarticle

        # Variables d'affichage
        self.selected_idarticle = None
        self.selected_article_name = None

        # Création interface
        self.create_widgets()

        # Chargement des données
        self.load_magasins()
        self.load_mouvements()
    
    def connect_db(self):
        """Connexion à la base de données PostgreSQL"""
        try:
            with open('config.json') as f:
                config = json.load(f)
                db_config = config['database']
            conn = psycopg2.connect(
                host=db_config['host'],
                user=db_config['user'],
                password=db_config['password'],
                database=db_config['database'],
                port=db_config['port']  
            )
            return conn
        except FileNotFoundError:
            messagebox.showerror("Erreur de configuration", "Fichier 'config.json' non trouvé.")
            return None
        except KeyError:
            messagebox.showerror("Erreur de configuration", "Clés de base de données manquantes dans 'config.json'.")
            return None
        except psycopg2.Error as err:
            messagebox.showerror("Erreur de connexion", f"Erreur de connexion à PostgreSQL : {err}")
            return None
        except UnicodeDecodeError as err:
            messagebox.showerror("Erreur d'encodage", f"Problème d'encodage du fichier de configuration : {err}")
            return None
    
    def formater_nombre(self, nombre):
        """Formate un nombre avec séparateur de milliers (1 000,00)"""
        try:
            nombre = float(nombre)
            partie_entiere = int(nombre)
            partie_decimale = abs(nombre - partie_entiere)
        
            str_entiere = f"{partie_entiere:,}".replace(',', ' ')
            str_decimale = f"{partie_decimale:.2f}".split('.')[1]
        
            return f"{str_entiere},{str_decimale}"
        except:
            return "0,00"
    
    def get_unite_hierarchy(self, conn, idarticle):
        """Récupère la hiérarchie complète des unités pour un article"""
        cursor = conn.cursor()
        cursor.execute("""
            SELECT idunite, niveau, COALESCE(qtunite, 1) as qtunite, designationunite, codearticle
            FROM tb_unite
            WHERE idarticle = %s
            ORDER BY niveau ASC
        """, (idarticle,))
    
        unites = {}
        for row in cursor.fetchall():
            idunite, niveau, qtunite, designation, codearticle = row
            unites[idunite] = {
                'niveau': niveau,
                'qtunite': qtunite,
                'designation': designation,
                'codearticle': codearticle
            }
        cursor.close()
        return unites
    
    def calculer_facteurs_conversion(self, unites_hierarchy):
        """Calcule les facteurs de conversion vers l'unité de base"""
        if not unites_hierarchy:
            return {}
    
        unite_base = min(unites_hierarchy.items(), key=lambda x: x[1]['niveau'])
        idunite_base = unite_base[0]
    
        facteurs = {idunite_base: 1.0}
    
        unites_triees = sorted(unites_hierarchy.items(), key=lambda x: x[1]['niveau'])
    
        facteur_cumul = 1.0
        for i, (idunite, info) in enumerate(unites_triees):
            if i == 0:
                facteurs[idunite] = 1.0
            else:
                facteur_cumul *= info['qtunite']
                facteurs[idunite] = facteur_cumul
    
        return facteurs
    
    def convert_to_unite_cible(self, quantity, from_unite, to_unite, facteurs_conversion):
        """Convertit une quantité de from_unite vers to_unite"""
        if from_unite == to_unite:
            return quantity
    
        if from_unite not in facteurs_conversion or to_unite not in facteurs_conversion:
            return 0
    
        qte_en_base = quantity * facteurs_conversion[from_unite]
        qte_en_cible = qte_en_base / facteurs_conversion[to_unite]
    
        return qte_en_cible
    
    def ouvrir_recherche_article(self):
        """Ouvre la fenêtre de recherche d'articles"""
        FenetreRechercheArticle(self, self.on_article_selected)
    
    def on_article_selected(self, article):
        """Callback quand un article est sélectionné"""
        self.selected_idarticle = article['idarticle']
        self.selected_article_name = article['designation']
        
        # Mettre à jour le label
        self.label_article_selectionne.configure(
            text=f"Article sélectionné: {article['designation']}"
        )
        
        # Activer le bouton de réinitialisation
        self.btn_reset_article.configure(state="normal")
        
        # Recharger les mouvements
        self.load_mouvements()
    
    def reset_article_selection(self):
        """Réinitialise la sélection d'article"""
        self.selected_idarticle = None
        self.selected_article_name = None
        
        self.label_article_selectionne.configure(
            text="Article sélectionné: Tous les articles"
        )
        
        self.btn_reset_article.configure(state="disabled")
        
        self.load_mouvements()
    
    def create_widgets(self):
        """Création des widgets de l'interface"""
        # En-tête
        header = ctk.CTkFrame(self, fg_color="transparent")
        header.grid(row=0, column=0, sticky="ew", padx=10, pady=10)
        header.grid_columnconfigure(1, weight=1)
        
        # Titre
        ctk.CTkLabel(
            header, 
            text="📋 Mouvements d'Articles", 
            font=("Arial", 20, "bold")
        ).grid(row=0, column=0, sticky="w", padx=5)
        
        # Frame de filtres
        filter_frame = ctk.CTkFrame(self)
        filter_frame.grid(row=1, column=0, sticky="ew", padx=10, pady=(0, 10))
        filter_frame.grid_columnconfigure((0, 1, 2), weight=1)
        
        # Sélection d'article avec bouton loupe
        article_frame = ctk.CTkFrame(filter_frame, fg_color="transparent")
        article_frame.grid(row=0, column=0, rowspan=2, padx=5, pady=5, sticky="ew")
        
        ctk.CTkLabel(article_frame, text="Article:", font=("Arial", 12, "bold")).pack(anchor="w", pady=(0, 5))
        
        btn_frame = ctk.CTkFrame(article_frame, fg_color="transparent")
        btn_frame.pack(fill="x")
        
        ctk.CTkButton(
            btn_frame,
            text="🔍 Rechercher un article",
            command=self.ouvrir_recherche_article,
            width=180,
            fg_color="#1976d2"
        ).pack(side="left", padx=(0, 5))
        
        self.btn_reset_article = ctk.CTkButton(
            btn_frame,
            text="✕",
            command=self.reset_article_selection,
            width=40,
            fg_color="#d32f2f",
            state="disabled"
        )
        self.btn_reset_article.pack(side="left")
        
        self.label_article_selectionne = ctk.CTkLabel(
            article_frame,
            text="Article sélectionné: Tous les articles",
            font=("Arial", 10),
            text_color="#90caf9"
        )
        self.label_article_selectionne.pack(anchor="w", pady=(5, 0))
        
        # Type de document
        ctk.CTkLabel(filter_frame, text="Type de document:").grid(row=0, column=1, padx=5, pady=5, sticky="w")
        self.combo_type = ctk.CTkComboBox(
            filter_frame,
            values=["Tous", "Entrée", "Sortie", "Vente", "Transfert", "Inventaire", "Avoir"],
            command=lambda x: self.load_mouvements(),
            width=200
        )
        self.combo_type.grid(row=1, column=1, padx=5, pady=5, sticky="ew")
        self.combo_type.set("Tous")
        
        # Magasin
        ctk.CTkLabel(filter_frame, text="Magasin:").grid(row=0, column=2, padx=5, pady=5, sticky="w")
        self.combo_magasin = ctk.CTkComboBox(
            filter_frame,
            values=["Tous les magasins"],
            command=lambda x: self.load_mouvements(),
            width=200
        )
        self.combo_magasin.grid(row=1, column=2, padx=5, pady=5, sticky="ew")
        self.combo_magasin.set("Tous les magasins")
        
        # Dates
        date_frame = ctk.CTkFrame(filter_frame)
        date_frame.grid(row=2, column=0, columnspan=3, pady=10, padx=5, sticky="ew")
        date_frame.grid_columnconfigure((0, 1, 2, 3, 4), weight=1)
        
        ctk.CTkLabel(date_frame, text="Du:").grid(row=0, column=0, padx=5, sticky="e")
        self.date_debut = DateEntry(
            date_frame,
            width=12,
            background='darkblue',
            foreground='white',
            borderwidth=2,
            date_pattern='dd/mm/yyyy'
        )
        self.date_debut.grid(row=0, column=1, padx=5, sticky="w")
        
        ctk.CTkLabel(date_frame, text="Au:").grid(row=0, column=2, padx=5, sticky="e")
        self.date_fin = DateEntry(
            date_frame,
            width=12,
            background='darkblue',
            foreground='white',
            borderwidth=2,
            date_pattern='dd/mm/yyyy'
        )
        self.date_fin.grid(row=0, column=3, padx=5, sticky="w")
        
        # Bouton de recherche
        ctk.CTkButton(
            date_frame,
            text="🔍 Rechercher",
            command=self.load_mouvements,
            width=150
        ).grid(row=0, column=4, padx=10)
        
        # Treeview
        tree_frame = ctk.CTkFrame(self)
        tree_frame.grid(row=2, column=0, sticky="nsew", padx=10, pady=(0, 10))
        tree_frame.grid_rowconfigure(0, weight=1)
        tree_frame.grid_columnconfigure(0, weight=1)
        
        # Scrollbars
        scrollbar_y = ttk.Scrollbar(tree_frame, orient="vertical")
        scrollbar_y.grid(row=0, column=1, sticky="ns")
        
        scrollbar_x = ttk.Scrollbar(tree_frame, orient="horizontal")
        scrollbar_x.grid(row=1, column=0, sticky="ew")
        
        # Configuration du style
        style = ttk.Style()
        style.theme_use("clam")
        style.configure("Treeview",
                       background="#2b2b2b",
                       foreground="white",
                       fieldbackground="#2b2b2b",
                       borderwidth=0)
        style.configure("Treeview.Heading",
                       background="#1f538d",
                       foreground="white",
                       borderwidth=1)
        style.map('Treeview',
                 background=[('selected', '#0d47a1')])
        
        # Treeview
        columns = ("Date", "Référence", "Type", "Unité", "Entrée", "Sortie", "Solde", "Magasin", "Utilisateur")
        self.tree = ttk.Treeview(
            tree_frame,
            columns=columns,
            show="headings",
            yscrollcommand=scrollbar_y.set,
            xscrollcommand=scrollbar_x.set,
            height=20
        )
        
        scrollbar_y.config(command=self.tree.yview)
        scrollbar_x.config(command=self.tree.xview)
        
        # Configuration des colonnes
        column_widths = {
            "Date": 100,
            "Référence": 150,
            "Type": 120,
            "Unité": 120,
            "Entrée": 100,
            "Sortie": 100,
            "Solde": 120,
            "Magasin": 150,
            "Utilisateur": 120
        }
        
        for col in columns:
            self.tree.heading(col, text=col)
            self.tree.column(col, width=column_widths.get(col, 100), anchor="center")
        
        self.tree.grid(row=0, column=0, sticky="nsew")
        
        # Configuration des tags
        self.tree.tag_configure('header', background='#1976d2', foreground='white', font=('Arial', 10, 'bold'))
        self.tree.tag_configure('separator', background='#424242')
        
        # Label total
        self.label_total = ctk.CTkLabel(
            self,
            text="Nombre total de documents: 0",
            font=("Arial", 12, "bold")
        )
        self.label_total.grid(row=3, column=0, pady=5)
    
    def load_magasins(self):
        """Charge la liste des magasins"""
        conn = self.connect_db()
        if conn:
            cursor = conn.cursor()
            cursor.execute("""
                SELECT idmag, designationmag 
                FROM tb_magasin 
                WHERE deleted = 0
                ORDER BY designationmag
            """)
            magasins = cursor.fetchall()
            
            magasin_list = ["Tous les magasins"] + [f"{m[0]} - {m[1]}" for m in magasins]
            self.combo_magasin.configure(values=magasin_list)
            
            cursor.close()
            conn.close()
    
    def load_mouvements(self):
        """Charge les mouvements d'articles"""
        conn = self.connect_db()
        if not conn:
            return
        
        try:
            # Effacer le treeview
            for item in self.tree.get_children():
                self.tree.delete(item)
            
            # Récupérer les filtres
            date_debut = self.date_debut.get_date()
            date_fin = self.date_fin.get_date()
            type_doc = self.combo_type.get()
            
            # Filtre magasin
            magasin_selection = self.combo_magasin.get()
            idmag = None
            if magasin_selection != "Tous les magasins":
                idmag = int(magasin_selection.split(" - ")[0])
            
            cursor = conn.cursor()
            
            # Récupérer la hiérarchie des unités si un article est sélectionné
            unites_hierarchy = {}
            if self.selected_idarticle:
                unites_hierarchy = self.get_unite_hierarchy(conn, int(self.selected_idarticle))
            
            mouvements = []
            
            # --- REQUÊTE ENTRÉES (Livraisons Fournisseurs) ---
            if type_doc in ["Tous", "Entrée"]:
                query_entree = """
                    SELECT 
                        lf.dateregistre as date,
                        lf.reflivfrs as reference,
                        'Entrée' as type,
                        COALESCE(lf.qtlivrefrs, 0) as entree,
                        0 as sortie,
                        m.designationmag as magasin,
                        usr.username,
                        u.idunite
                    FROM tb_livraisonfrs lf
                    INNER JOIN tb_unite u ON lf.idunite = u.idunite
                    INNER JOIN tb_article a ON u.idarticle = a.idarticle
                    LEFT JOIN tb_magasin m ON lf.idmag = m.idmag
                    LEFT JOIN tb_users usr ON lf.iduser = usr.iduser
                    WHERE DATE(lf.dateregistre) BETWEEN %s AND %s
                    AND lf.deleted = 0
                """
                
                params_entree = [date_debut, date_fin]
                
                if self.selected_idarticle:
                    query_entree += " AND a.idarticle = %s"
                    params_entree.append(int(self.selected_idarticle))
                
                if idmag:
                    query_entree += " AND lf.idmag = %s"
                    params_entree.append(idmag)
                
                cursor.execute(query_entree, params_entree)
                mouvements.extend(cursor.fetchall())
            
            # --- REQUÊTE SORTIES ---
            if type_doc in ["Tous", "Sortie"]:
                query_sortie = """
                    SELECT 
                        s.dateregistre as date,
                        s.refsortie as reference,
                        'Sortie' as type,
                        0 as entree,
                        COALESCE(sd.qtsortie, 0) as sortie,
                        m.designationmag as magasin,
                        usr.username,
                        u.idunite
                    FROM tb_sortie s
                    INNER JOIN tb_sortiedetail sd ON s.id = sd.idsortie
                    INNER JOIN tb_unite u ON sd.idunite = u.idunite
                    INNER JOIN tb_article a ON u.idarticle = a.idarticle
                    LEFT JOIN tb_magasin m ON sd.idmag = m.idmag
                    LEFT JOIN tb_users usr ON s.iduser = usr.iduser
                    WHERE DATE(s.dateregistre) BETWEEN %s AND %s
                    AND s.deleted = 0
                    AND sd.deleted = 0
                """
                
                params_sortie = [date_debut, date_fin]
                
                if self.selected_idarticle:
                    query_sortie += " AND a.idarticle = %s"
                    params_sortie.append(int(self.selected_idarticle))
                
                if idmag:
                    query_sortie += " AND sd.idmag = %s"
                    params_sortie.append(idmag)
                
                cursor.execute(query_sortie, params_sortie)
                mouvements.extend(cursor.fetchall())
            
            # --- REQUÊTE VENTES (Sortie de stock via vente) ---
            if type_doc in ["Tous", "Vente"]:
                try:
                    query_vente = """
                        SELECT 
                            v.dateregistre as date,
                            v.refvente as reference,
                            'Vente' as type,
                            0 as entree,
                            COALESCE(vd.qtvente, 0) as sortie,
                            m.designationmag as magasin,
                            usr.username,
                            u.idunite
                        FROM tb_vente v
                        INNER JOIN tb_ventedetail vd ON v.id = vd.idvente
                        INNER JOIN tb_unite u ON vd.idunite = u.idunite
                        INNER JOIN tb_article a ON u.idarticle = a.idarticle
                        LEFT JOIN tb_magasin m ON vd.idmag = m.idmag
                        LEFT JOIN tb_users usr ON v.iduser = usr.iduser
                        WHERE DATE(v.dateregistre) BETWEEN %s AND %s
                        AND v.deleted = 0
                        AND vd.deleted = 0
                    """
                    
                    params_vente = [date_debut, date_fin]
                    
                    if self.selected_idarticle:
                        query_vente += " AND a.idarticle = %s"
                        params_vente.append(int(self.selected_idarticle))
                    
                    if idmag:
                        query_vente += " AND vd.idmag = %s"
                        params_vente.append(idmag)
                    
                    cursor.execute(query_vente, params_vente)
                    mouvements.extend(cursor.fetchall())
                
                except Exception as e:
                    print(f"ERREUR dans requête vente: {str(e)}")
                    import traceback
                    traceback.print_exc()
                    messagebox.showerror("Erreur Vente", f"Erreur lors de la récupération des ventes: {str(e)}")
            
            # --- REQUÊTE TRANSFERTS ---
            if type_doc in ["Tous", "Transfert"]:
                try:
                    # Transferts (Sorties du magasin source)
                    query_transfert_sortie = """
                        SELECT 
                            t.dateregistre as date,
                            t.reftransfert as reference,
                            'Transfert (Sortie)' as type,
                            0 as entree,
                            COALESCE(td.qttransfert, 0) as sortie,
                            m.designationmag as magasin,
                            usr.username,
                            u.idunite
                        FROM tb_transfert t
                        INNER JOIN tb_transfertdetail td ON t.idtransfert = td.idtransfert
                        INNER JOIN tb_unite u ON td.idunite = u.idunite
                        INNER JOIN tb_article a ON u.idarticle = a.idarticle
                        LEFT JOIN tb_magasin m ON td.idmagsortie = m.idmag
                        LEFT JOIN tb_users usr ON t.iduser = usr.iduser
                        WHERE DATE(t.dateregistre) BETWEEN %s AND %s
                        AND t.deleted = 0
                        AND td.deleted = 0
                    """
                    
                    params_sortie = [date_debut, date_fin]
                    
                    if self.selected_idarticle:
                        query_transfert_sortie += " AND a.idarticle = %s"
                        params_sortie.append(int(self.selected_idarticle))
                    
                    if idmag:
                        query_transfert_sortie += " AND td.idmagsortie = %s"
                        params_sortie.append(idmag)
                    
                    cursor.execute(query_transfert_sortie, params_sortie)
                    resultats_sortie = cursor.fetchall()
                    
                    # Transferts (Entrées au magasin de destination)
                    query_entree = """
                        SELECT 
                            t.dateregistre as date,
                            t.reftransfert as reference,
                            'Transfert (Entrée)' as type,
                            COALESCE(td.qttransfert, 0) as entree,
                            0 as sortie,
                            m.designationmag as magasin,
                            usr.username,
                            u.idunite
                        FROM tb_transfert t
                        INNER JOIN tb_transfertdetail td ON t.idtransfert = td.idtransfert
                        INNER JOIN tb_unite u ON td.idunite = u.idunite
                        INNER JOIN tb_article a ON u.idarticle = a.idarticle
                        LEFT JOIN tb_magasin m ON td.idmagentree = m.idmag
                        LEFT JOIN tb_users usr ON t.iduser = usr.iduser
                        WHERE DATE(t.dateregistre) BETWEEN %s AND %s
                        AND t.deleted = 0
                        AND td.deleted = 0
                    """
        
                    params_entree = [date_debut, date_fin]
        
                    if self.selected_idarticle:
                        query_entree += " AND a.idarticle = %s"
                        params_entree.append(int(self.selected_idarticle))
        
                    if idmag:
                        query_entree += " AND td.idmagentree = %s"
                        params_entree.append(idmag)
        
                    cursor.execute(query_entree, params_entree)
                    resultats_entree = cursor.fetchall()
        
                    mouvements.extend(resultats_sortie)
                    mouvements.extend(resultats_entree)
        
                except Exception as e:
                    print(f"ERREUR dans requête transfert: {str(e)}")
                    import traceback
                    traceback.print_exc()
                    messagebox.showerror("Erreur Transfert", f"Erreur lors de la récupération des transferts: {str(e)}")

            # --- REQUÊTE INVENTAIRES ---
            if type_doc in ["Tous", "Inventaire"]:
                try:
                    query_inventaire = """
                        SELECT 
                            i.date as date,
                            CONCAT('INV-', i.id) as reference,
                            CONCAT('Inventaire', CASE WHEN i.observation IS NOT NULL AND i.observation != '' 
                                THEN CONCAT(' (', i.observation, ')') ELSE '' END) as type,
                            i.qtinventaire as entree,
                            0 as sortie,
                            m.designationmag as magasin,
                            usr.username,
                            u.idunite
                        FROM tb_inventaire i
                        INNER JOIN tb_unite u ON i.codearticle = u.codearticle
                        INNER JOIN tb_article a ON u.idarticle = a.idarticle
                        LEFT JOIN tb_magasin m ON i.idmag = m.idmag
                        LEFT JOIN tb_users usr ON i.iduser = usr.iduser
                        WHERE DATE(i.date) BETWEEN %s AND %s
                    """
                    
                    params_inventaire = [date_debut, date_fin]
                    
                    if self.selected_idarticle:
                        query_inventaire += " AND a.idarticle = %s"
                        params_inventaire.append(int(self.selected_idarticle))
                    
                    if idmag:
                        query_inventaire += " AND i.idmag = %s"
                        params_inventaire.append(idmag)
                    
                    cursor.execute(query_inventaire, params_inventaire)
                    mouvements.extend(cursor.fetchall())
                
                except Exception as e:
                    print(f"ERREUR dans requête inventaire: {str(e)}")
                    import traceback
                    traceback.print_exc()
                    messagebox.showerror("Erreur Inventaire", f"Erreur lors de la récupération des inventaires: {str(e)}")

            # --- REQUÊTE AVOIRS ---
            if type_doc in ["Tous", "Avoir"]:
                try:
                    query_avoir = """
                        SELECT 
                            av.dateavoir as date,
                            av.refavoir as reference,
                            'Avoir' as type,
                            ad.qtavoir as entree,
                            0 as sortie,
                            m.designationmag as magasin,
                            usr.username,
                            u.idunite
                        FROM tb_avoir av
                        INNER JOIN tb_avoirdetail ad ON av.id = ad.idavoir
                        INNER JOIN tb_unite u ON ad.idunite = u.idunite
                        INNER JOIN tb_article a ON u.idarticle = a.idarticle
                        LEFT JOIN tb_magasin m ON ad.idmag = m.idmag
                        LEFT JOIN tb_users usr ON av.iduser = usr.iduser
                        WHERE DATE(av.dateavoir) BETWEEN %s AND %s
                        AND av.deleted = 0
                    """
                    
                    params_avoir = [date_debut, date_fin]
                    
                    if self.selected_idarticle:
                        query_avoir += " AND a.idarticle = %s"
                        params_avoir.append(int(self.selected_idarticle))
                    
                    if idmag:
                        query_avoir += " AND ad.idmag = %s"
                        params_avoir.append(idmag)
                    
                    cursor.execute(query_avoir, params_avoir)
                    mouvements.extend(cursor.fetchall())
                
                except Exception as e:
                    print(f"ERREUR dans requête avoir: {str(e)}")
                    import traceback
                    traceback.print_exc()
                    messagebox.showerror("Erreur Avoir", f"Erreur lors de la récupération des avoirs: {str(e)}")

            # Trier les mouvements par date
            mouvements.sort(key=lambda x: x[0] if x[0] else datetime.min)
            
            # Si un article EST sélectionné, propager les mouvements à TOUTES les unités
            if self.selected_idarticle:
                # Calculer les facteurs de conversion
                facteurs_conversion = self.calculer_facteurs_conversion(unites_hierarchy)
                
                # Récupérer TOUTES les unités de cet article
                cursor.execute("""
                    SELECT idunite, designationunite, niveau, codearticle
                    FROM tb_unite
                    WHERE idarticle = %s
                    ORDER BY niveau DESC
                """, (int(self.selected_idarticle),))
                toutes_unites = cursor.fetchall()
                
                # Pour chaque unité à afficher
                for idunite_cible, unite_display, niveau_cible, code_cible in toutes_unites:
                    # Ajouter une ligne d'en-tête pour identifier l'unité
                    code_padded = str(code_cible).zfill(10) if code_cible else ""
                    self.tree.insert("", "end", values=(
                        "",
                        f"=== CODE: {code_padded} ===",
                        f"=== {unite_display} ===",
                        unite_display,
                        "",
                        "",
                        "",
                        "",
                        ""
                    ), tags=('header',))
                    
                    solde_cumule = 0
                    for mouv in mouvements:
                        date_format = mouv[0].strftime('%d/%m/%Y') if mouv[0] else ""
                        reference = mouv[1] or ""
                        type_doc_display = mouv[2] or ""
                        entree_originale = float(mouv[3]) if mouv[3] else 0
                        sortie_originale = float(mouv[4]) if mouv[4] else 0
                        magasin_display = mouv[5] or ""
                        username = mouv[6] or ""
                        idunite_source = mouv[7]
                        
                        # CONVERSION vers l'unité cible
                        entree_convertie = self.convert_to_unite_cible(
                            entree_originale, 
                            idunite_source, 
                            idunite_cible, 
                            facteurs_conversion
                        )
                        
                        sortie_convertie = self.convert_to_unite_cible(
                            sortie_originale, 
                            idunite_source, 
                            idunite_cible, 
                            facteurs_conversion
                        )
                        
                        # Calculer le solde cumulé avec les valeurs converties
                        solde_cumule += entree_convertie - sortie_convertie
                        
                        # Insérer dans le treeview
                        self.tree.insert("", "end", values=(
                            date_format,
                            reference,
                            type_doc_display,
                            unite_display,
                            self.formater_nombre(entree_convertie),
                            self.formater_nombre(sortie_convertie),
                            self.formater_nombre(solde_cumule),
                            magasin_display,
                            username
                        ))
                    
                    # Ligne de séparation entre les unités
                    if idunite_cible != toutes_unites[-1][0]:
                        self.tree.insert("", "end", values=("", "", "", "", "", "", "", "", ""), tags=('separator',))
                
                # Compter le nombre total de mouvements
                nb_mouvements = len(mouvements)
                nb_unites = len(toutes_unites)
                self.label_total.configure(
                    text=f"Nombre total de documents: {nb_mouvements} | Affiché pour {nb_unites} unité(s)"
                )
            
            else:
                # Affichage normal sans conversion (pas d'article sélectionné)
                solde_cumule = 0
                for mouv in mouvements:
                    date_format = mouv[0].strftime('%d/%m/%Y') if mouv[0] else ""
                    reference = mouv[1] or ""
                    type_doc_display = mouv[2] or ""
                    entree = float(mouv[3]) if mouv[3] else 0
                    sortie = float(mouv[4]) if mouv[4] else 0
                    magasin_display = mouv[5] or ""
                    username = mouv[6] or ""
                    
                    # Récupérer la désignation de l'unité
                    idunite = mouv[7]
                    cursor.execute("SELECT designationunite FROM tb_unite WHERE idunite = %s", (idunite,))
                    result = cursor.fetchone()
                    unite_display = result[0] if result else ""
                    
                    solde_cumule += entree - sortie
                    
                    self.tree.insert("", "end", values=(
                        date_format,
                        reference,
                        type_doc_display,
                        unite_display,
                        self.formater_nombre(entree),
                        self.formater_nombre(sortie),
                        self.formater_nombre(solde_cumule),
                        magasin_display,
                        username
                    ))
                
                self.label_total.configure(text=f"Nombre total de documents: {len(mouvements)}")
            
            cursor.close()
            
        except psycopg2.Error as err:
            messagebox.showerror("Erreur", f"Erreur lors du chargement des mouvements: {err}")
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur inattendue: {str(e)}")
        finally:
            conn.close()


# Test de la classe (optionnel)
if __name__ == "__main__":
    ctk.set_appearance_mode("dark")
    ctk.set_default_color_theme("blue")
    
    root = ctk.CTk()
    root.title("Mouvements d'Articles")
    root.geometry("1400x700")
    
    # Configuration de la grille du root
    root.grid_rowconfigure(0, weight=1)
    root.grid_columnconfigure(0, weight=1)
    
    # Création et affichage de la page
    page = PageArticleMouvement(root)
    page.grid(row=0, column=0, sticky="nsew", padx=10, pady=10)
    
    root.mainloop()