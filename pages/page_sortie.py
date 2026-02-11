import customtkinter as ctk
from tkinter import messagebox, ttk, simpledialog
import psycopg2
import json
from datetime import datetime
import calendar 
from typing import Optional, Dict, Any, List
import traceback 
import os

# --- NOUVELLES IMPORTATIONS POUR L'IMPRESSION ---
from reportlab.lib.pagesizes import A5, landscape
from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, Table, TableStyle, Image
from reportlab.lib.styles import getSampleStyleSheet
from reportlab.lib import colors
# -----------------------------------------------

# --- Configuration de CustomTkinter ---
ctk.set_appearance_mode("Light")  # Modes: "System" (standard), "Dark", "Light"
ctk.set_default_color_theme("blue")

class PageSortie(ctk.CTkFrame):
    """
    Fenêtre de gestion des sorties de stock.
    """
    def __init__(self, master, id_user_connecte: int, **kwargs):
        super().__init__(master, **kwargs)
        self.id_user_connecte = id_user_connecte 
        self.conn: Optional[psycopg2.connection] = None
        self.article_selectionne = None
        self.detail_sortie = []
        self.index_ligne_selectionnee = None
        self.magasins_map = {}
        self.magasins_ids = []
        self.infos_societe: Dict[str, Any] = {}
        self.derniere_idsortie_enregistree: Optional[int] = None
    
        # *** NOUVEAU : Variables pour le mode modification ***
        self.mode_modification = False
        self.idsortie_charge = None
        
        # Configurer la grille
        self.grid_columnconfigure(0, weight=1)
        self.grid_rowconfigure(0, weight=0) # Lot 1 et 2
        self.grid_rowconfigure(1, weight=1) # Treeview
        self.grid_rowconfigure(2, weight=0) # Boutons
        self.grid_rowconfigure(3, weight=0) # Boutons d'action
        
        self.setup_ui()
        self.generer_reference()
        self.charger_magasins()
        self.charger_infos_societe() # Charger les infos société
        # Initialisation de la connexion pour enregistrer (sera refaite dans enregistrer_sortie)
        self.conn = self.connect_db() 

    def connect_db(self):
        """Connexion à la base de données PostgreSQL (Méthode fournie par l'utilisateur)"""
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
        except psycopg2.Error as e:
            messagebox.showerror("Erreur de Base de Données", f"Impossible de se connecter à la base de données : {e}")
            return None
    
    # --- FONCTIONS DE FORMATAGE ET DE CALCUL DE STOCK (CORRECTION BUG) ---
    def formater_nombre(self, nombre):
        """Formate un nombre avec séparateur de milliers (1.000,00)"""
        try:
            nombre = float(nombre) 
            formatted = "{:,.2f}".format(nombre).replace(',', '_TEMP_').replace('.', ',').replace('_TEMP_', '.')
            return formatted
        except:
            return "0,00"
    
    def parser_nombre(self, texte):
        """Convertit un nombre formaté (1.000,00) en float"""
        try:
            texte_clean = texte.replace('.', '').replace(',', '.')
            return float(texte_clean)
        except:
            return 0.0

    def calculer_stock_article(self, idarticle, idunite_cible, idmag=None):
        """
        ✅ CALCUL CONSOLIDÉ (identique à page_stock) :
        Relie tous les mouvements de toutes les unités (PIECE, CARTON, etc.)
        d'un même idarticle via le coefficient 'qtunite' de tb_unite.
        Tous les mouvements sont convertis en "unité de base", sommés dans un
        réservoir commun par magasin, puis divisés par le qtunite de l'unité cible.
        """
        conn = self.connect_db()
        if not conn:
            return 0

        try:
            cursor = conn.cursor()

            # 1. Récupérer TOUTES les unités liées à cet idarticle
            cursor.execute("""
                SELECT idunite, codearticle, COALESCE(qtunite, 1) 
                FROM tb_unite 
                WHERE idarticle = %s
            """, (idarticle,))
            unites_liees = cursor.fetchall()

            # 2. Identifier le qtunite de l'unité qu'on veut afficher
            qtunite_affichage = 1
            for idu, code, qt_u in unites_liees:
                if idu == idunite_cible:
                    qtunite_affichage = qt_u if qt_u > 0 else 1
                    break

            total_stock_global_base = 0  # Le "réservoir" total en unité de base (qtunite=1)

            # 3. Sommer les mouvements de chaque variante
            for idu_boucle, code_boucle, qtunite_boucle in unites_liees:
                # Réceptions
                q_rec = "SELECT COALESCE(SUM(qtlivrefrs), 0) FROM tb_livraisonfrs WHERE idarticle = %s AND idunite = %s AND deleted = 0"
                p_rec = [idarticle, idu_boucle]
                if idmag:
                    q_rec += " AND idmag = %s"
                    p_rec.append(idmag)
                cursor.execute(q_rec, p_rec)
                receptions = cursor.fetchone()[0] or 0

                # Ventes
                q_ven = "SELECT COALESCE(SUM(qtvente), 0) FROM tb_ventedetail WHERE idarticle = %s AND idunite = %s AND deleted = 0"
                p_ven = [idarticle, idu_boucle]
                if idmag:
                    q_ven += " AND idmag = %s"
                    p_ven.append(idmag)
                cursor.execute(q_ven, p_ven)
                ventes = cursor.fetchone()[0] or 0

                # Sorties
                q_sort = "SELECT COALESCE(SUM(qtsortie), 0) FROM tb_sortiedetail WHERE idarticle = %s AND idunite = %s"
                p_sort = [idarticle, idu_boucle]
                if idmag:
                    q_sort += " AND idmag = %s"
                    p_sort.append(idmag)
                cursor.execute(q_sort, p_sort)
                sorties = cursor.fetchone()[0] or 0

                # Transferts entrants
                q_tin = "SELECT COALESCE(SUM(qttransfert), 0) FROM tb_transfertdetail WHERE idarticle = %s AND idunite = %s AND deleted = 0"
                p_tin = [idarticle, idu_boucle]
                if idmag:
                    q_tin += " AND idmagentree = %s"
                    p_tin.append(idmag)
                cursor.execute(q_tin, p_tin)
                t_in = cursor.fetchone()[0] or 0

                # Transferts sortants
                q_tout = "SELECT COALESCE(SUM(qttransfert), 0) FROM tb_transfertdetail WHERE idarticle = %s AND idunite = %s AND deleted = 0"
                p_tout = [idarticle, idu_boucle]
                if idmag:
                    q_tout += " AND idmagsortie = %s"
                    p_tout.append(idmag)
                cursor.execute(q_tout, p_tout)
                t_out = cursor.fetchone()[0] or 0

                # Inventaires (via codearticle)
                q_inv = "SELECT COALESCE(SUM(qtinventaire), 0) FROM tb_inventaire WHERE codearticle = %s"
                p_inv = [code_boucle]
                if idmag:
                    q_inv += " AND idmag = %s"
                    p_inv.append(idmag)
                cursor.execute(q_inv, p_inv)
                inv = cursor.fetchone()[0] or 0

                # Avoirs (AUGMENTENT le stock - annulation de vente)
                q_avoir = """
                    SELECT COALESCE(SUM(ad.qtavoir), 0) 
                    FROM tb_avoirdetail ad
                    INNER JOIN tb_avoir a ON ad.idavoir = a.id
                    WHERE ad.idarticle = %s AND ad.idunite = %s 
                    AND a.deleted = 0 AND ad.deleted = 0
                """
                p_avoir = [idarticle, idu_boucle]
                if idmag:
                    q_avoir += " AND ad.idmag = %s"
                    p_avoir.append(idmag)
                cursor.execute(q_avoir, p_avoir)
                avoirs = cursor.fetchone()[0] or 0

                # Normalisation : (Solde unité) * (Son poids qtunite)
                # Les avoirs s'AJOUTENT car c'est une annulation de vente (retour marchandise)
                solde_unite = (receptions + t_in + inv + avoirs - ventes - sorties - t_out)
                total_stock_global_base += (solde_unite * qtunite_boucle)

            # 4. Conversion finale pour l'affichage
            stock_final = total_stock_global_base / qtunite_affichage
            return max(0, stock_final)

        except Exception as e:
            print(f"Erreur calcul stock consolidé: {str(e)}")
            traceback.print_exc()
            return 0
        finally:
            cursor.close()
            conn.close()
    # --------------------------------------------------------------------------

    def setup_ui(self):
        """Configure l'interface utilisateur de la page de sortie."""
    
        # --- Frame principale d'en-tête (Lot 1) ---
        header_frame = ctk.CTkFrame(self)
        header_frame.grid(row=0, column=0, padx=10, pady=10, sticky="ew")
        header_frame.grid_columnconfigure((0, 1, 2, 3, 4, 5, 6, 7), weight=1)
    
        # Référence
        ctk.CTkLabel(header_frame, text="Réf Sortie:").grid(row=0, column=0, padx=5, pady=5, sticky="w")
        self.entry_ref_sortie = ctk.CTkEntry(header_frame, width=150)
        self.entry_ref_sortie.grid(row=0, column=1, padx=5, pady=5, sticky="w")
        self.entry_ref_sortie.configure(state="readonly")
    
        # Date
        ctk.CTkLabel(header_frame, text="Date Sortie:").grid(row=0, column=2, padx=5, pady=5, sticky="w")
        self.entry_date_sortie = ctk.CTkEntry(header_frame, width=150)
        self.entry_date_sortie.grid(row=0, column=3, padx=5, pady=5, sticky="w")
        self.entry_date_sortie.insert(0, datetime.now().strftime("%d/%m/%Y"))
    
        # Magasin
        ctk.CTkLabel(header_frame, text="Magasin de:").grid(row=0, column=4, padx=5, pady=5, sticky="w")
        self.combo_magasin = ctk.CTkComboBox(header_frame, width=200, values=["Chargement..."])
        self.combo_magasin.grid(row=0, column=5, padx=5, pady=5, sticky="w")
    
        # *** NOUVEAU : Bouton Charger BS ***
        btn_charger_bs = ctk.CTkButton(header_frame, text="📂 Charger BS", 
                                    command=self.ouvrir_recherche_sortie, width=130,
                                    fg_color="#1976d2", hover_color="#1565c0")
        btn_charger_bs.grid(row=0, column=6, padx=5, pady=5, sticky="w")
    
        # Motif
        ctk.CTkLabel(header_frame, text="Motif Sortie:").grid(row=1, column=0, padx=5, pady=5, sticky="w")
        self.entry_motif = ctk.CTkEntry(header_frame, width=800)
        self.entry_motif.grid(row=1, column=1, columnspan=7, padx=5, pady=5, sticky="ew")

        # --- Frame d'ajout de Détail (Lot 2) ---
        detail_frame = ctk.CTkFrame(self)
        detail_frame.grid(row=1, column=0, padx=10, pady=(0, 10), sticky="ew")
        detail_frame.grid_columnconfigure((0, 1, 2, 3, 4, 5, 6), weight=1)
        
        # Article
        ctk.CTkLabel(detail_frame, text="Article:").grid(row=0, column=0, padx=5, pady=5, sticky="w")
        self.entry_article = ctk.CTkEntry(detail_frame, width=300)
        self.entry_article.grid(row=1, column=0, padx=5, pady=5, sticky="ew")
        self.entry_article.configure(state="readonly")
        
        self.btn_recherche_article = ctk.CTkButton(detail_frame, text="🔎 Rechercher", command=self.open_recherche_article)
        self.btn_recherche_article.grid(row=1, column=1, padx=5, pady=5, sticky="w")
        
        # Quantité
        ctk.CTkLabel(detail_frame, text="Quantité Sortie:").grid(row=0, column=2, padx=5, pady=5, sticky="w")
        self.entry_qtsortie = ctk.CTkEntry(detail_frame, width=100)
        self.entry_qtsortie.grid(row=1, column=2, padx=5, pady=5, sticky="ew")
        
        # Unité
        ctk.CTkLabel(detail_frame, text="Unité:").grid(row=0, column=3, padx=5, pady=5, sticky="w")
        self.entry_unite = ctk.CTkEntry(detail_frame, width=100)
        self.entry_unite.grid(row=1, column=3, padx=5, pady=5, sticky="ew")
        self.entry_unite.configure(state="readonly")
        
        # Boutons d'action
        self.btn_ajouter = ctk.CTkButton(detail_frame, text="➕ Ajouter", command=self.valider_detail, 
                                        fg_color="#2e7d32", hover_color="#1b5e20")
        self.btn_ajouter.grid(row=1, column=4, padx=5, pady=5, sticky="w")
        
        self.btn_annuler_mod = ctk.CTkButton(detail_frame, text="✖️ Annuler Modif.", command=self.reset_detail_form, 
                                            fg_color="#d32f2f", hover_color="#b71c1c", state="disabled")
        self.btn_annuler_mod.grid(row=1, column=5, padx=5, pady=5, sticky="w")


        # --- Treeview pour les Détails (Lot 3) ---
        tree_frame = ctk.CTkFrame(self)
        tree_frame.grid(row=2, column=0, padx=10, pady=(0, 10), sticky="nsew")
        tree_frame.grid_columnconfigure(0, weight=1)
        tree_frame.grid_rowconfigure(0, weight=1)
        
        style = ttk.Style()
        style.theme_use("default")
        style.configure("Treeview", rowheight=22, font=('Segoe UI', 8), background="#FFFFFF", foreground="#000000", fieldbackground="#FFFFFF", borderwidth=0)
        style.configure("Treeview.Heading", font=('Segoe UI', 8, 'bold'), background="#E8E8E8", foreground="#000000")

        colonnes = ("ID_Article", "ID_Unite", "ID_Magasin", "Code Article", "Désignation", "Magasin", "Unité", "Quantité Sortie")
        self.tree_details = ttk.Treeview(tree_frame, columns=colonnes, show='headings')
        
        for col in colonnes:
            self.tree_details.heading(col, text=col.replace('_', ' ').title())
            if "ID" in col:
                 self.tree_details.column(col, width=0, stretch=False) 
            elif "Quantité" in col:
                 self.tree_details.column(col, width=150, anchor='e')
            elif "Désignation" in col:
                 self.tree_details.column(col, width=350, anchor='w')
            else:
                 self.tree_details.column(col, width=150, anchor='w')
        
        # Scrollbar
        scrollbar = ctk.CTkScrollbar(tree_frame, command=self.tree_details.yview)
        self.tree_details.configure(yscrollcommand=scrollbar.set)
        
        self.tree_details.grid(row=0, column=0, sticky="nsew", padx=(5, 0), pady=5)
        scrollbar.grid(row=0, column=1, sticky="ns", padx=(0, 5), pady=5)
        
        # Bindings
        self.tree_details.bind('<Double-1>', self.modifier_detail)

        # --- Frame de Boutons (Lot 4) ---
        btn_action_frame = ctk.CTkFrame(self)
        btn_action_frame.grid(row=3, column=0, padx=10, pady=10, sticky="ew")
        btn_action_frame.grid_columnconfigure((0, 1, 2), weight=1) # 3 colonnes pour 3 boutons
        
        self.btn_supprimer_ligne = ctk.CTkButton(btn_action_frame, text="🗑️ Supprimer Ligne", command=self.supprimer_detail, 
                                                 fg_color="#d32f2f", hover_color="#b71c1c")
        self.btn_supprimer_ligne.grid(row=0, column=0, padx=5, pady=5, sticky="w")
        
        btn_nouveau_bs = ctk.CTkButton(btn_action_frame, text="📄 Nouveau BS", 
                               command=self.nouveau_bon_sortie, 
                               fg_color="#0288d1", hover_color="#01579b")
        btn_nouveau_bs.grid(row=0, column=1, padx=5, pady=5, sticky="w")

        
        # --- NOUVEAU BOUTON IMPRIMER (CORRIGÉ) ---
        self.btn_imprimer = ctk.CTkButton(btn_action_frame, text="🖨️ Imprimer Bon Sortie", command=self.open_impression_dialogue, 
                                          fg_color="#00695c", hover_color="#004d40", state="disabled")
        # CORRECTION ICI : sticky="ew" permet au bouton de s'étirer et d'être centré dans la colonne
        self.btn_imprimer.grid(row=0, column=1, padx=5, pady=5, sticky="ew") 
        # -----------------------------
        
        self.btn_enregistrer = ctk.CTkButton(btn_action_frame, text="💾 Enregistrer la Sortie", command=self.enregistrer_sortie, 
                                             font=ctk.CTkFont(family="Segoe UI", size=13, weight="bold"))
        self.btn_enregistrer.grid(row=0, column=2, padx=5, pady=5, sticky="e")
        

    # --- MÉTHODES DE CHARGEMENT DE DONNÉES ---

    def generer_reference(self):
        """Génère la référence de la prochaine sortie (ex: SOR-AAA-0001)."""
        conn = self.connect_db()
        if not conn: return
        
        try:
            cursor = conn.cursor()
            
            annee = datetime.now().year
            
            sql_max_id = """
                SELECT refsortie 
                FROM tb_sortie 
                WHERE EXTRACT(YEAR FROM dateregistre) = %s 
                ORDER BY id DESC 
                LIMIT 1
            """
            cursor.execute(sql_max_id, (annee,))
            derniere_ref = cursor.fetchone()

            nouveau_numero = 1
            if derniere_ref:
                partie_num = derniere_ref[0].split('-')[-1]
                nouveau_numero = int(partie_num) + 1
            
            nouvelle_ref = f"{annee}-BS-{nouveau_numero:05d}"
            
            self.entry_ref_sortie.configure(state="normal")
            self.entry_ref_sortie.delete(0, "end")
            self.entry_ref_sortie.insert(0, nouvelle_ref)
            self.entry_ref_sortie.configure(state="readonly")
            
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur lors de la génération de la référence: {str(e)}")
        finally:
            conn.close()

    def charger_magasins(self):
        """Charge les magasins depuis la DB pour la combobox."""
        conn = self.connect_db()
        if not conn: return

        try:
            cursor = conn.cursor()
            cursor.execute("SELECT idmag, designationmag FROM tb_magasin WHERE deleted = 0 ORDER BY designationmag")
            magasins = cursor.fetchall()
            
            self.magasins_map = {nom: id_ for id_, nom in magasins}
            self.magasins_ids = [id_ for id_, nom in magasins]
            noms_magasins = list(self.magasins_map.keys())
            
            self.combo_magasin.configure(values=noms_magasins)
            if noms_magasins:
                self.combo_magasin.set(noms_magasins[0])
            else:
                self.combo_magasin.set("Aucun magasin trouvé")
                
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur lors du chargement des magasins: {str(e)}")
        finally:
            conn.close()

    def charger_infos_societe(self):
        """Charge les informations de la société depuis tb_infosociete (CORRIGÉ)."""
        conn = self.connect_db()
        if not conn: return
    
        try:
            cursor = conn.cursor()
            # Utiliser tb_infosociete avec les bonnes colonnes
            sql = """
                SELECT 
                    nomsociete, adressesociete, contactsociete, villesociete, 
                    nifsociete, statsociete, cifsociete
                FROM tb_infosociete 
                LIMIT 1
            """
            cursor.execute(sql)
            result = cursor.fetchone()
        
            if result:
                # Mapper directement les colonnes
                self.infos_societe = {
                    'nomsociete': result[0] or 'SOCIÉTÉ',
                    'adressesociete': result[1] or 'N/A',
                    'contactsociete': result[2] or 'N/A',
                    'villesociete': result[3] or 'N/A',
                    'nifsociete': result[4] or 'N/A',
                    'statsociete': result[5] or 'N/A',
                    'cifsociete': result[6] or 'N/A'
                }
            else:
                # Valeurs par défaut si aucune info n'est trouvée
                self.infos_societe = {
                    'nomsociete': 'SOCIÉTÉ',
                    'adressesociete': 'N/A',
                    'contactsociete': 'N/A',
                    'villesociete': 'N/A',
                    'nifsociete': 'N/A',
                    'statsociete': 'N/A',
                    'cifsociete': 'N/A'
                }
        
        except psycopg2.ProgrammingError as e:
            # La table pourrait ne pas exister ou les colonnes sont différentes
            print(f"Erreur SQL: {e}")
            self.infos_societe = {
                'nomsociete': 'SOCIÉTÉ',
                'adressesociete': 'N/A',
                'contactsociete': 'N/A',
                'villesociete': 'N/A',
                'nifsociete': 'N/A',
                'statsociete': 'N/A',
                'cifsociete': 'N/A'
            }
        except Exception as e:
            print(f"Erreur chargement infos société: {str(e)}")
            self.infos_societe = {
                'nomsociete': 'SOCIÉTÉ',
                'adressesociete': 'N/A',
                'contactsociete': 'N/A',
                'villesociete': 'N/A',
                'nifsociete': 'N/A',
                'statsociete': 'N/A',
                'cifsociete': 'N/A'
            }
        finally:
            if 'cursor' in locals() and cursor: cursor.close()
            if conn: conn.close()

   
    # --- FONCTION DE RECHERCHE D'ARTICLE (CODE CORRIGÉ) ---

    def open_recherche_article(self):
        """Ouvre une fenêtre pour rechercher et sélectionner un article.
           Utilise la même requête consolidée (réservoir commun via qtunite)
           que page_venteParMsin pour calculer le stock correctement."""
        fenetre_recherche = ctk.CTkToplevel(self)
        fenetre_recherche.title("Rechercher un article pour le transfert")
        fenetre_recherche.geometry("1000x600")
        fenetre_recherche.grab_set()

        main_frame = ctk.CTkFrame(fenetre_recherche)
        main_frame.pack(fill="both", expand=True, padx=10, pady=10)

        titre = ctk.CTkLabel(main_frame, text="Sélectionner un article", font=ctk.CTkFont(family="Segoe UI", size=16, weight="bold"))
        titre.pack(pady=(0, 10))

        # Zone de recherche
        search_frame = ctk.CTkFrame(main_frame)
        search_frame.pack(fill="x", pady=(0, 10))
        ctk.CTkLabel(search_frame, text="🔍 Rechercher:").pack(side="left", padx=5)
        entry_search = ctk.CTkEntry(search_frame, placeholder_text="Code ou désignation...", width=300)
        entry_search.pack(side="left", padx=5, fill="x", expand=True)

        # Treeview
        tree_frame = ctk.CTkFrame(main_frame)
        tree_frame.pack(fill="both", expand=True, pady=(0, 10))

        colonnes = ("ID_Article", "ID_Unite", "Code", "Désignation", "Unité", "Stock")
        tree = ttk.Treeview(tree_frame, columns=colonnes, show='headings', height=15)

        style = ttk.Style()
        style.configure("Treeview", rowheight=22, font=('Segoe UI', 8), background="#FFFFFF", foreground="#000000", fieldbackground="#FFFFFF", borderwidth=0)
        style.configure("Treeview.Heading", background="#E8E8E8", foreground="#000000", font=('Segoe UI', 8, 'bold'))
        style.configure("Treeview.Heading", font=('Segoe UI', 8, 'bold'), background="#E8E8E8", foreground="#000000")

        tree.heading("ID_Article", text="ID_Article")
        tree.heading("ID_Unite", text="ID_Unite")
        tree.heading("Code", text="Code")
        tree.heading("Désignation", text="Désignation")
        tree.heading("Unité", text="Unité")
        tree.heading("Stock", text="Stock Actuel (Total)")

        tree.column("ID_Article", width=0, stretch=False)
        tree.column("ID_Unite", width=0, stretch=False)
        tree.column("Code", width=150, anchor='w')
        tree.column("Désignation", width=350, anchor='w')
        tree.column("Unité", width=100, anchor='w')
        tree.column("Stock", width=120, anchor='e')

        scrollbar = ttk.Scrollbar(tree_frame, command=tree.yview)
        tree.configure(yscrollcommand=scrollbar.set)
        tree.pack(side="left", fill="both", expand=True)
        scrollbar.pack(side="right", fill="y")

        # Fonction de chargement avec la requête consolidée (réservoir commun)
        def charger_articles(filtre=""):
            for item in tree.get_children():
                tree.delete(item)

            conn = self.connect_db()
            if not conn:
                return
            try:
                cur = conn.cursor()
                filtre_like = f"%{filtre}%"

                # Même logique réservoir que page_stock :
                # tous les mouvements sont convertis en "unité de base" via qtunite,
                # puis le solde commun par magasin est divisé par le qtunite de chaque ligne.
                # Le filtre idmag correspond au magasin sélectionné dans la combobox.
                query = """
                WITH mouvements_bruts AS (
                    -- ENTRÉE : Livraisons fournisseurs
                    SELECT
                        lf.idarticle,
                        lf.idmag,
                        COALESCE(u.qtunite, 1) as qtunite_source,
                        lf.qtlivrefrs as quantite,
                        'reception' as type_mouvement
                    FROM tb_livraisonfrs lf
                    INNER JOIN tb_unite u ON lf.idarticle = u.idarticle AND lf.idunite = u.idunite
                    WHERE lf.deleted = 0

                    UNION ALL

                    -- SORTIE : Ventes
                    SELECT
                        vd.idarticle,
                        v.idmag,
                        COALESCE(u.qtunite, 1) as qtunite_source,
                        vd.qtvente as quantite,
                        'vente' as type_mouvement
                    FROM tb_ventedetail vd
                    INNER JOIN tb_vente v ON vd.idvente = v.id AND v.deleted = 0
                    INNER JOIN tb_unite u ON vd.idarticle = u.idarticle AND vd.idunite = u.idunite
                    WHERE vd.deleted = 0

                    UNION ALL

                    -- SORTIE : Sorties (tb_sortiedetail)
                    SELECT
                        sd.idarticle,
                        sd.idmag,
                        COALESCE(u.qtunite, 1) as qtunite_source,
                        sd.qtsortie as quantite,
                        'sortie' as type_mouvement
                    FROM tb_sortiedetail sd
                    INNER JOIN tb_unite u ON sd.idarticle = u.idarticle AND sd.idunite = u.idunite

                    UNION ALL

                    -- ENTRÉE : Transferts entrants
                    SELECT
                        t.idarticle,
                        t.idmagentree as idmag,
                        COALESCE(u.qtunite, 1) as qtunite_source,
                        t.qttransfert as quantite,
                        'transfert_in' as type_mouvement
                    FROM tb_transfertdetail t
                    INNER JOIN tb_unite u ON t.idarticle = u.idarticle AND t.idunite = u.idunite
                    WHERE t.deleted = 0

                    UNION ALL

                    -- SORTIE : Transferts sortants
                    SELECT
                        t.idarticle,
                        t.idmagsortie as idmag,
                        COALESCE(u.qtunite, 1) as qtunite_source,
                        t.qttransfert as quantite,
                        'transfert_out' as type_mouvement
                    FROM tb_transfertdetail t
                    INNER JOIN tb_unite u ON t.idarticle = u.idarticle AND t.idunite = u.idunite
                    WHERE t.deleted = 0

                    UNION ALL

                    -- Inventaire
                    SELECT
                        u.idarticle,
                        i.idmag,
                        COALESCE(u.qtunite, 1) as qtunite_source,
                        i.qtinventaire as quantite,
                        'inventaire' as type_mouvement
                    FROM tb_inventaire i
                    INNER JOIN tb_unite u ON i.codearticle = u.codearticle

                    UNION ALL

                    -- ENTRÉE : Avoirs (annulation de vente, retour marchandise)
                    SELECT
                        ad.idarticle,
                        ad.idmag,
                        COALESCE(u.qtunite, 1) as qtunite_source,
                        ad.qtavoir as quantite,
                        'avoir' as type_mouvement
                    FROM tb_avoir a
                    INNER JOIN tb_avoirdetail ad ON a.id = ad.idavoir
                    INNER JOIN tb_unite u ON ad.idarticle = u.idarticle AND ad.idunite = u.idunite
                    WHERE a.deleted = 0 AND ad.deleted = 0
                ),

                solde_base_par_mag AS (
                    SELECT
                        idarticle,
                        idmag,
                        SUM(
                            CASE type_mouvement
                                WHEN 'reception'     THEN  quantite * qtunite_source
                                WHEN 'transfert_in'  THEN  quantite * qtunite_source
                                WHEN 'inventaire'    THEN  quantite * qtunite_source
                                WHEN 'avoir'         THEN  quantite * qtunite_source
                                WHEN 'vente'         THEN -quantite * qtunite_source
                                WHEN 'sortie'        THEN -quantite * qtunite_source
                                WHEN 'transfert_out' THEN -quantite * qtunite_source
                                ELSE 0
                            END
                        ) as solde_base
                    FROM mouvements_bruts
                    GROUP BY idarticle, idmag
                ),
                
                solde_total AS (
                    SELECT
                        idarticle,
                        SUM(solde_base) as solde_total
                    FROM solde_base_par_mag
                    GROUP BY idarticle
                )

                SELECT
                    u.idarticle,
                    u.idunite,
                    u.codearticle,
                    a.designation,
                    u.designationunite,
                    GREATEST(COALESCE(st.solde_total, 0) / NULLIF(COALESCE(u.qtunite, 1), 0), 0) as stock_total
                FROM tb_article a
                INNER JOIN tb_unite u ON a.idarticle = u.idarticle
                LEFT JOIN solde_total st
                    ON st.idarticle = u.idarticle
                WHERE a.deleted = 0
                  AND (u.codearticle ILIKE %s OR a.designation ILIKE %s)
                ORDER BY u.codearticle, u.idunite
                """

                # Plus besoin de récupérer l'idmag - on affiche le stock total
                cur.execute(query, (filtre_like, filtre_like))
                articles = cur.fetchall()

                for row in articles:
                    tree.insert('', 'end', values=(
                        row[0],          # idarticle
                        row[1],          # idunite
                        row[2] or "",    # codearticle
                        row[3] or "",    # designation
                        row[4] or "",    # designationunite
                        self.formater_nombre(row[5])  # stock_total formaté
                    ))

            except Exception as e:
                messagebox.showerror("Erreur", f"Erreur chargement articles: {str(e)}")
            finally:
                if 'cur' in locals() and cur:
                    cur.close()
                if conn:
                    conn.close()

        def rechercher(*args):
            charger_articles(entry_search.get())

        entry_search.bind('<KeyRelease>', rechercher)

        def valider_selection(article_data=None):
            selection = tree.selection()
            if not selection:
                messagebox.showwarning("Attention", "Veuillez sélectionner un article")
                return
    
            # Récupération des valeurs de la ligne sélectionnée
            item = tree.item(selection[0])
            values = item.get('values', [])
    
            # Vérification de sécurité pour éviter le crash
            if len(values) < 6:
                messagebox.showerror("Erreur", "Données de l'article incomplètes dans le tableau.")
                return

            # Correction des index d'après votre fonction charger_articles
            id_art   = values[0]
            id_uni   = values[1]
            code     = values[2]
            desig    = values[3]
            unite    = values[4]
            stock_val = values[5] # C'est bien l'index 5 pour le stock

            # Construire le dictionnaire avec les valeurs extraites de la ligne
            article_selectionne = {
                'idarticle': id_art,
                'idunite': id_uni,
                'code_article': code,
                'nom_article': desig,
                'nom_unite': unite,
                'stock_disponible': self.parser_nombre(str(stock_val))  # Re-parser le nombre formaté
            }

            fenetre_recherche.destroy()
            # Passer le dictionnaire correctement à on_article_selected
            self.on_article_selected(article_selectionne)

        tree.bind('<Double-Button-1>', lambda e: valider_selection())

        # Boutons
        btn_frame = ctk.CTkFrame(main_frame)
        btn_frame.pack(fill="x")
        btn_annuler = ctk.CTkButton(btn_frame, text="❌ Annuler", command=fenetre_recherche.destroy, fg_color="#d32f2f", hover_color="#b71c1c")
        btn_annuler.pack(side="left", padx=5, pady=5)
        btn_valider = ctk.CTkButton(btn_frame, text="✅ Valider", command=valider_selection, fg_color="#2e7d32", hover_color="#1b5e20")
        btn_valider.pack(side="right", padx=5, pady=5)

        # Chargement initial
        charger_articles()

    # --- GESTION DU DÉTAIL DE SORTIE (MÉTHODES INCHANGÉES) ---
    
    def on_article_selected(self, article_data):
        """Met à jour les champs de saisie après la sélection d'un article."""
        self.article_selectionne = article_data
        
        designation_complete = f"[{article_data.get('code_article', 'N/A')}] {article_data['nom_article']}"
        self.entry_article.configure(state="normal")
        self.entry_article.delete(0, "end")
        self.entry_article.insert(0, designation_complete)
        self.entry_article.configure(state="readonly")
        
        self.entry_unite.configure(state="normal")
        self.entry_unite.delete(0, "end")
        self.entry_unite.insert(0, article_data['nom_unite'])
        self.entry_unite.configure(state="readonly")
        
        self.entry_qtsortie.delete(0, "end")
        self.entry_qtsortie.focus_set()

    def valider_detail(self):
        """Ajoute ou modifie un article dans la liste temporaire avec vérification stricte du stock."""
        if not self.article_selectionne:
            messagebox.showwarning("Attention", "Veuillez d'abord sélectionner un article.")
            return

        qtsortie_texte = self.entry_qtsortie.get().strip()
        try:
            qtsortie = self.parser_nombre(qtsortie_texte)
            if qtsortie <= 0:
                 raise ValueError
        except:
            messagebox.showerror("Erreur de Saisie", "La quantité sortie doit être un nombre positif (ex: 100,00).")
            return
            
        designationmag = self.combo_magasin.get()
        idmag = self.magasins_map.get(designationmag)
        
        if not idmag:
            messagebox.showerror("Erreur", "Veuillez sélectionner un magasin valide.")
            return

        # --- NOUVELLE VÉRIFICATION DE STOCK ---
        # On calcule le stock spécifiquement pour l'article, l'unité et le magasin choisis
        stock_disponible = self.calculer_stock_article(
            self.article_selectionne['idarticle'], 
            self.article_selectionne['idunite'], 
            idmag=idmag
        )

        if stock_disponible <= 0:
            messagebox.showerror(
                "Stock Insuffisant", 
                f"Impossible d'enregistrer la sortie.\n\n"
                f"Le stock actuel dans le magasin '{designationmag}' est de "
                f"{self.formater_nombre(stock_disponible)} {self.article_selectionne['nom_unite']}.\n"
                f"L'enregistrement est bloqué car le stock est inférieur ou égal à 0."
            )
            return
        
        # Vérification si la quantité demandée dépasse le stock disponible
        if qtsortie > stock_disponible:
            messagebox.showerror(
                "Stock Insuffisant", 
                f"La quantité demandée ({self.formater_nombre(qtsortie)}) dépasse "
                f"le stock disponible ({self.formater_nombre(stock_disponible)})."
            )
            return
        # ---------------------------------------

        nouveau_detail = {
            'idmag': idmag,
            'designationmag': designationmag,
            'idarticle': self.article_selectionne['idarticle'],
            'code_article': self.article_selectionne.get('code_article', 'N/A'),
            'nom_article': self.article_selectionne['nom_article'],
            'idunite': self.article_selectionne['idunite'],
            'nom_unite': self.article_selectionne['nom_unite'],
            'qtsortie': qtsortie
        }

        if self.index_ligne_selectionnee is not None:
            self.detail_sortie[self.index_ligne_selectionnee] = nouveau_detail
            messagebox.showinfo("Succès", "Ligne modifiée avec succès.")
        else:
            # Vérifier si l'article/unité est déjà dans la liste pour fusionner
            for i, detail in enumerate(self.detail_sortie):
                if (detail['idarticle'] == nouveau_detail['idarticle'] and 
                    detail['idunite'] == nouveau_detail['idunite'] and 
                    detail['idmag'] == nouveau_detail['idmag']):
                    
                    # Vérifier si la fusion ne dépasse pas le stock
                    nouvelle_qte_totale = detail['qtsortie'] + nouveau_detail['qtsortie']
                    if nouvelle_qte_totale > stock_disponible:
                        messagebox.showerror("Erreur", "La fusion des quantités dépasserait le stock disponible.")
                        return

                    if messagebox.askyesno("Doublon détecté", 
                                          f"L'article '{detail['nom_article']}' est déjà présent. Fusionner?"):
                        self.detail_sortie[i]['qtsortie'] = nouvelle_qte_totale
                        messagebox.showinfo("Succès", "Quantité fusionnée.")
                        self.charger_details_treeview()
                        self.reset_detail_form()
                        return
                    else:
                        return 

            self.detail_sortie.append(nouveau_detail)
            messagebox.showinfo("Succès", "Article ajouté à la liste.")
            
        self.charger_details_treeview()
        self.reset_detail_form()

    def charger_details_treeview(self):
        """Charge les détails de la sortie depuis la liste temporaire vers le Treeview."""
        for item in self.tree_details.get_children():
            self.tree_details.delete(item)
            
        for detail in self.detail_sortie:
            values = (
                detail['idarticle'], 
                detail['idunite'], 
                detail['idmag'], 
                detail.get('code_article', 'N/A'), 
                detail['nom_article'], 
                detail['designationmag'],
                detail['nom_unite'], 
                self.formater_nombre(detail['qtsortie']) 
            )
            self.tree_details.insert('', 'end', values=values)

    def modifier_detail(self, event):
        """Charge les données de la ligne sélectionnée dans les champs pour modification."""
        selected_item = self.tree_details.focus()
        if not selected_item: return

        try:
            self.index_ligne_selectionnee = self.tree_details.index(selected_item)
            detail = self.detail_sortie[self.index_ligne_selectionnee]
        except IndexError:
            messagebox.showerror("Erreur", "Erreur lors de la récupération de la ligne.")
            self.reset_detail_form()
            return
            
        self.article_selectionne = {
            'idarticle': detail['idarticle'],
            'nom_article': detail['nom_article'],
            'idunite': detail['idunite'],
            'nom_unite': detail['nom_unite'],
            'code_article': detail.get('code_article', 'N/A')
        }
        
        designation_complete = f"[{detail.get('code_article', 'N/A')}] {detail['nom_article']}"
        self.entry_article.configure(state="normal")
        self.entry_article.delete(0, "end")
        self.entry_article.insert(0, designation_complete)
        self.entry_article.configure(state="readonly")
        
        self.entry_unite.configure(state="normal")
        self.entry_unite.delete(0, "end")
        self.entry_unite.insert(0, detail['nom_unite'])
        self.entry_unite.configure(state="readonly")
        
        self.entry_qtsortie.delete(0, "end")
        self.entry_qtsortie.insert(0, self.formater_nombre(detail['qtsortie']))

        self.btn_ajouter.configure(text="✔️ Valider Modif.", fg_color="#ff8f00", hover_color="#e65100")
        self.btn_annuler_mod.configure(state="normal")

    def supprimer_detail(self):
        """Supprime la ligne sélectionnée du Treeview et de la liste temporaire."""
        selected_item = self.tree_details.focus()
        if not selected_item:
            messagebox.showwarning("Attention", "Veuillez sélectionner une ligne à supprimer.")
            return

        if messagebox.askyesno("Confirmation", "Êtes-vous sûr de vouloir supprimer cette ligne de la sortie ?"):
            try:
                index_a_supprimer = self.tree_details.index(selected_item)
                self.detail_sortie.pop(index_a_supprimer)
                self.tree_details.delete(selected_item)
                self.reset_detail_form()
                messagebox.showinfo("Succès", "Ligne supprimée.")
                
            except Exception as e:
                messagebox.showerror("Erreur", f"Impossible de supprimer la ligne: {e}")

    def reset_detail_form(self):
        """Réinitialise les champs de saisie de détail et les boutons."""
        self.article_selectionne = None
        self.index_ligne_selectionnee = None
        
        self.entry_article.configure(state="normal")
        self.entry_article.delete(0, "end")
        self.entry_article.configure(state="readonly")
        
        self.entry_unite.configure(state="normal")
        self.entry_unite.delete(0, "end")
        self.entry_unite.configure(state="readonly")
        
        self.entry_qtsortie.delete(0, "end")
        
        self.btn_ajouter.configure(text="➕ Ajouter", fg_color="#2e7d32", hover_color="#1b5e20")
        self.btn_annuler_mod.configure(state="disabled")

    def ouvrir_recherche_sortie(self):
        """Ouvre une fenêtre pour rechercher et charger un bon de sortie existant"""
        fenetre = ctk.CTkToplevel(self)
        fenetre.title("Rechercher un bon de sortie")
        fenetre.geometry("1000x500")
        fenetre.grab_set()
    
        main_frame = ctk.CTkFrame(fenetre)
        main_frame.pack(fill="both", expand=True, padx=10, pady=10)
    
        titre = ctk.CTkLabel(main_frame, text="Sélectionner un bon de sortie", 
                        font=ctk.CTkFont(family="Segoe UI", size=16, weight="bold"))
        titre.pack(pady=(0, 10))
    
        search_frame = ctk.CTkFrame(main_frame)
        search_frame.pack(fill="x", pady=(0, 10))
    
        ctk.CTkLabel(search_frame, text="🔍 Rechercher:").pack(side="left", padx=5)
        entry_search = ctk.CTkEntry(search_frame, placeholder_text="Référence ou motif...", width=300)
        entry_search.pack(side="left", padx=5, fill="x", expand=True)
    
        tree_frame = ctk.CTkFrame(main_frame)
        tree_frame.pack(fill="both", expand=True, pady=(0, 10))
    
        colonnes = ("ID", "Référence", "Date", "Motif", "Utilisateur", "Nb Lignes")
        tree = ttk.Treeview(tree_frame, columns=colonnes, show='headings', height=12)
    
        tree.heading("ID", text="ID")
        tree.heading("Référence", text="Référence")
        tree.heading("Date", text="Date")
        tree.heading("Motif", text="Motif")
        tree.heading("Utilisateur", text="Utilisateur")
        tree.heading("Nb Lignes", text="Nb Lignes")
    
        tree.column("ID", width=0, stretch=False)
        tree.column("Référence", width=150, anchor='w')
        tree.column("Date", width=100, anchor='w')
        tree.column("Motif", width=300, anchor='w')
        tree.column("Utilisateur", width=150, anchor='w')
        tree.column("Nb Lignes", width=80, anchor='center')
    
        scrollbar = ctk.CTkScrollbar(tree_frame, command=tree.yview)
        tree.configure(yscrollcommand=scrollbar.set)
    
        tree.pack(side="left", fill="both", expand=True)
        scrollbar.pack(side="right", fill="y")
    
        label_count = ctk.CTkLabel(main_frame, text="Nombre de bons de sortie : 0")
        label_count.pack(pady=5)
    
        def charger_sorties(filtre=""):
            for item in tree.get_children():
                tree.delete(item)
        
            conn = self.connect_db()
            if not conn:
                return
        
            try:
                cursor = conn.cursor()
                query = """
                    SELECT s.id, s.refsortie, s.dateregistre, s.description,
                       CONCAT(u.prenomuser, ' ', u.nomuser) as utilisateur,
                       (SELECT COUNT(*) 
                        FROM tb_sortiedetail sd 
                        WHERE sd.idsortie = s.id) as nb_lignes
                    FROM tb_sortie s
                    LEFT JOIN tb_users u ON s.iduser = u.iduser
                    WHERE s.deleted = 0
                """
                params = []
                if filtre:
                    query += """ AND (
                        LOWER(s.refsortie) LIKE LOWER(%s) OR 
                        LOWER(s.description) LIKE LOWER(%s)
                    )"""
                    params = [f"%{filtre}%", f"%{filtre}%"]
            
                query += " ORDER BY s.dateregistre DESC, s.refsortie DESC"
                cursor.execute(query, params)
                resultats = cursor.fetchall()
            
                for row in resultats:
                    date_str = row[2].strftime("%d/%m/%Y") if row[2] else ""
                    tree.insert('', 'end', 
                          values=(row[0], row[1], date_str, row[3] or "", row[4] or "", row[5] or 0))
            
                label_count.configure(text=f"Nombre de bons de sortie : {len(resultats)}")
            
            except Exception as e:
                messagebox.showerror("Erreur", f"Erreur lors du chargement: {str(e)}")
            finally:
                if 'cursor' in locals() and cursor: cursor.close()
                if conn: conn.close()
    
        def rechercher(*args):
            charger_sorties(entry_search.get())
    
        entry_search.bind('<KeyRelease>', rechercher)
    
        def valider_selection():
            selection = tree.selection()
            if not selection:
                messagebox.showwarning("Attention", "Veuillez sélectionner un bon de sortie")
                return
            values = tree.item(selection[0])['values']
            idsortie = values[0]
            fenetre.destroy()
            self.charger_sortie(idsortie)
    
        tree.bind('<Double-Button-1>', lambda e: valider_selection())
    
        btn_frame = ctk.CTkFrame(main_frame)
        btn_frame.pack(fill="x")
    
        btn_annuler = ctk.CTkButton(btn_frame, text="❌ Annuler", command=fenetre.destroy, 
                                fg_color="#d32f2f", hover_color="#b71c1c")
        btn_annuler.pack(side="left", padx=5, pady=5)
    
        btn_valider = ctk.CTkButton(btn_frame, text="✅ Charger", command=valider_selection, 
                                fg_color="#2e7d32", hover_color="#1b5e20")
        btn_valider.pack(side="right", padx=5, pady=5)
    
        charger_sorties()

    def charger_sortie(self, idsortie):
        """Charge un bon de sortie existant pour visualisation/impression"""
        conn = self.connect_db()
        if not conn: return
    
        try:
            cursor = conn.cursor()
        
            # Charger les infos du bon de sortie
            query_sortie = """
                SELECT s.id, s.refsortie, s.dateregistre, s.description,
                   CONCAT(u.prenomuser, ' ', u.nomuser) as utilisateur
                FROM tb_sortie s
                LEFT JOIN tb_users u ON s.iduser = u.iduser
                WHERE s.id = %s AND s.deleted = 0
            """
            cursor.execute(query_sortie, (idsortie,))
            sortie = cursor.fetchone()
        
            if not sortie:
                messagebox.showerror("Erreur", "Bon de sortie non trouvé")
                return
        
            # Charger les détails
            query_details = """
                SELECT sd.idmag, m.designationmag, sd.idarticle, u.codearticle, 
                   a.designation, sd.idunite, u.designationunite, sd.qtsortie
                FROM tb_sortiedetail sd
                INNER JOIN tb_article a ON sd.idarticle = a.idarticle
                INNER JOIN tb_unite u ON sd.idunite = u.idunite
                INNER JOIN tb_magasin m ON sd.idmag = m.idmag
                WHERE sd.idsortie = %s
            """
            cursor.execute(query_details, (idsortie,))
            details = cursor.fetchall()
        
            # Réinitialiser le formulaire
            self.reset_form(reset_imprimer=False)
        
            # Mettre en mode visualisation
            self.mode_modification = True
            self.idsortie_charge = idsortie
            self.derniere_idsortie_enregistree = idsortie
        
            # Remplir les champs
            self.entry_ref_sortie.configure(state="normal")
            self.entry_ref_sortie.delete(0, "end")
            self.entry_ref_sortie.insert(0, sortie[1])
            self.entry_ref_sortie.configure(state="readonly")
        
            self.entry_date_sortie.delete(0, "end")
            self.entry_date_sortie.insert(0, sortie[2].strftime("%d/%m/%Y"))
        
            self.entry_motif.delete(0, "end")
            self.entry_motif.insert(0, sortie[3] or "")
        
            # Charger les détails
            self.detail_sortie = []
            for detail in details:
                idmag, designationmag, idarticle, codearticle, designation, idunite, designationunite, qtsortie = detail
            
                self.detail_sortie.append({
                    'idmag': idmag,
                    'designationmag': designationmag,
                    'idarticle': idarticle,
                    'code_article': codearticle,
                    'nom_article': designation,
                    'idunite': idunite,
                    'nom_unite': designationunite,
                    'qtsortie': qtsortie
                })
        
            self.charger_details_treeview()
        
            # Activer le bouton imprimer et désactiver l'enregistrement
            self.btn_imprimer.configure(state="normal")
            self.btn_enregistrer.configure(state="disabled", text="📄 Mode Consultation")
        
            messagebox.showinfo("Chargement réussi", 
                          f"Bon de sortie {sortie[1]} chargé.\nVous pouvez maintenant l'imprimer.\n\n"
                          f"Note: L'enregistrement est désactivé en mode consultation.")
        
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur lors du chargement du bon de sortie: {str(e)}")
        finally:
            if 'cursor' in locals() and cursor: cursor.close()
            if conn: conn.close()



    # --- MÉTHODE D'ENREGISTREMENT PRINCIPALE ---

    def enregistrer_sortie(self):
        """Enregistre l'ensemble de la sortie et ses détails dans la base de données."""
        if not self.detail_sortie:
            messagebox.showwarning("Attention", "La liste de sortie est vide. Veuillez ajouter des articles.")
            return

        ref_sortie = self.entry_ref_sortie.get()
        date_sortie_str = self.entry_date_sortie.get()
        designationmag = self.combo_magasin.get()
        motif_sortie = self.entry_motif.get().strip()

        if not ref_sortie or not date_sortie_str or not designationmag or not motif_sortie:
            messagebox.showwarning("Attention", "Veuillez remplir tous les champs d'en-tête (Réf, Date, Magasin, Motif).")
            return
            
        try:
            date_sortie = datetime.strptime(date_sortie_str, "%d/%m/%Y").date()
        except ValueError:
            messagebox.showerror("Erreur de Date", "Le format de la date est incorrect (attendu : JJ/MM/AAAA).")
            return

        conn = self.connect_db()
        if not conn: return

        try:
            cursor = conn.cursor()
            
            # 1. Enregistrement de l'en-tête de la sortie (tb_sortie)
            sql_sortie = """
                INSERT INTO tb_sortie (refsortie, dateregistre, description, iduser, deleted)
                VALUES (%s, %s, %s, %s, 0) RETURNING id
            """
            cursor.execute(sql_sortie, (
                ref_sortie,
                date_sortie,
                motif_sortie,
                self.id_user_connecte
            ))
            idsortie = cursor.fetchone()[0]

            # 2. Enregistrement des détails de la sortie (tb_sortiedetail)
            sql_sortie_detail = """
                INSERT INTO tb_sortiedetail (idsortie, idmag, idarticle, idunite, qtsortie)
                VALUES (%s, %s, %s, %s, %s)
            """
            
            details_a_inserer = []
            for detail in self.detail_sortie:
                details_a_inserer.append((
                    idsortie,
                    detail['idmag'],
                    detail['idarticle'], 
                    detail['idunite'], 
                    detail['qtsortie']
                ))
            
            cursor.executemany(sql_sortie_detail, details_a_inserer)

            # 3. Validation et succès
            conn.commit()
            messagebox.showinfo("Succès", f"La sortie N°{ref_sortie} a été enregistrée avec succès.")
            
            # Stocker l'ID pour l'impression et activer le bouton
            self.derniere_idsortie_enregistree = idsortie 
            self.btn_imprimer.configure(state="normal") 
            
            # 4. Réinitialisation des champs de saisie pour une nouvelle sortie
            self.reset_form(reset_imprimer=False) # Ne pas désactiver le bouton Imprimer tout de suite

        except psycopg2.Error as e:
            conn.rollback() 
            messagebox.showerror("Erreur de Base de Données", f"Une erreur s'est produite lors de l'enregistrement:\n{e}")
        except Exception as e:
            if conn: conn.rollback()
            messagebox.showerror("Erreur", f"Une erreur inattendue s'est produite:\n{e}")

        finally:
            if 'cursor' in locals() and cursor: cursor.close()
            if conn: conn.close()
            
    def reset_form(self, reset_imprimer=True):
        """Réinitialise toute la fenêtre après l'enregistrement."""
        self.detail_sortie = []
        self.article_selectionne = None
        self.index_ligne_selectionnee = None
    
        # *** NOUVEAU : Réinitialiser le mode modification ***
        self.mode_modification = False
        self.idsortie_charge = None
    
        self.entry_date_sortie.delete(0, "end")
        self.entry_date_sortie.insert(0, datetime.now().strftime("%d/%m/%Y"))
        self.entry_motif.delete(0, "end")
    
        self.charger_magasins()
        self.generer_reference() 
        self.reset_detail_form()
    
        for item in self.tree_details.get_children():
            self.tree_details.delete(item)
    
        # *** NOUVEAU : Réactiver le bouton enregistrer ***
        self.btn_enregistrer.configure(state="normal", text="💾 Enregistrer la Sortie")
        
        if reset_imprimer:
            self.btn_imprimer.configure(state="disabled") 
            self.derniere_idsortie_enregistree = None

    # --- MÉTHODES D'IMPRESSION (NOUVEAU) ---

    def open_impression_dialogue(self):
        """Ouvre une boîte de dialogue pour choisir le format d'impression."""
        if self.derniere_idsortie_enregistree is None:
            messagebox.showwarning("Attention", "L'ID de la dernière sortie enregistrée est introuvable.")
            return

        dialogue = simpledialog.askstring("Format d'Impression", 
                                          "Quel format d'impression souhaitez-vous ?\nEntrez 'A5' ou '80mm'.",
                                          parent=self)
                                          
        if dialogue and dialogue.lower() == 'a5':
            self.imprimer_bon_sortie(self.derniere_idsortie_enregistree, format='A5')
        elif dialogue and dialogue.lower() == '80mm':
            self.imprimer_bon_sortie(self.derniere_idsortie_enregistree, format='80mm')
        elif dialogue:
            messagebox.showwarning("Format Inconnu", "Format non reconnu. Veuillez choisir 'A5' ou '80mm'.")

    def nouveau_bon_sortie(self):
        """Réinitialise le formulaire pour créer un nouveau bon de sortie"""
        if messagebox.askyesno("Nouveau Bon de Sortie", 
                          "Voulez-vous créer un nouveau bon de sortie ?\nToutes les données non enregistrées seront perdues."):
            self.reset_form(reset_imprimer=True)
            messagebox.showinfo("Nouveau BS", "Formulaire réinitialisé pour un nouveau bon de sortie.")
            
    def open_file(self, filename):
        """Ouvre le fichier généré avec l'application par défaut du système"""
        try:
            if os.name == 'nt':  # Windows
                os.startfile(filename)
            elif os.name == 'posix':  # macOS et Linux
                import subprocess
                if sys.platform == 'darwin':  # macOS
                    subprocess.call(['open', filename])
                else:  # Linux
                    subprocess.call(['xdg-open', filename])
        except Exception as e:
            # Si l'ouverture automatique échoue, ce n'est pas grave
            pass

    def get_data_bon_sortie(self, idsortie: int) -> Optional[Dict[str, Any]]:
        """Récupère toutes les données nécessaires pour imprimer un bon de sortie."""
        conn = self.connect_db()
        if not conn: return None
        
        data = {
            'societe': self.infos_societe,
            'sortie': None,
            'utilisateur': None,
            'details': []
        }

        try:
            cursor = conn.cursor()
            
            # 1. Infos sur le Bon de Sortie et l'Utilisateur
            sql_sortie = """
                SELECT 
                    s.refsortie, s.dateregistre, s.description, 
                    u.nomuser, u.prenomuser
                FROM tb_sortie s
                INNER JOIN tb_users u ON s.iduser = u.iduser
                WHERE s.id = %s
            """
            cursor.execute(sql_sortie, (idsortie,))
            sortie_result = cursor.fetchone()
            
            if not sortie_result:
                messagebox.showerror("Erreur", "Bon de Sortie introuvable.")
                return None
                
            data['sortie'] = {
                'refsortie': sortie_result[0],
                'dateregistre': sortie_result[1].strftime("%d/%m/%Y"),
                'description': sortie_result[2],
            }
            data['utilisateur'] = {
                'nomuser': sortie_result[3],
                'prenomuser': sortie_result[4]
            }

            # 2. Détails de la Sortie
            sql_details = """
                SELECT 
                    u.codearticle, a.designation, u.designationunite, sd.qtsortie, m.designationmag
                FROM tb_sortiedetail sd
                INNER JOIN tb_article a ON sd.idarticle = a.idarticle
                INNER JOIN tb_unite u ON sd.idunite = u.idunite
                INNER JOIN tb_magasin m ON sd.idmag = m.idmag 
                WHERE sd.idsortie = %s
                ORDER BY a.designation
            """
            cursor.execute(sql_details, (idsortie,))
            data['details'] = cursor.fetchall()
            
            return data
            
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur lors de la récupération des données d'impression: {str(e)}")
            return None
        finally:
            if 'cursor' in locals() and cursor: cursor.close()
            if conn: conn.close()

    def imprimer_bon_sortie(self, idsortie: int, format: str):
        """Gère la récupération des données et l'appel à la fonction de génération."""
        
        data = self.get_data_bon_sortie(idsortie)
        if not data: return

        try:
            ref_sortie = data['sortie']['refsortie']
            
            if format.lower() == 'a5':
                filename = f"BS_{ref_sortie.replace('-', '_')}_A5.pdf"
                self.generer_pdf_a5(data, filename)
                messagebox.showinfo("Impression A5", f"Le Bon de Sortie a été généré en PDF (A5) :\n{filename}")
                self.open_file(filename) # <--- AJOUTEZ CETTE LIGNE
                
            elif format.lower() == '80mm':
                filename = f"BS_{ref_sortie.replace('-', '_')}_80mm.txt"
                self.generate_ticket_80mm(data, filename)
                messagebox.showinfo("Impression 80mm", f"Le Bon de Sortie a été généré en fichier texte (80mm) :\n{filename}\n(À imprimer via un pilote d'imprimante thermique)")
                self.open_file(filename) # <--- AJOUTEZ CETTE LIGNE
                
        except Exception as e:
            messagebox.showerror("Erreur Génération", f"Erreur lors de la génération du document : {str(e)}")

    def generer_pdf_a5(self, *args, **kwargs):
        """
        Génère un Bon de Sortie au format PDF A5 (Portrait) incluant le motif.
        """
        # Vérifier qu'un bon de sortie a été enregistré ou chargé
        if self.derniere_idsortie_enregistree is None:
            messagebox.showwarning("Attention", "Aucun bon de sortie à imprimer.")
            return
    
        idsortie = self.derniere_idsortie_enregistree
        data = self.get_data_bon_sortie(idsortie)
        if not data:
            return

        ref_sortie = data['sortie']['refsortie'].replace('-', '_')
        filename = f"BS_{ref_sortie}_A5.pdf"

        try:
            doc = SimpleDocTemplate(
                filename, 
                pagesize=A5,
                leftMargin=20, 
                rightMargin=20, 
                topMargin=20, 
                bottomMargin=20
            )
            styles = getSampleStyleSheet()
            elements = []

            societe = data['societe']
            utilisateur = data['utilisateur']
            sortie_info = data['sortie']
    
            # --- EN-TÊTE SOCIÉTÉ ---
            style_header = styles['Normal']
            style_header.fontSize = 8
            style_header.alignment = 1 

            elements.append(Paragraph(f"<b>{societe.get('nomsociete', 'SOCIÉTÉ')}</b>", styles['Heading4']))
            elements.append(Paragraph(f"{societe.get('adressesociete', 'N/A')}", style_header))
            elements.append(Paragraph(f"Tél: {societe.get('contactsociete', 'N/A')}", style_header))
            elements.append(Spacer(1, 15))

            # --- TITRE ---
            style_titre = styles['Heading3']
            style_titre.alignment = 1
            elements.append(Paragraph(f"<u>BON DE SORTIE N°{sortie_info['refsortie']}</u>", style_titre))
            elements.append(Paragraph(f"Date: {sortie_info['dateregistre']}", style_header))
            elements.append(Spacer(1, 8))
        
            # --- UTILISATEUR ---
            style_user = styles['Normal']
            style_user.fontSize = 9
            style_user.alignment = 1 
            nom_complet = f"{utilisateur.get('prenomuser', '')} {utilisateur.get('nomuser', '')}".strip()
            elements.append(Paragraph(f"<i>Établi par: {nom_complet}</i>", style_user))
            elements.append(Spacer(1, 10))

            # --- AJOUT DU MOTIF (DESCRIPTION) ---
            style_motif = styles['Normal']
            style_motif.fontSize = 9
            motif_texte = sortie_info.get('description', 'N/A')
            elements.append(Paragraph(f"<b>Motif de sortie :</b> {motif_texte}", style_motif))
            elements.append(Spacer(1, 10)) # Espace avant le tableau

            # --- TABLEAU DES ARTICLES ---
            table_data = [['Code', 'Désignation', 'Unité', 'Qté', 'Magasin']]
    
            for item in data['details']:
                designation_p = Paragraph(item[1], styles['Normal'])
                table_data.append([
                    item[0],  # codearticle
                    designation_p,  # designation
                    item[2],  # designationunite
                    self.formater_nombre(item[3]),  # qtsortie
                    item[4]   # designationmag
                ])

            table = Table(table_data, colWidths=[50, 140, 50, 50, 90])
            table.setStyle(TableStyle([
                ('BACKGROUND', (0, 0), (-1, 0), colors.grey),
                ('TEXTCOLOR', (0, 0), (-1, 0), colors.whitesmoke),
                ('ALIGN', (0, 0), (-1, -1), 'CENTER'),
                ('ALIGN', (3, 1), (3, -1), 'RIGHT'),
                ('FONTSIZE', (0, 0), (-1, -1), 7),
                ('GRID', (0, 0), (-1, -1), 0.5, colors.black),
                ('VALIGN', (0, 0), (-1, -1), 'MIDDLE'),
            ]))
    
            elements.append(table)
            elements.append(Spacer(1, 20))

            # --- SIGNATURES ---
            sig_data = [['Le Magasinier', 'Le Réceptionnaire']]
            sig_table = Table(sig_data, colWidths=[190, 190])
            sig_table.setStyle(TableStyle([
                ('ALIGN', (0, 0), (-1, -1), 'CENTER'),
                ('FONTNAME', (0, 0), (-1, -1), 'Helvetica-Bold'),
                ('FONTSIZE', (0, 0), (-1, -1), 9),
            ]))
            elements.append(sig_table)

            doc.build(elements)
            messagebox.showinfo("Succès", f"PDF Portrait généré avec motif : {filename}")
            self.open_file(filename)

        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur lors de la génération : {str(e)}")

    def generate_ticket_80mm(self, data: Dict[str, Any], filename: str):
        """Génère un Bon de Sortie au format Ticket de Caisse 80mm (fichier texte brut)."""
        
        societe = data['societe']
        sortie = data['sortie']
        utilisateur = data['utilisateur']
        details = data['details']
        
        MAX_WIDTH = 40 
        
        def center(text):
            return text.center(MAX_WIDTH)
        
        def line():
            return "-" * MAX_WIDTH

        def format_detail_line(designation, qte, unite):
            # Tronquer la désignation et l'unité, formater la quantité
            qte_str = str(self.formater_nombre(qte))
            
            # Calculer l'espace restant pour la désignation
            space_for_designation = MAX_WIDTH - len(qte_str) - len(unite) - 3 # -3 pour les espaces/séparateurs
            
            designation_str = designation[:space_for_designation].ljust(space_for_designation)
            
            return f"{designation_str} {qte_str} {unite}"

        
        content = []
        
        # --- EN-TÊTE ---
        content.append(center("Informations Société"))
        content.append(f" {societe.get('nomsociete', 'N/A')}")
        content.append(f"{societe.get('adressesociete', 'N/A')}")
        content.append(f"{societe.get('villesociete', 'N/A')}")
        content.append(f"{societe.get('contactsociete', 'N/A')}")
        content.append(line())
        content.append(center(f"NIF: {societe.get('nifsociete', 'N/A')}"))
        content.append(center(f"STAT: {societe.get('statsociete', 'N/A')}"))
        content.append(center(f"CIF: {societe.get('cifsociete', 'N/A')}"))
        
        # --- INFOS SOCIÉTÉ/BS/USER ---
        content.append(f"Réf BS: {sortie['refsortie']}")
        content.append(f"Date: {sortie['dateregistre']}")
        content.append(f"Motif: {sortie['description']}")
        content.append(f"Utilisateur: {utilisateur['prenomuser']} {utilisateur['nomuser']}")
        content.append(line())
        
        # --- DÉTAILS ---
        content.append("DESIGNATION QTE UNITE")
        content.append(line())
        
        for code, designation, unite, qte, magasin in details:
            content.append(format_detail_line(designation, qte, unite))
        
        content.append(line())
        
        # --- PIED DE PAGE ---
        
        content.append("\n" * 3)
        content.append(center("Signature"))
        content.append("\n" * 3)
        content.append(center("Merci de votre collaboration"))
        
        with open(filename, 'w', encoding='utf-8') as f:
            f.write('\n'.join(content))


# --- Partie pour exécuter la fenêtre de test ---
if __name__ == "__main__":
    
    # Simulation de l'utilisateur connecté
    USER_ID_TEST = 1 
    
    app = ctk.CTk()
    app.title("Gestion des Sorties de Stock - CTK")
    app.geometry("950x500")

    page_sortie = PageSortie(app, USER_ID_TEST)
    page_sortie.pack(fill="both", expand=True)

    app.mainloop()