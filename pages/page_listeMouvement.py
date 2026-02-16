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
                    ROW_NUMBER() OVER (ORDER BY em.iddentree DESC) as "N°",
                    em.datedentree as "Date",
                    em.refdentree as "Référence",
                    a.designation as "Article",
                    emd.qtdentree as "Quantité",
                    u.designationunite as "Unité",
                    m.nommagasin as "Magasin",
                    p.nompesonnel as "Utilisateur",
                    em.observationdentree as "Observations"
                FROM tb_dentree em
                LEFT JOIN tb_dentreedetail emd ON em.iddentree = emd.iddentree
                LEFT JOIN tb_article a ON emd.idarticle = a.idarticle
                LEFT JOIN tb_unite u ON emd.idunite = u.idunite
                LEFT JOIN tb_magasin m ON em.idmagasin = m.idmagasin
                LEFT JOIN tb_personnel p ON em.iduser = p.idpersonnel
                WHERE em.deleted = 0
                ORDER BY em.iddentree DESC
            """,
            "sortie": """
                SELECT 
                    ROW_NUMBER() OVER (ORDER BY sm.idsortie DESC) as "N°",
                    sm.datesortie as "Date",
                    sm.refsortie as "Référence",
                    a.designation as "Article",
                    smd.qtsortie as "Quantité",
                    u.designationunite as "Unité",
                    m.nommagasin as "Magasin",
                    p.nompesonnel as "Utilisateur",
                    sm.observationsortie as "Observations"
                FROM tb_sortie sm
                LEFT JOIN tb_sortiedetail smd ON sm.idsortie = smd.idsortie
                LEFT JOIN tb_article a ON smd.idarticle = a.idarticle
                LEFT JOIN tb_unite u ON smd.idunite = u.idunite
                LEFT JOIN tb_magasin m ON sm.idmagasin = m.idmagasin
                LEFT JOIN tb_personnel p ON sm.iduser = p.idpersonnel
                WHERE sm.deleted = 0
                ORDER BY sm.idsortie DESC
            """,
            "transfert": """
                SELECT 
                    ROW_NUMBER() OVER (ORDER BY tr.idtransfert DESC) as "N°",
                    tr.datetransfert as "Date",
                    tr.reftransfert as "Référence",
                    a.designation as "Article",
                    trd.qttransfert as "Quantité",
                    u.designationunite as "Unité",
                    m1.nommagasin as "Magasin",
                    p.nompesonnel as "Utilisateur",
                    tr.observationtransfert as "Observations"
                FROM tb_transfert tr
                LEFT JOIN tb_transfertdetail trd ON tr.idtransfert = trd.idtransfert
                LEFT JOIN tb_article a ON trd.idarticle = a.idarticle
                LEFT JOIN tb_unite u ON trd.idunite = u.idunite
                LEFT JOIN tb_magasin m1 ON tr.idmagasin = m1.idmagasin
                LEFT JOIN tb_personnel p ON tr.iduser = p.idpersonnel
                WHERE tr.deleted = 0
                ORDER BY tr.idtransfert DESC
            """,
            "consommation": """
                SELECT 
                    ROW_NUMBER() OVER (ORDER BY ci.idconsint DESC) as "N°",
                    ci.dateconsint as "Date",
                    ci.refconsint as "Référence",
                    a.designation as "Article",
                    cid.qtconsint as "Quantité",
                    u.designationunite as "Unité",
                    m.nommagasin as "Magasin",
                    p.nompesonnel as "Utilisateur",
                    ci.observationconsint as "Observations"
                FROM tb_consommationinterne ci
                LEFT JOIN tb_consommationinternedetail cid ON ci.idconsint = cid.idconsint
                LEFT JOIN tb_article a ON cid.idarticle = a.idarticle
                LEFT JOIN tb_unite u ON cid.idunite = u.idunite
                LEFT JOIN tb_magasin m ON ci.idmagasin = m.idmagasin
                LEFT JOIN tb_personnel p ON ci.iduser = p.idpersonnel
                WHERE ci.deleted = 0
                ORDER BY ci.idconsint DESC
            """,
            "changement": """
                SELECT 
                    ROW_NUMBER() OVER (ORDER BY chg.idchg DESC) as "N°",
                    chg.datechg as "Date",
                    chg.refchg as "Référence",
                    CONCAT(a.designation, ' → ', a2.designation) as "Article",
                    chgd.qtchg as "Quantité",
                    u.designationunite as "Unité",
                    m.nommagasin as "Magasin",
                    p.nompesonnel as "Utilisateur",
                    chg.observationchg as "Observations"
                FROM tb_changement chg
                LEFT JOIN tb_changementdetail chgd ON chg.idchg = chgd.idchg
                LEFT JOIN tb_article a ON chgd.idarticle = a.idarticle
                LEFT JOIN tb_article a2 ON chgd.idarticle_nouveau = a2.idarticle
                LEFT JOIN tb_unite u ON chgd.idunite = u.idunite
                LEFT JOIN tb_magasin m ON chg.idmagasin = m.idmagasin
                LEFT JOIN tb_personnel p ON chg.iduser = p.idpersonnel
                WHERE chg.deleted = 0
                ORDER BY chg.idchg DESC
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
