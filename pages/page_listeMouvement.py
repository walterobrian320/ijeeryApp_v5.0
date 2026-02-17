"""
================================================================================
PAGE: Liste Mouvements d'Articles
================================================================================
Module permettant la consultation des listes de mouvements d'articles avec:
- Navigation par type de mouvement (entrée, sortie, transfert, etc.)
- Recherche et filtrage avancé
- Affichage tabulaire détaillé
- Export vers Excel
- Statistiques et totaux
================================================================================
"""

import customtkinter as ctk
from tkinter import messagebox, ttk
import psycopg2
import json
import pandas as pd
import os
from datetime import datetime
from resource_utils import get_config_path, safe_file_read


# ============================================================
# CONFIGURATION DE L'APPARENCE
# ============================================================
NAV_BUTTON_FG = "#034787"  # Bleu pour boutons de navigation
NAV_BUTTON_HOVER = "#0565c9"
ACTIVE_NAV_BG = "#268908"  # Vert pour bouton actif


class PageListeMouvement(ctk.CTkFrame):
    """
    Page de consultation des listes de mouvements d'articles.
    
    Affiche différents types de mouvements:
    - Entrées d'articles
    - Sorties d'articles
    - Transferts d'articles
    - Consommation interne
    - Changement d'articles
    """
    
    def __init__(self, master, iduser=None):
        """
        Initialise la page de liste des mouvements.
        
        Args:
            master: Le widget parent (généralement le content_frame de App)
            iduser: ID de l'utilisateur connecté
        """
        super().__init__(master, fg_color="white")
        
        # Configuration de la grille principale
        self.grid_rowconfigure(0, weight=1)
        self.grid_columnconfigure(0, weight=1)
        
        # Attributs de la classe
        self.iduser = iduser
        self.type_mouvement_actif = "entree"  # Type par défaut
        self.data_df = pd.DataFrame()
        
        # Dictionnaire des types de mouvements
        self.types_mouvement = {
            "entree": {"label": "📥 Listes Entrées", "id": 1},
            "sortie": {"label": "📤 Listes Sorties", "id": 2},
            "transfert": {"label": "🔄 Listes Transfert", "id": 3},
            "consommation": {"label": "⚙️ Listes Consommation\nInterne", "id": 4},
            "changement": {"label": "🔁 Listes Changement\nd'article", "id": 5}
        }
        
        # Initialiser l'interface utilisateur
        self.setup_ui()
        
        # Charger les données initiales (entrées)
        self.on_mouvement_button_click("entree")
    
    
    # ========================================================
    # MÉTHODES DE CONFIGURATION DE L'INTERFACE
    # ========================================================
    
    def setup_ui(self):
        """Construit l'interface utilisateur avec panneau latéral et zone de contenu."""
        
        # Créer un frame principal avec deux colonnes
        main_frame = ctk.CTkFrame(self, fg_color="white")
        main_frame.grid(row=0, column=0, sticky="nsew", padx=10, pady=10)
        main_frame.grid_rowconfigure(0, weight=1)
        main_frame.grid_columnconfigure(1, weight=1)
        
        # ============================================================
        # PANNEAU DE NAVIGATION GAUCHE
        # ============================================================
        self.nav_frame = ctk.CTkFrame(main_frame, fg_color="#F0F0F0", corner_radius=10, border_width=2, border_color="#CCCCCC")
        self.nav_frame.grid(row=0, column=0, sticky="ns", padx=(0, 10), pady=0)
        
        # Titre du panneau de navigation
        titre_nav = ctk.CTkLabel(
            self.nav_frame,
            text="📋 Types de\nMouvements",
            font=ctk.CTkFont(family="Segoe UI", size=12, weight="bold"),
            text_color="#034787"
        )
        titre_nav.pack(padx=10, pady=(15, 10), anchor="center")
        
        # Séparateur
        separator = ctk.CTkFrame(self.nav_frame, height=2, fg_color="#CCCCCC")
        separator.pack(fill="x", padx=10, pady=(0, 10))
        
        # Dictionnaire pour stocker les boutons (pour gérer l'état actif)
        self.mouvement_buttons = {}
        
        # Créer les boutons pour chaque type de mouvement
        for key, info in self.types_mouvement.items():
            btn = ctk.CTkButton(
                self.nav_frame,
                text=info["label"],
                command=lambda k=key: self.on_mouvement_button_click(k),
                fg_color=NAV_BUTTON_FG,
                hover_color=NAV_BUTTON_HOVER,
                corner_radius=8,
                height=50,
                font=ctk.CTkFont(family="Segoe UI", size=11, weight="bold"),
                text_color="white"
            )
            btn.pack(padx=10, pady=5, fill="x")
            self.mouvement_buttons[key] = btn
        
        # ============================================================
        # PANNEAU PRINCIPAL (DROITE)
        # ============================================================
        content_frame = ctk.CTkFrame(main_frame, fg_color="white")
        content_frame.grid(row=0, column=1, sticky="nsew", padx=0)
        content_frame.grid_rowconfigure(2, weight=1)
        content_frame.grid_columnconfigure(0, weight=1)
        
        # --- Titre de la page ---
        self.titre_page = ctk.CTkLabel(
            content_frame,
            text="📥 Listes Entrées d'Articles",
            font=ctk.CTkFont(family="Segoe UI", size=18, weight="bold"),
            text_color="#034787"
        )
        self.titre_page.grid(row=0, column=0, sticky="w", padx=10, pady=(10, 5))
        
        # --- Panneau d'en-tête (recherche, filtre, export) ---
        self.header_frame = ctk.CTkFrame(content_frame, fg_color="#F5F5F5", corner_radius=8, border_width=1, border_color="#E0E0E0")
        self.header_frame.grid(row=1, column=0, sticky="ew", padx=10, pady=(5, 10))
        self.header_frame.grid_columnconfigure(1, weight=1)
        
        # Label recherche
        ctk.CTkLabel(self.header_frame, text="🔍 Recherche:", font=ctk.CTkFont(weight="bold")).grid(row=0, column=0, padx=10, pady=10, sticky="w")
        
        # Entry recherche
        self.search_entry = ctk.CTkEntry(
            self.header_frame,
            placeholder_text="Entrez un critère de recherche...",
            width=250
        )
        self.search_entry.grid(row=0, column=1, padx=10, pady=10, sticky="ew")
        self.search_entry.bind("<Return>", lambda e: self.search_data())
        
        # Bouton rechercher
        btn_search = ctk.CTkButton(
            self.header_frame,
            text="Chercher",
            command=self.search_data,
            fg_color="#1f538d",
            hover_color="#14375e",
            width=100
        )
        btn_search.grid(row=0, column=2, padx=5, pady=10)
        
        # Bouton réinitialiser
        btn_reset = ctk.CTkButton(
            self.header_frame,
            text="Réinitialiser",
            command=self.reset_search,
            fg_color="#666666",
            hover_color="#444444",
            width=100
        )
        btn_reset.grid(row=0, column=3, padx=5, pady=10)
        
        # Bouton export Excel
        btn_export = ctk.CTkButton(
            self.header_frame,
            text="📊 Export Excel",
            command=self.export_to_excel,
            fg_color="#2e7d32",
            hover_color="#1b5e20",
            width=130
        )
        btn_export.grid(row=0, column=4, padx=5, pady=10)
        
        # --- Tableau de données ---
        self.tree_frame = ctk.CTkFrame(content_frame)
        self.tree_frame.grid(row=2, column=0, sticky="nsew", padx=10, pady=(0, 10))
        self.tree_frame.grid_rowconfigure(0, weight=1)
        self.tree_frame.grid_columnconfigure(0, weight=1)
        
        # Configuration du style du Treeview
        style = ttk.Style()
        style.configure("Treeview",
                       background="#FFFFFF",
                       foreground="#000000",
                       rowheight=22,
                       fieldbackground="#FFFFFF",
                       borderwidth=0,
                       font=('Segoe UI', 9))
        
        style.configure("Treeview.Heading",
                       background="#E8E8E8",
                       foreground="#000000",
                       font=('Segoe UI', 9, 'bold'))
        
        style.map('Treeview', background=[('selected', '#A9A9A9')], foreground=[('selected', '#000000')])
        
        # Colonnes du treeview
        columns = ("N°", "Date", "Référence", "Article", "Quantité", "Unité", "Magasin", "Utilisateur", "Observations")
        self.tree = ttk.Treeview(self.tree_frame, columns=columns, show="headings", height=15)
        
        # Configuration des en-têtes
        for col in columns:
            self.tree.heading(col, text=col)
        
        # Configuration des largeurs
        self.tree.column("N°", width=40, anchor="center")
        self.tree.column("Date", width=100, anchor="center")
        self.tree.column("Référence", width=120, anchor="center")
        self.tree.column("Article", width=200, anchor="w")
        self.tree.column("Quantité", width=100, anchor="center")
        self.tree.column("Unité", width=80, anchor="center")
        self.tree.column("Magasin", width=120, anchor="w")
        self.tree.column("Utilisateur", width=120, anchor="w")
        self.tree.column("Observations", width=150, anchor="w")
        
        # Tags pour les couleurs
        self.tree.tag_configure('row_white', background='#FFFFFF', foreground='black')
        self.tree.tag_configure('row_gray', background='#F5F5F5', foreground='black')
        
        # Scrollbars
        scrollbar_y = ttk.Scrollbar(self.tree_frame, orient="vertical", command=self.tree.yview)
        scrollbar_x = ttk.Scrollbar(self.tree_frame, orient="horizontal", command=self.tree.xview)
        self.tree.configure(yscrollcommand=scrollbar_y.set, xscrollcommand=scrollbar_x.set)
        
        self.tree.grid(row=0, column=0, sticky="nsew")
        scrollbar_y.grid(row=0, column=1, sticky="ns")
        scrollbar_x.grid(row=1, column=0, sticky="ew")
        # Double-clic sur une ligne -> afficher les détails selon le type de mouvement
        self.tree.bind("<Double-1>", lambda e: self.on_row_double_click())
        
        # --- Footer (statistiques) ---
        self.footer_frame = ctk.CTkFrame(content_frame, fg_color="#F0F0F0", corner_radius=8, border_width=1, border_color="#E0E0E0")
        self.footer_frame.grid(row=3, column=0, sticky="ew", padx=10, pady=(10, 0))
        self.footer_frame.grid_columnconfigure(1, weight=1)
        
        # Statistiques
        ctk.CTkLabel(self.footer_frame, text="📊 Statistiques:", font=ctk.CTkFont(weight="bold")).grid(row=0, column=0, padx=10, pady=10, sticky="w")
        
        self.stats_label = ctk.CTkLabel(
            self.footer_frame,
            text="Total lignes: 0 | Quantité totale: 0",
            font=ctk.CTkFont(size=11),
            text_color="#555555"
        )
        self.stats_label.grid(row=0, column=1, padx=10, pady=10, sticky="w")
    
    
    # ========================================================
    # MÉTHODES DE GESTION DES ÉVÉNEMENTS
    # ========================================================
    
    def on_mouvement_button_click(self, type_mouvement):
        """
        Gère le clic sur un bouton de type de mouvement.
        
        Args:
            type_mouvement: La clé du type de mouvement (entree, sortie, etc.)
        """
        # Réinitialiser l'apparence de tous les boutons
        for key, btn in self.mouvement_buttons.items():
            if key == type_mouvement:
                btn.configure(fg_color=ACTIVE_NAV_BG, hover_color="#1b5e20")
            else:
                btn.configure(fg_color=NAV_BUTTON_FG, hover_color=NAV_BUTTON_HOVER)
        
        # Définir le type actif
        self.type_mouvement_actif = type_mouvement
        
        # Mettre à jour le titre
        titre = self.types_mouvement[type_mouvement]["label"]
        self.titre_page.configure(text=titre)
        
        # Réinitialiser la recherche et charger les données
        self.search_entry.delete(0, "end")
        self.load_mouvement_data(type_mouvement)
    
    
    def connect_db(self):
        """
        Établit la connexion à la base de données PostgreSQL.
        
        Returns:
            Une connexion psycopg2 ou None en cas d'erreur
        """
        try:
            with open(get_config_path('config.json')) as f:
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
            messagebox.showerror("Erreur de connexion", f"Impossible de se connecter à la BDD: {str(e)}")
            return None
    
    
    def load_mouvement_data(self, type_mouvement):
        """
        Charge et affiche les données des mouvements dans le tableau.
        
        Args:
            type_mouvement: Le type de mouvement à charger
        """
        conn = self.connect_db()
        if not conn:
            return
        
        try:
            # Déterminer la table et les colonnes à utiliser selon le type
            query = self.get_query_for_mouvement(type_mouvement)
            
            if query:
                self.data_df = pd.read_sql(query, conn)
                self.display_data_in_tree(self.data_df)
                self.update_statistics()
            else:
                messagebox.showwarning("Avertissement", f"Aucune requête définie pour le type: {type_mouvement}")
                self.clear_tree()
        
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur lors du chargement des données: {str(e)}")
        finally:
            if conn:
                conn.close()
    
    
    def get_query_for_mouvement(self, type_mouvement):
        """
        Retourne la requête SQL appropriée selon le type de mouvement.
        
        Args:
            type_mouvement: Le type de mouvement
            
        Returns:
            La requête SQL ou None
        """
        queries = {
            "entree": """
                SELECT
                    ROW_NUMBER() OVER (ORDER BY c.idcom DESC) as "N°",
                    c.datecom as "Date",
                    c.refcom as "Référence",
                    COALESCE(f.nomfrs, '') as "Article",
                    NULL::numeric as "Quantité",
                    '' as "Unité",
                    '' as "Magasin",
                    CONCAT(p.nom, ' ', COALESCE(p.prenom,'')) as "Utilisateur",
                    c.descriptioncom as "Observations"
                FROM tb_commande c
                LEFT JOIN tb_fournisseur f ON c.idfrs = f.idfrs
                LEFT JOIN tb_personnel p ON c.iduser = p.id
                WHERE c.deleted = 0
                ORDER BY c.idcom DESC
            """,
            "sortie": """
                SELECT
                    ROW_NUMBER() OVER (ORDER BY s.id DESC) as "N°",
                    s.dateregistre as "Date",
                    s.refsortie as "Référence",
                    s.description as "Description",
                    CONCAT(COALESCE(p.nom,''), ' ', COALESCE(p.prenom,'')) as "Utilisateur",
                    s.iduser as "iduser"
                FROM tb_sortie s
                LEFT JOIN tb_personnel p ON s.iduser = p.id
                LEFT JOIN tb_users u ON s.iduser = u.iduser
                WHERE s.deleted = 0
                ORDER BY s.id DESC
            """,
            "transfert": """
                SELECT
                    ROW_NUMBER() OVER (ORDER BY t.idtransfert DESC) as "N°",
                    t.dateregistre as "Date",
                    t.reftransfert as "Référence",
                    t.description as "Description",
                    ms.designationmag || ' → ' || me.designationmag as "Magasin",
                    CONCAT(COALESCE(p.nom,''), ' ', COALESCE(p.prenom,'')) as "Utilisateur"
                FROM tb_transfert t
                LEFT JOIN tb_magasin ms ON t.idmagsortie = ms.idmag
                LEFT JOIN tb_magasin me ON t.idmagentree = me.idmag
                LEFT JOIN tb_personnel p ON t.iduser = p.id
                LEFT JOIN tb_users u ON t.iduser = u.iduser
                WHERE t.deleted = 0
                ORDER BY t.idtransfert DESC
            """,
            "consommation": """
                SELECT
                    ROW_NUMBER() OVER (ORDER BY ci.id DESC) as "N°",
                    ci.dateregistre as "Date",
                    ci.refconsommation as "Référence",
                    ci.observation as "Description",
                    ci.valeur_totale as "ValeurTotale",
                    CONCAT(COALESCE(p.nom,''), ' ', COALESCE(p.prenom,'')) as "Utilisateur"
                FROM tb_consommationinterne ci
                LEFT JOIN tb_personnel p ON ci.iduser = p.id
                LEFT JOIN tb_users u ON ci.iduser = u.iduser
                ORDER BY ci.id DESC
            """,
            "changement": """
                SELECT
                    ROW_NUMBER() OVER (ORDER BY ch.idchg DESC) as "N°",
                    ch.datechg as "Date",
                    ch.refchg as "Référence",
                    ch.note as "Description",
                    CONCAT(COALESCE(p.nom,''), ' ', COALESCE(p.prenom,'')) as "Utilisateur"
                FROM tb_changement ch
                LEFT JOIN tb_personnel p ON ch.iduser = p.id
                LEFT JOIN tb_users u ON ch.iduser = u.iduser
                ORDER BY ch.idchg DESC
            """
        }
        
        return queries.get(type_mouvement)
    
    
    def display_data_in_tree(self, df):
        """
        Affiche les données du DataFrame dans le tableau.
        
        Args:
            df: Le DataFrame pandas contenant les données
        """
        # Vider le tableau
        self.clear_tree()

        # Reconfigurer les colonnes du Treeview pour correspondre au DataFrame
        try:
            cols = list(df.columns)
        except Exception:
            cols = ["N°", "Date", "Référence", "Article", "Quantité", "Unité", "Magasin", "Utilisateur", "Observations"]

        self.tree.configure(columns=cols)
        for col in cols:
            self.tree.heading(col, text=col)
            # taille par défaut
            self.tree.column(col, width=120, anchor="w")

        # Insérer les nouvelles lignes
        for idx, row in df.iterrows():
            tag = 'row_white' if idx % 2 == 0 else 'row_gray'
            values = tuple(row)
            self.tree.insert('', 'end', values=values, tags=(tag,))
    
    
    def clear_tree(self):
        """Vide le tableau de toutes les lignes."""
        for item in self.tree.get_children():
            self.tree.delete(item)
    
    
    def search_data(self):
        """Effectue une recherche en fonction du texte saisi."""
        search_term = self.search_entry.get().strip().lower()
        
        if not search_term:
            self.load_mouvement_data(self.type_mouvement_actif)
            return
        
        # Filtrer le DataFrame
        filtered_df = self.data_df[
            self.data_df.astype(str).apply(lambda x: x.str.contains(search_term, case=False)).any(axis=1)
        ]
        
        self.display_data_in_tree(filtered_df)
        self.update_statistics(filtered_df)
    
    
    def reset_search(self):
        """Réinitialise la recherche et affiche toutes les données."""
        self.search_entry.delete(0, "end")
        self.load_mouvement_data(self.type_mouvement_actif)
    
    
    def update_statistics(self, df=None):
        """
        Met à jour les statistiques affichées dans le footer.
        
        Args:
            df: Le DataFrame à utiliser (par défaut, self.data_df)
        """
        if df is None:
            df = self.data_df
        
        if df.empty:
            self.stats_label.configure(text="Total lignes: 0 | Quantité totale: 0")
            return
        
        total_lignes = len(df)
        
        # Essayer de sommer les quantités s'il existe une colonne "Quantité"
        total_quantite = 0
        if "Quantité" in df.columns:
            try:
                total_quantite = df["Quantité"].sum()
            except:
                total_quantite = 0
        
        self.stats_label.configure(
            text=f"Total lignes: {total_lignes} | Quantité totale: {total_quantite}"
        )
    
    
    def export_to_excel(self):
        """Exporte les données actuelles au format Excel."""
        if self.data_df.empty:
            messagebox.showwarning("Avertissement", "Aucune donnée à exporter.")
            return
        
        try:
            # Créer le nom du fichier
            timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
            filename = f"mouvements_{self.type_mouvement_actif}_{timestamp}.xlsx"
            
            # Exporter vers Excel
            self.data_df.to_excel(filename, index=False, sheet_name="Mouvements")
            
            messagebox.showinfo("Succès", f"Fichier exporté: {filename}")
        
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur lors de l'export: {str(e)}")


    # ========================================================
    # DÉTAILS LIGNE (DOUBLE-CLIC)
    # ========================================================
    def on_row_double_click(self):
        selection = self.tree.selection()
        if not selection:
            return
        item = self.tree.item(selection[0])
        values = item.get('values', [])
        # Trouver la colonne 'Référence' si présente
        ref = None
        try:
            cols = list(self.tree['columns'])
            if 'Référence' in cols:
                idx = cols.index('Référence')
                if idx < len(values):
                    ref = values[idx]
            else:
                # fallback: 3ème colonne
                if len(values) >= 3:
                    ref = values[2]
        except Exception:
            if len(values) >= 3:
                ref = values[2]

        # Ouvrir la fenêtre de détails selon le type de mouvement
        try:
            if self.type_mouvement_actif == 'entree':
                self.show_commande_details_by_ref(ref)
            elif self.type_mouvement_actif == 'sortie':
                self.show_sortie_details_by_ref(ref)
            elif self.type_mouvement_actif == 'transfert':
                self.show_transfert_details_by_ref(ref)
            elif self.type_mouvement_actif == 'consommation':
                self.show_consommation_details_by_ref(ref)
            elif self.type_mouvement_actif == 'changement':
                self.show_changement_details_by_ref(ref)
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur ouverture détails: {e}")

    def _open_details_window(self, title, columns, rows):
        win = ctk.CTkToplevel(self)
        win.title(title)
        win.geometry('900x500')
        frame = ctk.CTkFrame(win)
        frame.pack(fill='both', expand=True, padx=10, pady=10)

        tree = ttk.Treeview(frame, columns=columns, show='headings')
        for col in columns:
            tree.heading(col, text=col)
            tree.column(col, width=120)
        ysb = ttk.Scrollbar(frame, orient='vertical', command=tree.yview)
        xsb = ttk.Scrollbar(frame, orient='horizontal', command=tree.xview)
        tree.configure(yscrollcommand=ysb.set, xscrollcommand=xsb.set)
        tree.grid(row=0, column=0, sticky='nsew')
        ysb.grid(row=0, column=1, sticky='ns')
        xsb.grid(row=1, column=0, sticky='ew')
        frame.grid_rowconfigure(0, weight=1)
        frame.grid_columnconfigure(0, weight=1)

        for r in rows:
            tree.insert('', 'end', values=r)

    def show_commande_details_by_ref(self, refcom):
        if not refcom:
            messagebox.showwarning('Attention', 'Référence commande introuvable')
            return
        conn = self.connect_db()
        if not conn: return
        try:
            cur = conn.cursor()
            cur.execute("SELECT idcom FROM tb_commande WHERE refcom = %s LIMIT 1", (refcom,))
            row = cur.fetchone()
            if not row:
                messagebox.showinfo('Info', 'Commande non trouvée')
                return
            idcom = row[0]

            # Détails commande
            cur.execute("""
                SELECT cd.id, a.designation, u.designationunite, cd.qtcmd, cd.qtlivre, cd.punitcmd
                FROM tb_commandedetail cd
                LEFT JOIN tb_article a ON cd.idarticle = a.idarticle
                LEFT JOIN tb_unite u ON cd.idunite = u.idunite
                WHERE cd.idcom = %s
            """, (idcom,))
            details = cur.fetchall()

            # Livraisons liées
            cur.execute("""
                SELECT idlivfrs, reflivfrs, idarticle, idunite, qtlivrefrs, dateregistre
                FROM tb_livraisonfrs
                WHERE idcom = %s
            """, (idcom,))
            livraisons = cur.fetchall()

            # Affichage: concaténation des deux listes
            rows = []
            for d in details:
                rows.append(( 'DETAIL', ) + tuple(d))
            for l in livraisons:
                rows.append(( 'LIVRAISON', ) + tuple(l))

            cols = ('Type','ID','Désignation/Ref','Unité/IDUnite','QtCmd/QT','QtLiv/QT','PrixUnit/Date')
            norm_rows = []
            for r in rows:
                r = tuple(str(x) for x in r)
                if len(r) < len(cols):
                    r = r + tuple([''] * (len(cols) - len(r)))
                norm_rows.append(r[:len(cols)])

            self._open_details_window(f'Détails Commande {refcom}', cols, norm_rows)

        finally:
            conn.close()

    def show_sortie_details_by_ref(self, refsortie):
        if not refsortie:
            messagebox.showwarning('Attention', 'Référence sortie introuvable')
            return
        conn = self.connect_db()
        if not conn: return
        try:
            cur = conn.cursor()
            cur.execute("SELECT id FROM tb_sortie WHERE refsortie = %s LIMIT 1", (refsortie,))
            row = cur.fetchone()
            if not row:
                messagebox.showinfo('Info', 'Sortie non trouvée')
                return
            idsortie = row[0]
            cur.execute("""
                SELECT sd.id, a.designation, u.designationunite, sd.qtsortie
                FROM tb_sortiedetail sd
                LEFT JOIN tb_article a ON sd.idarticle = a.idarticle
                LEFT JOIN tb_unite u ON sd.idunite = u.idunite
                WHERE sd.idsortie = %s
            """, (idsortie,))
            details = cur.fetchall()
            cols = ('ID','Désignation','Unité','Quantité')
            self._open_details_window(f'Détails Sortie {refsortie}', cols, details)
        finally:
            conn.close()

    def show_transfert_details_by_ref(self, reftrans):
        if not reftrans:
            messagebox.showwarning('Attention', 'Référence transfert introuvable')
            return
        conn = self.connect_db()
        if not conn: return
        try:
            cur = conn.cursor()
            cur.execute("SELECT idtransfert FROM tb_transfert WHERE reftransfert = %s LIMIT 1", (reftrans,))
            row = cur.fetchone()
            if not row:
                messagebox.showinfo('Info', 'Transfert non trouvé')
                return
            idtr = row[0]
            cur.execute("""
                SELECT td.id, a.designation, u.designationunite, td.qttransfert, td.idmagsortie, td.idmagentree
                FROM tb_transfertdetail td
                LEFT JOIN tb_article a ON td.idarticle = a.idarticle
                LEFT JOIN tb_unite u ON td.idunite = u.idunite
                WHERE td.idtransfert = %s
            """, (idtr,))
            details = cur.fetchall()
            cols = ('ID','Désignation','Unité','Quantité','Magasin Sortie','Magasin Entrée')
            self._open_details_window(f'Détails Transfert {reftrans}', cols, details)
        finally:
            conn.close()

    def show_consommation_details_by_ref(self, refcons):
        if not refcons:
            messagebox.showwarning('Attention', 'Référence consommation introuvable')
            return
        conn = self.connect_db()
        if not conn: return
        try:
            cur = conn.cursor()
            cur.execute("SELECT id FROM tb_consommationinterne WHERE refconsommation = %s LIMIT 1", (refcons,))
            row = cur.fetchone()
            if not row:
                messagebox.showinfo('Info', 'Consommation non trouvée')
                return
            idc = row[0]
            cur.execute("""
                SELECT d.id, a.designation, u.designationunite, d.qtconsomme, d.prixunit, d.montant_total
                FROM tb_consommationinterne_details d
                LEFT JOIN tb_article a ON d.idarticle = a.idarticle
                LEFT JOIN tb_unite u ON d.idunite = u.idunite
                WHERE d.idconsommation = %s
            """, (idc,))
            details = cur.fetchall()
            cols = ('ID','Désignation','Unité','Qté','Prix Unit.','Montant')
            self._open_details_window(f'Détails Consommation {refcons}', cols, details)
        finally:
            conn.close()

    def show_changement_details_by_ref(self, refchg):
        if not refchg:
            messagebox.showwarning('Attention', 'Référence changement introuvable')
            return
        conn = self.connect_db()
        if not conn: return
        try:
            cur = conn.cursor()
            cur.execute("SELECT idchg FROM tb_changement WHERE refchg = %s LIMIT 1", (refchg,))
            row = cur.fetchone()
            if not row:
                messagebox.showinfo('Info', 'Changement non trouvé')
                return
            idchg = row[0]
            cur.execute("""
                SELECT s.iddetail, a.designation, u.designationunite, s.quantite_sortie
                FROM tb_detailchange_sortie s
                LEFT JOIN tb_article a ON s.idarticle = a.idarticle
                LEFT JOIN tb_unite u ON s.idunite = u.idunite
                WHERE s.idchg = %s
            """, (idchg,))
            sortie = cur.fetchall()
            cur.execute("""
                SELECT e.iddetail, a.designation, u.designationunite, e.quantite_entree
                FROM tb_detailchange_entree e
                LEFT JOIN tb_article a ON e.idarticle = a.idarticle
                LEFT JOIN tb_unite u ON e.idunite = u.idunite
                WHERE e.idchg = %s
            """, (idchg,))
            entree = cur.fetchall()

            rows = []
            for s in sortie:
                rows.append(('SORTIE',) + tuple(s))
            for e in entree:
                rows.append(('ENTRÉE',) + tuple(e))

            cols = ('Type','ID','Désignation','Unité','Quantité')
            norm_rows = []
            for r in rows:
                r = tuple(str(x) for x in r)
                if len(r) < len(cols):
                    r = r + tuple([''] * (len(cols) - len(r)))
                norm_rows.append(r[:len(cols)])

            self._open_details_window(f'Détails Changement {refchg}', cols, norm_rows)
        finally:
            conn.close()
