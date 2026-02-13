import customtkinter as ctk
from tkinter import ttk, messagebox
import psycopg2
import json
from datetime import datetime
from html import escape
from html import escape # Décommenter si vous utilisez l'impression HTML
from datetime import datetime # Décommenter si vous utilisez les dates DB
import tempfile # NOUVEAU : Nécessaire pour l'aperçu avant impression
import webbrowser # NOUVEAU : Nécessaire pour l'aperçu avant impression
import os # NOUVEAU : Nécessaire pour l'aperçu avant impression
from reportlab.lib.pagesizes import A5, landscape
from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, Table, TableStyle
from reportlab.lib.styles import getSampleStyleSheet
from reportlab.lib import colors
from resource_utils import get_config_path, safe_file_read



from pages.page_livrFrs import PageBonReception  # Ajoutez cette ligne
         

# Configuration de l'apparence
ctk.set_appearance_mode("light") 
ctk.set_default_color_theme("blue")

# Définition des couleurs utilisées
NAV_BAR_COLOR = "#007ACC"
ACTIVE_BUTTON_COLOR = "white"
INACTIVE_BUTTON_COLOR = NAV_BAR_COLOR
ACTIVE_TEXT_COLOR = "black"
INACTIVE_TEXT_COLOR = "white"


# --- 1. Votre classe PageCommandeFrs (PageCmdFrs) avec correction ---

class PageCmdFrs(ctk.CTkFrame):
    """
    CLASSE INTÉGRÉE. Correction de l'argument __init__ de 'parent' à 'master'.
    """
    # CORRECTION ICI: Changement de 'parent' à 'master'
    def __init__(self, master, iduser): 
        super().__init__(master, fg_color="white") 
        self.iduser = iduser
        self.article_selectionne = None
        self.items_commande = []
        self.idcom_charge = None
        self.mode_modification = False
        self.index_ligne_selectionnee = None
        self.fournisseurs = {"HTA": 1, "Autre": 2} # STUB: Fournisseurs en dur
        
        self.setup_ui()
        self.generer_reference()
        self.charger_fournisseurs() 

    # --- STUBS ET FONCTIONS UTILITAIRES ---
    def connect_db(self):
        """Connexion à la base de données PostgreSQL"""
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
        """Formate un nombre avec séparateur de milliers (1.000,00)"""
        try:
            nombre = float(nombre)
            # Formater avec 2 décimales
            partie_entiere = int(nombre)
            partie_decimale = abs(nombre - partie_entiere)
            
            # Formater la partie entière avec des points comme séparateurs de milliers
            str_entiere = f"{partie_entiere:,}".replace(',', '.')
            
            # Formater la partie décimale
            str_decimale = f"{partie_decimale:.2f}".split('.')[1]
            
            return f"{str_entiere},{str_decimale}"
        except:
            return "0,00"
    
    def parser_nombre(self, texte):
        """Convertit un nombre formaté (1.000,00) en float"""
        try:
            # Enlever les points (séparateurs de milliers) et remplacer la virgule par un point
            texte_clean = texte.replace('.', '').replace(',', '.')
            return float(texte_clean)
        except:
            return 0.0
            
    def generer_reference(self):
        """Génère la référence automatique au format 2025-BC-00001"""
        conn = self.connect_db()
        if not conn:
            return
            
        try:
            cursor = conn.cursor()
            annee_courante = datetime.now().year
            
            query = """
                SELECT refcom FROM tb_commande 
                WHERE refcom LIKE %s 
                ORDER BY refcom DESC LIMIT 1
            """
            cursor.execute(query, (f"{annee_courante}-BC-%",))
            resultat = cursor.fetchone()
            
            if resultat:
                # Extraire le numéro après "BC-"
                dernier_num = int(resultat[0].split('-')[-1])
                nouveau_num = dernier_num + 1
            else:
                nouveau_num = 1
            
            reference = f"{annee_courante}-BC-{nouveau_num:05d}"
            self.entry_ref.configure(state="normal")
            self.entry_ref.delete(0, "end")
            self.entry_ref.insert(0, reference)
            self.entry_ref.configure(state="readonly")
            
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur lors de la génération de la référence: {str(e)}")
        finally:
            if 'cursor' in locals() and cursor: cursor.close()
            if conn: conn.close()
    
    def charger_fournisseurs(self):
        """Charge la liste des fournisseurs"""
        conn = self.connect_db()
        if not conn:
            return
            
        try:
            cursor = conn.cursor()
            query = "SELECT idfrs, nomfrs FROM tb_fournisseur WHERE deleted = 0 ORDER BY nomfrs"
            cursor.execute(query)
            
            self.fournisseurs = {row[1]: row[0] for row in cursor.fetchall()}
            self.combo_fournisseur.configure(values=list(self.fournisseurs.keys()))
            
            if self.fournisseurs:
                self.combo_fournisseur.set(list(self.fournisseurs.keys())[0])
            
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur lors du chargement des fournisseurs: {str(e)}")
        finally:
            if 'cursor' in locals() and cursor: cursor.close()
            if conn: conn.close()
            
    def ouvrir_recherche_article(self):
        """Ouvre une fenêtre pour rechercher et sélectionner un article"""
        if self.index_ligne_selectionnee is not None:
            messagebox.showwarning("Attention", "Veuillez d'abord valider ou annuler la modification de ligne en cours")
            return
            
        fenetre_recherche = ctk.CTkToplevel(self)
        fenetre_recherche.title("Rechercher un article")
        fenetre_recherche.geometry("1000x600")
        fenetre_recherche.grab_set()
        
        main_frame = ctk.CTkFrame(fenetre_recherche)
        main_frame.pack(fill="both", expand=True, padx=10, pady=10)
        
        titre = ctk.CTkLabel(main_frame, text="Sélectionner un article", font=ctk.CTkFont(family="Segoe UI", size=16, weight="bold"))
        titre.pack(pady=(0, 10))
        
        search_frame = ctk.CTkFrame(main_frame)
        search_frame.pack(fill="x", pady=(0, 10))
        
        ctk.CTkLabel(search_frame, text="🔍 Rechercher:").pack(side="left", padx=5)
        entry_search = ctk.CTkEntry(search_frame, placeholder_text="Code ou désignation...", width=300)
        entry_search.pack(side="left", padx=5, fill="x", expand=True)
        
        tree_frame = ctk.CTkFrame(main_frame)
        tree_frame.pack(fill="both", expand=True, pady=(0, 10))
        
        # COLONNES MODIFIÉES : Ajout de ID_Unite (caché) pour corriger le problème d'idunite
        colonnes = ("ID_Article", "ID_Unite", "Code", "Désignation", "Unité") 
        tree = ttk.Treeview(tree_frame, columns=colonnes, show='headings', height=15)
        
        tree.heading("ID_Article", text="ID_Article") 
        tree.heading("ID_Unite", text="ID_Unite")     
        tree.heading("Code", text="Code")
        tree.heading("Désignation", text="Désignation")
        tree.heading("Unité", text="Unité")
        
        tree.column("ID_Article", width=0, stretch=False) # Caché
        tree.column("ID_Unite", width=0, stretch=False)     # Caché (NOUVEAU)
        tree.column("Code", width=150, anchor='w')
        tree.column("Désignation", width=500, anchor='w')
        tree.column("Unité", width=100, anchor='w')
        
        scrollbar = ctk.CTkScrollbar(tree_frame, command=tree.yview)
        tree.configure(yscrollcommand=scrollbar.set)
        
        tree.pack(side="left", fill="both", expand=True)
        scrollbar.pack(side="right", fill="y")
        
        label_count = ctk.CTkLabel(main_frame, text="Nombre d'articles : 0")
        label_count.pack(pady=5)
        
        def charger_articles(filtre=""):
            for item in tree.get_children():
                tree.delete(item)
            conn = self.connect_db()
            if not conn: return
            try:
                cursor = conn.cursor()
                # La requête retourne l'article et son unité de base/de commande
                query = """
                    SELECT T2."idarticle", T1."codearticle", T2."designation", T1."designationunite", T1."idunite"
                    FROM tb_unite AS T1
                    INNER JOIN tb_article AS T2 ON T1.idarticle = T2.idarticle
                    WHERE T2."deleted" = 0
                """
                params = []
                if filtre:
                    query += """ AND (
                        LOWER(T1."codearticle") LIKE LOWER(%s) OR 
                        LOWER(T2."designation") LIKE LOWER(%s)
                    )"""
                    params = [f"%{filtre}%", f"%{filtre}%"]
                query += " ORDER BY T1.\"codearticle\""
                
                cursor.execute(query, params)
                resultats = cursor.fetchall()
                
                for row in resultats:
                    if len(row) >= 5:
                        # row: [idarticle, codearticle, designation, designationunite, idunite]
                        # Insertion de 5 valeurs: ID_Article, ID_Unite, Code, Désignation, Unité
                        tree.insert('', 'end', values=(row[0], row[4], row[1], row[2], row[3])) # Remplir la colonne ID_Unite avec row[4]
                
                label_count.configure(text=f"Nombre d'articles : {len(resultats)}")
                
            except Exception as e:
                messagebox.showerror("Erreur", f"Erreur lors du chargement des articles: {str(e)}")
            finally:
                if 'cursor' in locals() and cursor: cursor.close()
                if conn: conn.close()
        
        def rechercher(*args):
            charger_articles(entry_search.get())
            
        entry_search.bind('<KeyRelease>', rechercher)
        
        def valider_selection():
            selection = tree.selection()
            if not selection:
                messagebox.showwarning("Attention", "Veuillez sélectionner un article")
                return
            
            values = tree.item(selection[0])['values']
            
            # Récupération des données selon l'ordre des colonnes Treeview (y compris les cachées)
            idarticle = values[0]
            idunite = values[1] # ID DE L'UNITÉ (CORRIGÉ)
            codeart = values[2]
            designation = values[3]
            unite = values[4]
            
            self.article_selectionne = {
                'idarticle': idarticle,
                'idunite': idunite, # L'IDUNITE CORRECT EST MAINTENANT CAPTURÉ
                'designation': designation,
                'unite': unite
            }
            
            # Mettre à jour les champs
            self.entry_article.configure(state="normal")
            self.entry_article.delete(0, "end")
            self.entry_article.insert(0, designation)
            self.entry_article.configure(state="readonly")
            
            self.entry_unite.configure(state="normal")
            self.entry_unite.delete(0, "end")
            self.entry_unite.insert(0, unite)
            self.entry_unite.configure(state="readonly")
            
            self.entry_qtcmd.delete(0, "end")
            self.entry_punitcmd.delete(0, "end")
            
            # Réinitialiser/Afficher le total de la ligne pour les nouveaux champs vides
            self.calculer_total_ligne_preview()
            
            fenetre_recherche.destroy()
        
        tree.bind('<Double-Button-1>', lambda e: valider_selection())
        
        btn_frame = ctk.CTkFrame(main_frame)
        btn_frame.pack(fill="x")
        
        btn_annuler = ctk.CTkButton(btn_frame, text="❌ Annuler", command=fenetre_recherche.destroy, fg_color="#d32f2f", hover_color="#b71c1c")
        btn_annuler.pack(side="left", padx=5, pady=5)
        
        btn_valider = ctk.CTkButton(btn_frame, text="✅ Valider", command=valider_selection, fg_color="#2e7d32", hover_color="#1b5e20")
        btn_valider.pack(side="right", padx=5, pady=5)
        
        charger_articles()
        
    def nombre_en_lettres(self, nombre):
        """Convertit un nombre en lettres (pour le montant)"""
        unites = ["", "un", "deux", "trois", "quatre", "cinq", "six", "sept", "huit", "neuf"]
        dizaines = ["", "dix", "vingt", "trente", "quarante", "cinquante", "soixante", "soixante-dix", "quatre-vingt", "quatre-vingt-dix"]
        
        def convert_moins_100(n):
            if n < 10:
                return unites[n]
            elif n < 20:
                specials = ["dix", "onze", "douze", "treize", "quatorze", "quinze", "seize", "dix-sept", "dix-huit", "dix-neuf"]
                return specials[n - 10]
            elif n < 70:
                unite = n % 10
                dizaine = n // 10
                if unite == 0:
                    return dizaines[dizaine]
                elif unite == 1 and dizaine != 8:
                    return dizaines[dizaine] + "-et-un"
                else:
                    return dizaines[dizaine] + "-" + unites[unite]
            elif n < 80:
                return "soixante-" + convert_moins_100(n - 60)
            elif n < 100:
                if n == 80:
                    return "quatre-vingts"
                return "quatre-vingt-" + convert_moins_100(n - 80)
            return ""
        
        def convert_moins_1000(n):
            if n < 100:
                return convert_moins_100(n)
            centaine = n // 100
            reste = n % 100
            if centaine == 1:
                result = "cent"
            else:
                result = unites[centaine] + " cent"
            if reste == 0:
                if centaine > 1:
                    result += "s"
            else:
                result += " " + convert_moins_100(reste)
            return result
        
        try:
            nombre = float(nombre)
            partie_entiere = int(nombre)
            partie_decimale = int(round((nombre - partie_entiere) * 100))
            
            if partie_entiere == 0:
                result = "zéro"
            else:
                result = ""
                
                # Millions
                if partie_entiere >= 1000000:
                    millions = partie_entiere // 1000000
                    if millions == 1:
                        result += "un million "
                    else:
                        result += convert_moins_1000(millions) + " millions "
                    partie_entiere %= 1000000
                
                # Milliers
                if partie_entiere >= 1000:
                    milliers = partie_entiere // 1000
                    if milliers == 1:
                        result += "mille "
                    else:
                        result += convert_moins_1000(milliers) + " mille "
                    partie_entiere %= 1000
                
                # Centaines
                if partie_entiere > 0:
                    result += convert_moins_1000(partie_entiere)
            
            result = result.strip()
            
            # Ajouter la devise
            result += " Ariary"
            
            # Ajouter les centimes si nécessaire
            if partie_decimale > 0:
                result += " et " + convert_moins_100(partie_decimale) + " centimes"
            
            return result.capitalize()
        except:
            return "Zéro Ariary"


    # --- SETUP UI ---
    def setup_ui(self):
        # Titre
        self.titre = ctk.CTkLabel(self, text="Nouvelle Commande Fournisseur", 
                            font=ctk.CTkFont(family="Segoe UI", size=20, weight="bold"))
        self.titre.pack(pady=10)
        
        # Frame en haut pour référence, fournisseur ET TOTAL GLOBAL
        frame_haut = ctk.CTkFrame(self)
        frame_haut.pack(fill="x", padx=20, pady=10)
        
        # Référence
        ctk.CTkLabel(frame_haut, text="Référence:").grid(row=0, column=0, padx=10, pady=10, sticky="w")
        self.entry_ref = ctk.CTkEntry(frame_haut, width=200, state="readonly")
        self.entry_ref.grid(row=0, column=1, padx=10, pady=10)
        
        # Fournisseur
        ctk.CTkLabel(frame_haut, text="Fournisseur:").grid(row=0, column=2, padx=10, pady=10, sticky="w")
        self.combo_fournisseur = ctk.CTkComboBox(frame_haut, width=300, state="readonly")
        self.combo_fournisseur.grid(row=0, column=3, padx=10, pady=10)
        
        # Bouton Charger Commande (pour la modification)
        btn_charger = ctk.CTkButton(frame_haut, text="📂 Charger Commande", 
                                    command=self.ouvrir_recherche_commande, width=150,
                                    fg_color="#1976d2", hover_color="#1565c0")
        btn_charger.grid(row=0, column=4, padx=10, pady=10)
        
        # LABEL TOTAL GLOBAL DE COMMANDE (NOUVEAU)
        self.label_total_global = ctk.CTkLabel(frame_haut, text="Total Commande: 0,00", 
                                       font=ctk.CTkFont(family="Segoe UI", size=16, weight="bold"),
                                       text_color="#2e7d32")
        self.label_total_global.grid(row=0, column=5, padx=20, pady=10, sticky="e")
        
        # Configurer la colonne 5 pour prendre l'espace restant
        frame_haut.grid_columnconfigure(5, weight=1)
        
        # Frame milieu pour saisie des articles
        frame_milieu = ctk.CTkFrame(self)
        frame_milieu.pack(fill="x", padx=20, pady=10)
        
        # Nom d'article avec bouton recherche
        ctk.CTkLabel(frame_milieu, text="Nom d'article:").grid(row=0, column=0, padx=10, pady=10, sticky="w")
        self.entry_article = ctk.CTkEntry(frame_milieu, width=300, state="readonly")
        self.entry_article.grid(row=0, column=1, padx=10, pady=10)
        
        btn_recherche = ctk.CTkButton(frame_milieu, text="🔍 Rechercher", 
                                      command=self.ouvrir_recherche_article, width=120)
        btn_recherche.grid(row=0, column=2, padx=10, pady=10)
        
        # Unité
        ctk.CTkLabel(frame_milieu, text="Unité:").grid(row=1, column=0, padx=10, pady=10, sticky="w")
        self.entry_unite = ctk.CTkEntry(frame_milieu, width=150, state="readonly")
        self.entry_unite.grid(row=1, column=1, padx=10, pady=10, sticky="w")
        
        # Quantité Cmd
        ctk.CTkLabel(frame_milieu, text="Quantité Cmd:").grid(row=2, column=0, padx=10, pady=10, sticky="w")
        self.entry_qtcmd = ctk.CTkEntry(frame_milieu, width=150)
        self.entry_qtcmd.grid(row=2, column=1, padx=10, pady=10, sticky="w")
        self.entry_qtcmd.bind('<KeyRelease>', lambda event: self.calculer_total_ligne_preview()) # Bind pour le calcul
        
        # Prix Unitaire
        ctk.CTkLabel(frame_milieu, text="Prix Unitaire:").grid(row=2, column=2, padx=10, pady=10, sticky="w")
        self.entry_punitcmd = ctk.CTkEntry(frame_milieu, width=150)
        self.entry_punitcmd.grid(row=2, column=3, padx=10, pady=10, sticky="w")
        self.entry_punitcmd.bind('<KeyRelease>', lambda event: self.calculer_total_ligne_preview()) # Bind pour le calcul
        
        # Label Total Ligne (NOUVEAU)
        self.label_total_ligne = ctk.CTkLabel(frame_milieu, text="Total Ligne: 0,00",
                                              font=ctk.CTkFont(family="Segoe UI", weight="bold"))
        self.label_total_ligne.grid(row=2, column=4, padx=20, pady=10, sticky="w")
        
        # Quantité Livrée
        ctk.CTkLabel(frame_milieu, text="Quantité Livrée:").grid(row=3, column=0, padx=10, pady=10, sticky="w")
        self.entry_qtlivre = ctk.CTkEntry(frame_milieu, width=150)
        self.entry_qtlivre.insert(0, "0")
        self.entry_qtlivre.grid(row=3, column=1, padx=10, pady=10, sticky="w")
        
        # Frame pour les boutons Ajouter et Modifier Ligne
        frame_btn_article = ctk.CTkFrame(frame_milieu, fg_color="transparent")
        frame_btn_article.grid(row=3, column=2, columnspan=3, padx=10, pady=10, sticky="w")
        
        # Bouton Ajouter
        self.btn_ajouter = ctk.CTkButton(frame_btn_article, text="➕ Ajouter", 
                                    command=self.ajouter_article, width=120)
        self.btn_ajouter.pack(side="left", padx=5)
        
        # Bouton Modifier Ligne
        self.btn_modifier_ligne = ctk.CTkButton(frame_btn_article, text="✏️ Modifier Ligne", 
                                    command=self.modifier_ligne_article, width=130,
                                    fg_color="#f9a825", hover_color="#f57f17",
                                    state="disabled")
        self.btn_modifier_ligne.pack(side="left", padx=5)
        
        # Bouton Annuler Sélection
        self.btn_annuler_selection = ctk.CTkButton(frame_btn_article, text="✖ Annuler", 
                                    command=self.annuler_selection_ligne, width=100,
                                    fg_color="#757575", hover_color="#616161",
                                    state="disabled")
        self.btn_annuler_selection.pack(side="left", padx=5)
        
        # Frame pour le Treeview
        frame_tree = ctk.CTkFrame(self)
        frame_tree.pack(fill="both", expand=True, padx=20, pady=10)
        
        # Treeview
        colonnes = ("Article", "Unité", "Qté Cmd", "Prix Unit.", "Qté Livrée", "Total")
        self.tree = ttk.Treeview(frame_tree, columns=colonnes, show="headings", height=10)
        
        for col in colonnes:
            self.tree.heading(col, text=col)
            if col == "Article":
                self.tree.column(col, width=250)
            elif col in ["Unité"]:
                self.tree.column(col, width=100)
            else:
                self.tree.column(col, width=120)
        
        # Scrollbar
        scrollbar = ttk.Scrollbar(frame_tree, orient="vertical", command=self.tree.yview)
        self.tree.configure(yscrollcommand=scrollbar.set)
        
        self.tree.pack(side="left", fill="both", expand=True)
        scrollbar.pack(side="right", fill="y")
        
        # Bind pour sélection dans le Treeview
        self.tree.bind('<<TreeviewSelect>>', self.on_selection_ligne)
        self.tree.bind('<Double-Button-1>', self.on_double_click_ligne)
        
        # Frame boutons bas
        frame_boutons = ctk.CTkFrame(self)
        frame_boutons.pack(fill="x", padx=20, pady=10)
        
        btn_supprimer = ctk.CTkButton(frame_boutons, text="🗑️ Supprimer Ligne", 
                                      command=self.supprimer_article, 
                                      fg_color="#d32f2f", hover_color="#b71c1c")
        btn_supprimer.pack(side="left", padx=10)
        
        # Bouton Nouvelle Commande
        btn_nouveau = ctk.CTkButton(frame_boutons, text="🔄 Nouvelle Commande", 
                                    command=self.nouvelle_commande,
                                    fg_color="#0288d1", hover_color="#01579b")
        btn_nouveau.pack(side="left", padx=10)
        
        btn_imprimer = ctk.CTkButton(frame_boutons, text="🖨️ Imprimer", 
                                     command=self.imprimer_bon_commande,
                                     fg_color="#ff6f00", hover_color="#e65100")
        btn_imprimer.pack(side="right", padx=10)
        
        btn_enregistrer = ctk.CTkButton(frame_boutons, text="💾 Enregistrer", 
                                        command=self.enregistrer_commande,
                                        fg_color="#2e7d32", hover_color="#1b5e20")
        btn_enregistrer.pack(side="right", padx=10)
        
        # Label total (pour la zone basse, inchangé pour la cohérence, mais le total principal est en haut)
        self.label_total = ctk.CTkLabel(frame_boutons, text="Total: 0,00", 
                                       font=ctk.CTkFont(family="Segoe UI", size=16, weight="bold"))
        self.label_total.pack(side="right", padx=20)

    # --- Méthodes de gestion (inchangées) ---
    def on_selection_ligne(self, event):
        selection = self.tree.selection()
        if selection:
            self.btn_modifier_ligne.configure(state="normal")
            self.btn_annuler_selection.configure(state="normal")
            
    def update_date_modification(self):
        """
        Met à jour la colonne datemodif de la commande principale
        (stockée dans self.idcom_charge) avec la date et l'heure actuelles.
        """
        # Assurez-vous que l'ID de la commande est chargé
        if not self.idcom_charge:
            return 
        
        # Récupérer la date et l'heure actuelles
        current_datetime = datetime.now()
        
        conn = self.connect_db() 
        if conn is None:
            return
        
        try:
            cursor = conn.cursor()
            
            # REQUÊTE SQL CORRIGÉE : Utilisation de datemodif
            sql_update = """
                UPDATE tb_commande 
                SET datemodif = %s 
                WHERE idcom = %s;
            """
            
            # Exécution de la requête
            cursor.execute(sql_update, (current_datetime, self.idcom_charge))
            conn.commit()
            
        except psycopg2.Error as e:
            messagebox.showerror("Erreur BDD", f"Échec de la mise à jour de la date de modification: {e}")
            conn.rollback()
            
        finally:
            if conn:
                conn.close()
            
    def on_double_click_ligne(self, event):
        """Double-clic sur une ligne pour la charger dans les champs"""
        selection = self.tree.selection()
        if not selection:
            return
        
        self.charger_ligne_pour_modification(selection[0])
        
    def charger_ligne_pour_modification(self, item_id):
        """Charge les données d'une ligne dans les champs pour modification"""
        index = self.tree.index(item_id)
        self.index_ligne_selectionnee = index
        
        item_data = self.items_commande[index]
        values = self.tree.item(item_id)['values']
        
        # Remplir les champs
        self.entry_article.configure(state="normal")
        self.entry_article.delete(0, "end")
        self.entry_article.insert(0, values[0])  # Article (désignation)
        self.entry_article.configure(state="readonly")
        
        self.entry_unite.configure(state="normal")
        self.entry_unite.delete(0, "end")
        self.entry_unite.insert(0, values[1])  # Unité
        self.entry_unite.configure(state="readonly")
        
        self.entry_qtcmd.delete(0, "end")
        self.entry_qtcmd.insert(0, self.formater_nombre(item_data['qtcmd']))
        
        self.entry_punitcmd.delete(0, "end")
        self.entry_punitcmd.insert(0, self.formater_nombre(item_data['punitcmd']))
        
        self.entry_qtlivre.delete(0, "end")
        self.entry_qtlivre.insert(0, self.formater_nombre(item_data['qtlivre']))
        
        # Stocker l'article sélectionné pour la modification
        self.article_selectionne = {
            'idarticle': item_data['idarticle'],
            'idunite': item_data['idunite'],
            'designation': values[0],
            'unite': values[1]
        }
        
        # Changer l'état des boutons
        self.btn_ajouter.configure(state="disabled")
        self.btn_modifier_ligne.configure(state="normal", text="✅ Valider Modif.")
        self.btn_annuler_selection.configure(state="normal")
        
        # Mettre à jour le preview du total ligne
        self.calculer_total_ligne_preview()
        
        # Mettre en surbrillance visuelle
        self.titre.configure(text=f"⚠️ Modification de la ligne {index + 1}")
            
    def calculer_total_ligne_preview(self):
        try:
            qtcmd = self.parser_nombre(self.entry_qtcmd.get())
            punitcmd = self.parser_nombre(self.entry_punitcmd.get())
            total_ligne = qtcmd * punitcmd
            self.label_total_ligne.configure(text=f"Total Ligne: {self.formater_nombre(total_ligne)}")
        except:
            self.label_total_ligne.configure(text="Total Ligne: 0,00")
            
            
    def modifier_ligne_article(self):
        """Modifie la ligne sélectionnée avec les nouvelles valeurs"""
        selection = self.tree.selection()
        
        # Si pas en mode modification de ligne, charger d'abord
        if self.index_ligne_selectionnee is None:
            if selection:
                self.charger_ligne_pour_modification(selection[0])
            else:
                messagebox.showwarning("Attention", "Veuillez sélectionner une ligne à modifier")
            return
        
        # Valider les modifications
        try:
            qtcmd = self.parser_nombre(self.entry_qtcmd.get())
            punitcmd = self.parser_nombre(self.entry_punitcmd.get())
            qtlivre = self.parser_nombre(self.entry_qtlivre.get())
            
            if qtcmd <= 0:
                messagebox.showwarning("Attention", "La quantité commandée doit être supérieure à 0")
                return
            
            total = qtcmd * punitcmd
            index = self.index_ligne_selectionnee
            
            # Mettre à jour les données
            self.items_commande[index]['qtcmd'] = qtcmd
            self.items_commande[index]['punitcmd'] = punitcmd
            self.items_commande[index]['qtlivre'] = qtlivre
            self.items_commande[index]['total'] = total # Ajout de la mise à jour du total
            
            # Mettre à jour le Treeview
            item_id = self.tree.get_children()[index]
            self.tree.item(item_id, values=(
                self.article_selectionne['designation'],
                self.article_selectionne['unite'],
                self.formater_nombre(qtcmd),
                self.formater_nombre(punitcmd),
                self.formater_nombre(qtlivre),
                self.formater_nombre(total)
            ))

            # ✅ APPEL DE LA FONCTION DE MISE À JOUR DE LA DATE
            if self.idcom_charge:
                self.update_date_modification()
                # Optionnel: Mettre à jour le total dans la DB immédiatement. 
                # Généralement fait dans enregistrer_commande.
                # self.mettre_a_jour_total_commande_db(sum(item['total'] for item in self.items_commande))

            # Réinitialiser l'état
            self.annuler_selection_ligne()
            self.calculer_total()
            
            messagebox.showinfo("Succès", "Ligne modifiée avec succès!")
            
        except ValueError:
            messagebox.showerror("Erreur", "Veuillez entrer des valeurs numériques valides")
        
    def annuler_selection_ligne(self):
        self.index_ligne_selectionnee = None
        self.article_selectionne = None
        
        self.entry_article.configure(state="normal")
        self.entry_article.delete(0, "end")
        self.entry_article.insert(0, "Sélectionnez un article")
        self.entry_article.configure(state="readonly")
        
        self.entry_unite.configure(state="normal")
        self.entry_unite.delete(0, "end")
        self.entry_unite.configure(state="readonly")
        
        self.entry_qtcmd.delete(0, "end")
        self.entry_punitcmd.delete(0, "end")
        self.entry_qtlivre.delete(0, "end")
        self.entry_qtcmd.insert(0, "10") 
        self.entry_punitcmd.insert(0, "5.000,00")
        self.entry_qtlivre.insert(0, "0")
        
        self.label_total_ligne.configure(text="Total Ligne: 50.000,00") 
        self.btn_ajouter.configure(state="normal")
        self.btn_modifier_ligne.configure(state="disabled", text="✏️ Modifier Ligne")
        self.btn_annuler_selection.configure(state="disabled")
        self.tree.selection_remove(self.tree.selection())
        self.titre.configure(text="Nouvelle Commande Fournisseur")

    def ajouter_article(self):
        """Ajoute un article au treeview"""
        if not self.article_selectionne:
            messagebox.showwarning("Attention", "Veuillez sélectionner un article")
            return
        
        try:
            qtcmd = self.parser_nombre(self.entry_qtcmd.get())
            punitcmd = self.parser_nombre(self.entry_punitcmd.get())
            qtlivre = self.parser_nombre(self.entry_qtlivre.get())
            
            if qtcmd <= 0:
                messagebox.showwarning("Attention", "La quantité commandée doit être supérieure à 0")
                return
                
            total = qtcmd * punitcmd
            
            self.tree.insert("", "end", values=(
                self.article_selectionne['designation'],
                self.article_selectionne['unite'],
                self.formater_nombre(qtcmd),
                self.formater_nombre(punitcmd),
                self.formater_nombre(qtlivre),
                self.formater_nombre(total)
            ))
            
            self.items_commande.append({
                'idcomdetail': None,
                'idarticle': self.article_selectionne['idarticle'],
                'designation': self.article_selectionne['designation'],
                'idunite': self.article_selectionne['idunite'], # idunite est maintenant correctement stocké ici
                'qtcmd': qtcmd,
                'punitcmd': punitcmd,
                'qtlivre': qtlivre,
                'total': total # Ajout du total pour la modification
            })
            
            self.article_selectionne = None
            self.entry_article.configure(state="normal")
            self.entry_article.delete(0, "end")
            self.entry_article.configure(state="readonly")
            
            self.entry_unite.configure(state="normal")
            self.entry_unite.delete(0, "end")
            self.entry_unite.configure(state="readonly")
            
            self.entry_qtcmd.delete(0, "end")
            self.entry_punitcmd.delete(0, "end")
            self.entry_qtlivre.delete(0, "end")
            self.entry_qtlivre.insert(0, "0")
            
            self.calculer_total()
            self.calculer_total_ligne_preview() # Réinitialiser le label de ligne
            
        except ValueError:
            messagebox.showerror("Erreur", "Veuillez entrer des valeurs numériques valides")

    def supprimer_article(self):
        """Supprime l'article sélectionné du treeview"""
        selection = self.tree.selection()
        if not selection:
            messagebox.showwarning("Attention", "Veuillez sélectionner un article à supprimer")
            return
            
        if self.index_ligne_selectionnee is not None:
            self.annuler_selection_ligne()
            
        index = self.tree.index(selection[0])
        self.tree.delete(selection[0])
        self.items_commande.pop(index)
        self.calculer_total()
        
    def calculer_total(self):
        """Calcule et affiche le total de la commande (pour les deux labels)"""
        total = sum(item['qtcmd'] * item['punitcmd'] for item in self.items_commande)
        
        # Mise à jour du label en bas
        self.label_total.configure(text=f"Total: {self.formater_nombre(total)}")
        
        # Mise à jour du label total global en haut (NOUVEAU)
        self.label_total_global.configure(text=f"Total Commande: {self.formater_nombre(total)}")
        
    def ouvrir_recherche_commande(self):
        """Ouvre une fenêtre pour rechercher et charger une commande existante"""
        fenetre = ctk.CTkToplevel(self)
        fenetre.title("Rechercher une commande à modifier")
        fenetre.geometry("900x500")
        fenetre.grab_set()
        
        main_frame = ctk.CTkFrame(fenetre)
        main_frame.pack(fill="both", expand=True, padx=10, pady=10)
        
        titre = ctk.CTkLabel(main_frame, text="Sélectionner une commande", 
                            font=ctk.CTkFont(family="Segoe UI", size=16, weight="bold"))
        titre.pack(pady=(0, 10))
        
        search_frame = ctk.CTkFrame(main_frame)
        search_frame.pack(fill="x", pady=(0, 10))
        
        ctk.CTkLabel(search_frame, text="🔍 Rechercher:").pack(side="left", padx=5)
        entry_search = ctk.CTkEntry(search_frame, placeholder_text="Référence ou fournisseur...", width=300)
        entry_search.pack(side="left", padx=5, fill="x", expand=True)
        
        tree_frame = ctk.CTkFrame(main_frame)
        tree_frame.pack(fill="both", expand=True, pady=(0, 10))
        
        colonnes = ("ID", "Référence", "Date", "Fournisseur", "Description", "Statut")
        tree = ttk.Treeview(tree_frame, columns=colonnes, show='headings', height=12)
        
        tree.heading("ID", text="ID")
        tree.heading("Référence", text="Référence")
        tree.heading("Date", text="Date")
        tree.heading("Fournisseur", text="Fournisseur")
        tree.heading("Description", text="Description")
        tree.heading("Statut", text="Statut")
        
        tree.column("ID", width=0, stretch=False)
        tree.column("Référence", width=120, anchor='w')
        tree.column("Date", width=100, anchor='w')
        tree.column("Fournisseur", width=200, anchor='w')
        tree.column("Description", width=250, anchor='w')
        tree.column("Statut", width=100, anchor='center')
        
        # Style pour les tags
        style = ttk.Style()
        style.configure("Treeview", rowheight=22, background="#FFFFFF", foreground="#000000", fieldbackground="#FFFFFF", borderwidth=0, font=('Segoe UI', 8))
        style.configure("Treeview.Heading", background="#E8E8E8", foreground="#000000", font=('Segoe UI', 8, 'bold'))
        tree.tag_configure('incomplet', background='#ffcccc')  # Rouge clair pour incomplet
        tree.tag_configure('complet', background='#ccffcc')    # Vert clair pour complet
        
        scrollbar = ctk.CTkScrollbar(tree_frame, command=tree.yview)
        tree.configure(yscrollcommand=scrollbar.set)
        
        tree.pack(side="left", fill="both", expand=True)
        scrollbar.pack(side="right", fill="y")
        
        label_count = ctk.CTkLabel(main_frame, text="Nombre de commandes : 0")
        label_count.pack(pady=5)
        
        def charger_commandes(filtre=""):
            for item in tree.get_children():
                tree.delete(item)
            
            conn = self.connect_db()
            if not conn:
                return
            
            try:
                cursor = conn.cursor()
                query = """
                    SELECT c.idcom, c.refcom, c.datecom, f.nomfrs, c.descriptioncom,
                           (SELECT COUNT(*) 
                            FROM tb_commandedetail d 
                            WHERE d.idcom = c.idcom) as total_lignes,
                           (SELECT COUNT(*) 
                            FROM tb_commandedetail d 
                            WHERE d.idcom = c.idcom AND d.qtcmd = d.qtlivre) as lignes_completes
                    FROM tb_commande c
                    LEFT JOIN tb_fournisseur f ON c.idfrs = f.idfrs
                    WHERE c.deleted = 0
                """
                params = []
                if filtre:
                    query += """ AND (
                        LOWER(c.refcom) LIKE LOWER(%s) OR 
                        LOWER(f.nomfrs) LIKE LOWER(%s)
                    )"""
                    params = [f"%{filtre}%", f"%{filtre}%"]
                
                query += " ORDER BY c.datecom DESC, c.refcom DESC"
                cursor.execute(query, params)
                resultats = cursor.fetchall()
                
                for row in resultats:
                    date_str = row[2].strftime("%d/%m/%Y") if row[2] else ""
                    total_lignes = row[5] if row[5] else 0
                    lignes_completes = row[6] if row[6] else 0
                    
                    # Déterminer le statut et le tag
                    if total_lignes > 0 and lignes_completes == total_lignes:
                        statut = "✅ Livrés"
                        tag = 'complet'
                    else:
                        statut = "⚠️ En attente"
                        tag = 'incomplet'
                    
                    tree.insert('', 'end', 
                              values=(row[0], row[1], date_str, row[3] or "", row[4] or "", statut),
                              tags=(tag,))
                
                label_count.configure(text=f"Nombre de commandes : {len(resultats)}")
                
            except Exception as e:
                messagebox.showerror("Erreur", f"Erreur lors du chargement: {str(e)}")
            finally:
                if 'cursor' in locals() and cursor: cursor.close()
                if conn: conn.close()
        
        def rechercher(*args):
            charger_commandes(entry_search.get())
        
        entry_search.bind('<KeyRelease>', rechercher)
        
        def valider_selection():
            selection = tree.selection()
            if not selection:
                messagebox.showwarning("Attention", "Veuillez sélectionner une commande")
                return
            values = tree.item(selection[0])['values']
            idcom = values[0]
            fenetre.destroy()
            self.charger_commande(idcom)
        
        tree.bind('<Double-Button-1>', lambda e: valider_selection())
        btn_frame = ctk.CTkFrame(main_frame)
        btn_frame.pack(fill="x")
        btn_annuler = ctk.CTkButton(btn_frame, text="❌ Annuler", command=fenetre.destroy, fg_color="#d32f2f", hover_color="#b71c1c")
        btn_annuler.pack(side="left", padx=5, pady=5)
        btn_valider = ctk.CTkButton(btn_frame, text="✅ Charger", command=valider_selection, fg_color="#2e7d32", hover_color="#1b5e20")
        btn_valider.pack(side="right", padx=5, pady=5)
        charger_commandes()
        
    def charger_commande(self, idcom):
        """Charge une commande existante pour modification"""
        conn = self.connect_db()
        if not conn: return
        try:
            cursor = conn.cursor()
            query_commande = """
                SELECT c.idcom, c.refcom, c.datecom, c.idfrs, f.nomfrs, c.descriptioncom
                FROM tb_commande c
                LEFT JOIN tb_fournisseur f ON c.idfrs = f.idfrs
                WHERE c.idcom = %s AND c.deleted = 0
            """
            cursor.execute(query_commande, (idcom,))
            commande = cursor.fetchone()
            if not commande:
                messagebox.showerror("Erreur", "Commande non trouvée")
                return

            query_details = """
                SELECT d.id, d.idarticle, a.designation, u.designationunite, d.idunite, d.qtcmd, d.qtlivre, d.punitcmd
                FROM tb_commandedetail d
                INNER JOIN tb_article a ON d.idarticle = a.idarticle
                INNER JOIN tb_unite u ON d.idunite = u.idunite
                WHERE d.idcom = %s
            """
            cursor.execute(query_details, (idcom,))
            details = cursor.fetchall()
            
            self.reinitialiser_formulaire(generer_ref=False)
            self.mode_modification = True
            self.idcom_charge = idcom
            self.titre.configure(text=f"Modification Commande: {commande[1]}")
            
            self.entry_ref.configure(state="normal")
            self.entry_ref.delete(0, "end")
            self.entry_ref.insert(0, commande[1])
            self.entry_ref.configure(state="readonly")
            
            if commande[4]:
                self.combo_fournisseur.set(commande[4])
                
            for detail in details:
                idcomdetail, idarticle, designation, unite, idunite, qtcmd, qtlivre, punitcmd = detail
                punitcmd = punitcmd if punitcmd else 0
                total = qtcmd * punitcmd
                
                # Ajout des données à la liste interne
                self.items_commande.append({
                    'idcomdetail': idcomdetail,
                    'idarticle': idarticle,
                    'idunite': idunite,
                    'qtcmd': qtcmd,
                    'qtlivre': qtlivre,
                    'punitcmd': punitcmd,
                    'total': total
                })
                
                # Ajout au Treeview
                self.tree.insert("", "end", values=(
                    designation, 
                    unite, 
                    self.formater_nombre(qtcmd), 
                    self.formater_nombre(punitcmd), 
                    self.formater_nombre(qtlivre), 
                    self.formater_nombre(total)
                ))
                
            self.calculer_total()
            
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur lors du chargement de la commande: {str(e)}")
        finally:
            if 'cursor' in locals() and cursor: cursor.close()
            if conn: conn.close()
        
    def enregistrer_commande(self):
        """Enregistre la commande (INSERT ou UPDATE selon le mode)"""
        if self.index_ligne_selectionnee is not None:
            messagebox.showwarning("Attention", "Veuillez d'abord valider ou annuler la modification de ligne en cours")
            return
            
        if not self.items_commande:
            messagebox.showwarning("Attention", "La commande ne contient aucune ligne.")
            return

        frs_nom = self.combo_fournisseur.get()
        idfrs = self.fournisseurs.get(frs_nom)
        
        if not idfrs:
            messagebox.showwarning("Attention", "Veuillez sélectionner un fournisseur.")
            return
            
        total_commande = sum(item['qtcmd'] * item['punitcmd'] for item in self.items_commande)
        
        conn = self.connect_db()
        if not conn: return
        
        try:
            cursor = conn.cursor()
            description = "" # Description non gérée dans cette version
            
            if self.mode_modification and self.idcom_charge:
                # Mode Modification (UPDATE)
                
                # 1. Mise à jour de la commande principale (AJOUT DE totalcom)
                # VEUILLEZ VOUS ASSURER QUE LA COLONNE totalcom EXISTE DANS tb_commande
                query_commande = """
                    UPDATE tb_commande 
                    SET refcom = %s, idfrs = %s, descriptioncom = %s, totcmd = %s
                    WHERE idcom = %s
                """
                cursor.execute(query_commande, (
                    self.entry_ref.get(), 
                    idfrs, 
                    description, 
                    total_commande, # Nouveau champ totalcom
                    self.idcom_charge
                ))
                
                ids_existants = [item['idcomdetail'] for item in self.items_commande if item['idcomdetail']]
                
                # 2. Suppression des lignes non conservées
                query_select_ids = "SELECT id FROM tb_commandedetail WHERE idcom = %s"
                cursor.execute(query_select_ids, (self.idcom_charge,))
                all_ids_in_db = [row[0] for row in cursor.fetchall()]
                
                ids_a_supprimer = [id_db for id_db in all_ids_in_db if id_db not in ids_existants]
                
                if ids_a_supprimer:
                    # Correction: utiliser le format correct pour IN (tuple)
                    query_delete = "DELETE FROM tb_commandedetail WHERE id IN %s"
                    cursor.execute(query_delete, (tuple(ids_a_supprimer),))

                # 3. Insertion/Mise à jour des lignes
                query_update = """
                    UPDATE tb_commandedetail 
                    SET idarticle = %s, idunite = %s, qtcmd = %s, qtlivre = %s, punitcmd = %s, total = %s
                    WHERE id = %s
                """
                query_insert = """
                    INSERT INTO tb_commandedetail (idcom, idarticle, idunite, qtcmd, qtlivre, punitcmd, total)
                    VALUES (%s, %s, %s, %s, %s, %s, %s)
                """
                
                for item in self.items_commande:
                    total_ligne = item['qtcmd'] * item['punitcmd']
                    if item['idcomdetail']:
                        # UPDATE
                        cursor.execute(query_update, (
                            item['idarticle'], 
                            item['idunite'], 
                            item['qtcmd'], 
                            item['qtlivre'], 
                            item['punitcmd'], 
                            total_ligne,
                            item['idcomdetail']
                        ))
                    else:
                        # INSERT (nouvelle ligne)
                        cursor.execute(query_insert, (
                            self.idcom_charge, 
                            item['idarticle'], 
                            item['idunite'], 
                            item['qtcmd'], 
                            item['qtlivre'], 
                            item['punitcmd'],
                            total_ligne
                        ))
                        
                conn.commit()
                messagebox.showinfo("Succès", f"Commande {self.entry_ref.get()} modifiée avec succès!")
                
            else:
                # Mode Création (INSERT)
                
                # 1. Insertion de la commande principale (AJOUT DE totalcom)
                # VEUILLEZ VOUS ASSURER QUE LA COLONNE totalcom EXISTE DANS tb_commande
                query_commande = """
                    INSERT INTO tb_commande (refcom, datecom, iduser, idfrs, descriptioncom, totcmd, deleted)
                    VALUES (%s, %s, %s, %s, %s, %s, 0)
                    RETURNING idcom
                """
                cursor.execute(query_commande, (
                    self.entry_ref.get(), 
                    datetime.now().strftime('%Y-%m-%d'), # Utiliser un format DB-friendly
                    self.iduser, 
                    idfrs, 
                    description,
                    total_commande # Nouveau champ totalcom
                ))
                idcom = cursor.fetchone()[0]
                
                # 2. Insertion des détails
                query_detail = """
                    INSERT INTO tb_commandedetail (idcom, idarticle, idunite, qtcmd, qtlivre, punitcmd, total)
                    VALUES (%s, %s, %s, %s, %s, %s, %s)
                """
                for item in self.items_commande:
                    total_ligne = item['qtcmd'] * item['punitcmd']
                    cursor.execute(query_detail, (
                        idcom, 
                        item['idarticle'], 
                        item['idunite'], 
                        item['qtcmd'], 
                        item['qtlivre'], 
                        item['punitcmd'],
                        total_ligne 
                    ))
                    
                conn.commit()
                messagebox.showinfo("Succès", "Commande enregistrée avec succès!")
                
            self.mode_modification = False
            self.idcom_charge = None
            self.titre.configure(text="Nouvelle Commande Fournisseur")
            self.reinitialiser_formulaire()
            
        except Exception as e:
            conn.rollback()
            # Affichage de l'erreur originale pour débogage
            messagebox.showerror("Erreur", f"Erreur lors de l'enregistrement: {str(e)}")
        finally:
            if 'cursor' in locals() and cursor: cursor.close()
            if conn: conn.close()
    
    def reinitialiser_formulaire(self, generer_ref=True):
        """Réinitialise le formulaire après enregistrement"""
        if generer_ref:
            self.generer_reference()
        self.items_commande.clear()
        self.index_ligne_selectionnee = None
        self.article_selectionne = None
        
        for item in self.tree.get_children():
            self.tree.delete(item)
            
        self.entry_article.configure(state="normal")
        self.entry_article.delete(0, "end")
        self.entry_article.configure(state="readonly")
        
        self.entry_unite.configure(state="normal")
        self.entry_unite.delete(0, "end")
        self.entry_unite.configure(state="readonly")
        
        self.entry_qtcmd.delete(0, "end")
        self.entry_punitcmd.delete(0, "end")
        self.entry_qtlivre.delete(0, "end")
        self.entry_qtlivre.insert(0, "0")
        
        self.btn_ajouter.configure(state="normal")
        self.btn_modifier_ligne.configure(state="disabled", text="✏️ Modifier Ligne")
        self.btn_annuler_selection.configure(state="disabled")
        
        # Réinitialiser le label total ligne
        self.label_total_ligne.configure(text="Total Ligne: 0,00")
        
        self.calculer_total()
    
    def nouvelle_commande(self):
        """Réinitialise le formulaire et le mode de commande"""
        self.reinitialiser_formulaire()
        self.mode_modification = False
        self.idcom_charge = None
        self.titre.configure(text="Nouvelle Commande Fournisseur")
        
    def imprimer_bon_commande(self):
        """Génère le contenu HTML du bon de commande et affiche l'aperçu"""
        if not self.idcom_charge and not self.items_commande:
            messagebox.showwarning("Attention", "Veuillez charger ou créer une commande pour imprimer.")
            return

        # Tenter d'enregistrer d'abord si c'est une nouvelle commande non enregistrée
        if not self.idcom_charge:
            reponse = messagebox.askyesno("Confirmation d'enregistrement", "Voulez-vous enregistrer cette commande avant d'imprimer ?")
            if reponse:
                self.enregistrer_commande()
                if not self.idcom_charge: # Si l'enregistrement a échoué
                    return
            else:
                messagebox.showwarning("Annulation", "Impression annulée. Enregistrez pour obtenir un bon officiel.")
                return

        # Récupération des infos société et fournisseur
        conn = self.connect_db()
        if not conn: return
    
        info_societe = None
        fournisseur_info = {"nom": self.combo_fournisseur.get(), "contact": "N/A", "adresse": "N/A"}

        try:
            cursor = conn.cursor()
        
            # Récupération des infos de la société
            cursor.execute("SELECT nomsociete, villesociete, adressesociete, contactsociete, nifsociete, statsociete, cifsociete FROM tb_infosociete LIMIT 1")
            row_societe = cursor.fetchone()
            if row_societe:
                info_societe = (
                    row_societe[0], # 0: nom
                    row_societe[1], # 1: ville
                    "Siège Social:", # 2: libellé
                    row_societe[2], # 3: adresse
                    row_societe[3], # 4: tel
                    row_societe[1], # 5: ville
                    row_societe[4], # 6: nif
                    row_societe[5], # 7: stat
                    row_societe[6]  # 8: cif
                )

            # Récupération des infos fournisseur détaillées
            idfrs = self.fournisseurs.get(self.combo_fournisseur.get())
            if idfrs:
                cursor.execute("SELECT nomfrs, contactfrs, adressefrs FROM tb_fournisseur WHERE idfrs = %s", (idfrs,))
                row_frs = cursor.fetchone()
                if row_frs:
                    fournisseur_info = {
                        "nom": row_frs[0],
                        "contact": row_frs[1] or "N/A",
                        "adresse": row_frs[2] or "N/A"
                    }

        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur de récupération des données pour l'impression: {str(e)}")
            info_societe = ("Nom Société", "Ville", "Siège Social:", "Adresse", "Tél", "Ville", "NIF", "STAT", "CIF")
        finally:
            if 'cursor' in locals() and cursor: cursor.close()
            if conn: conn.close()
        
        if not info_societe:
            info_societe = ("Nom Société", "Ville", "Siège Social:", "Adresse", "Tél", "Ville", "NIF", "STAT", "CIF")

        # Préparation des données pour le tableau
        lignes_html = ""
        montant_total = 0
        numero_ligne = 1  # CORRECTION: Ajout d'un compteur pour le numéro de ligne
    
        for item in self.items_commande:
            total = item['qtcmd'] * item['punitcmd']
            montant_total += total
        
            # Récupérer les informations nécessaires
            conn_temp = self.connect_db()
            if conn_temp:
                try:
                    cursor_temp = conn_temp.cursor()
                    # Récupérer la désignation de l'article et de l'unité
                    cursor_temp.execute("""
                    SELECT a.designation, u.designationunite
                    FROM tb_article a
                    INNER JOIN tb_unite u ON a.idarticle = u.idarticle
                    WHERE a.idarticle = %s AND u.idunite = %s
                """, (item['idarticle'], item['idunite']))
                    result = cursor_temp.fetchone()
                
                    if result:
                        designation = result[0]
                        unite = result[1]
                    else:
                        designation = "Article inconnu"
                        unite = "N/A"
                    
                    cursor_temp.close()
                except:
                    designation = "Article inconnu"
                    unite = "N/A"
                finally:
                    conn_temp.close()
            else:
                designation = "Article inconnu"
                unite = "N/A"
        
            lignes_html += f"""
            <tr>
                <td class="center">{numero_ligne}</td>
                <td>{escape(designation)}</td>
                <td class="center">{escape(unite)}</td>
                <td class="right">{self.formater_nombre(item['qtcmd'])}</td>
                <td class="right">{self.formater_nombre(item['punitcmd'])}</td>
                <td class="right">{self.formater_nombre(total)}</td>
            </tr>
        """
            numero_ligne += 1
    
        total_lettres = self.nombre_en_lettres(montant_total)

        html_content = f"""
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bon de Commande - {self.entry_ref.get()}</title>
    <style>
        @page {{ size: A4; margin: 10mm; }}
        * {{ margin: 0; padding: 0; box-sizing: border-box; }}
        body {{ font-family: Arial, sans-serif; font-size: 11pt; line-height: 1.4; color: #000; position: relative; background: white; }}
        body::before {{ 
            content: 'BC'; 
            position: fixed; 
            top: 50%; 
            left: 50%; 
            transform: translate(-50%, -50%) rotate(-45deg); 
            font-size: 300px; 
            font-weight: bold; 
            color: rgba(0, 0, 0, 0.05); 
            z-index: -1; 
            pointer-events: none; 
        }}
        .container {{ width: 100%; max-width: 210mm; margin: 0 auto; background: white; position: relative; z-index: 1; }}
        .header {{ display: flex; justify-content: space-between; margin-bottom: 20px; padding-bottom: 15px; border-bottom: 3px solid #333; }}
        .header-left {{ flex: 1; }}
        .header-right {{ flex: 1; text-align: right; }}
        .logo {{ font-size: 28px; font-weight: bold; color: #2c3e50; margin-bottom: 5px; }}
        .company-info {{ font-size: 9pt; line-height: 1.3; }}
        .company-info strong {{ font-weight: bold; }}
        .title {{ text-align: center; margin: 25px 0; }}
        .title h1 {{ font-size: 24pt; font-weight: bold; color: #2c3e50; text-transform: uppercase; letter-spacing: 2px; margin-bottom: 5px; }}
        .info-section {{ display: flex; justify-content: space-between; margin-bottom: 20px; }}
        .info-box {{ width: 48%; border: 2px solid #333; padding: 12px; background: #f9f9f9; }}
        .info-box h3 {{ font-size: 12pt; font-weight: bold; margin-bottom: 8px; color: #2c3e50; border-bottom: 2px solid #2c3e50; padding-bottom: 4px; }}
        .info-box p {{ font-size: 10pt; margin: 3px 0; }}
        .table-container {{ margin-top: 20px; }}
        table {{ width: 100%; border-collapse: collapse; }}
        table th, table td {{ border: 1px solid #333; padding: 8px; text-align: left; }}
        table th {{ background-color: #e0e0e0; font-weight: bold; font-size: 10pt; text-transform: uppercase; }}
        .right {{ text-align: right; }}
        .center {{ text-align: center; }}
        .total-row td {{ font-weight: bold; background-color: #f0f0f0; }}
        .total-row .total-label {{ text-align: right; border-right: none; }}
        .total-row .total-value {{ text-align: right; }}
        .montant-lettres {{ margin-top: 20px; font-size: 11pt; font-style: italic; }}
        .signatures {{ display: flex; justify-content: space-between; margin-top: 40px; }}
        .signature-box {{ width: 45%; text-align: center; }}
        .signature-box .title {{ font-weight: bold; font-size: 11pt; margin-bottom: 60px; text-decoration: underline; }}
        @media print {{ 
            body {{ -webkit-print-color-adjust: exact; print-color-adjust: exact; }} 
        }}
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <div class="header-left">
                <div class="logo">{escape(str(info_societe[0] or ''))}</div>
                <div class="company-info">
                    <strong>{escape(str(info_societe[2] or ''))}</strong><br>
                    {escape(str(info_societe[3] or ''))}<br>
                    {escape(str(info_societe[5] or ''))} - Tél: {escape(str(info_societe[4] or ''))}<br>
                    <strong>NIF:</strong> {escape(str(info_societe[6] or ''))} | <strong>STAT:</strong> {escape(str(info_societe[7] or ''))} | <strong>CIF:</strong> {escape(str(info_societe[8] or ''))}
                </div>
            </div>
            <div class="header-right">
                <div class="company-info" style="text-align: right;">
                    {escape(str(info_societe[1] or ''))}
                </div>
            </div>
        </div>

        <div class="title">
            <h1>BON DE COMMANDE</h1>
        </div>
        
        <div class="info-section">
            <div class="info-box">
                <h3>Fournisseur</h3>
                <p><strong>Nom:</strong> {escape(fournisseur_info['nom'])}</p>
                <p><strong>Adresse:</strong> {escape(fournisseur_info['adresse'])}</p>
                <p><strong>Tél:</strong> {escape(fournisseur_info['contact'])}</p>
            </div>
            <div class="info-box">
                <h3>Informations Commande</h3>
                <p><strong>Référence:</strong> {escape(self.entry_ref.get())}</p>
                <p><strong>Date:</strong> {datetime.now().strftime('%d/%m/%Y')}</p>
                <p><strong>État:</strong> En attente</p>
            </div>
        </div>

        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th style="width: 50px;" class="center">N°</th>
                        <th>Désignation</th>
                        <th style="width: 80px;" class="center">Unité</th>
                        <th style="width: 120px;" class="right">Quantité</th>
                        <th style="width: 120px;" class="right">Prix Unitaire</th>
                        <th style="width: 120px;" class="right">Total</th>
                    </tr>
                </thead>
                <tbody>
                    {lignes_html}
                    <tr class="total-row">
                        <td colspan="5" class="total-label">MONTANT TOTAL (Ariary)</td>
                        <td class="total-value">{self.formater_nombre(montant_total)}</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="montant-lettres">
            <strong>Montant en lettres:</strong> {total_lettres}
        </div>
        
        <div class="signatures">
            <div class="signature-box">
                <div class="title">Le Responsable</div>
            </div>
            <div class="signature-box">
                <div class="title">Le Fournisseur</div>
            </div>
        </div>
    </div>
</body>
</html>
    """
    
        # CORRECTION PRINCIPALE: Appeler la fonction d'affichage de l'aperçu
        self.afficher_apercu_impression(html_content)

    def afficher_apercu_impression(self, html_content):
        """Affiche l'aperçu avant impression"""
        import tempfile
        import webbrowser
        import os
    
        # Créer un fichier temporaire
        with tempfile.NamedTemporaryFile(mode='w', delete=False, suffix='.html', encoding='utf-8') as f:
            f.write(html_content)
            temp_path = f.name
    
        # Ouvrir dans le navigateur par défaut
        webbrowser.open('file://' + os.path.abspath(temp_path))
    
        messagebox.showinfo("Impression", 
                      "Le bon de commande a été ouvert dans votre navigateur.\n\n"
                      "Utilisez Ctrl+P ou Cmd+P pour l'imprimer.")


# --- 2. Classes de sous-fenêtres (Placeholders) ---

class PageLivrFrs(ctk.CTkFrame):
    """Fenêtre pour le Bon de Réception."""
    def __init__(self, master=None):
        super().__init__(master, fg_color="white")
        label = ctk.CTkLabel(self, text="BON DE RÉCEPTION", font=ctk.CTkFont(family="Segoe UI", size=30, weight="bold"), text_color="black")
        label.pack(pady=50, padx=50)
        
        

class PageTransfert(ctk.CTkFrame):
    """Fenêtre pour le Bon de Transfert."""
    def __init__(self, master=None):
        super().__init__(master, fg_color="white")
        label = ctk.CTkLabel(self, text="BON DE TRANSFERT", font=ctk.CTkFont(family="Segoe UI", size=30, weight="bold"), text_color="black")
        label.pack(pady=50, padx=50)

class PageSortie(ctk.CTkFrame):
    """Fenêtre pour le Bon de Sortie."""
    def __init__(self, master=None):
        super().__init__(master, fg_color="white")
        label = ctk.CTkLabel(self, text="BON DE SORTIE", font=ctk.CTkFont(family="Segoe UI", size=30, weight="bold"), text_color="black")
        label.pack(pady=50, padx=50)


# --- 3. Classe Principale (Conteneur) ---

class PageMouvementStock(ctk.CTkFrame):
    def __init__(self, master=None, iduser=1): 
        super().__init__(master)
        self.iduser = iduser 
        self.grid_rowconfigure(0, weight=1)
        self.grid_columnconfigure(1, weight=1)
        
        self.current_page = None 
        self.nav_buttons = {}    
        
        # --- Cadre de navigation ---
        self.navigation_frame = ctk.CTkFrame(self, width=150, corner_radius=0, fg_color=NAV_BAR_COLOR)
        self.navigation_frame.grid(row=0, column=0, sticky="nsew")
        self.navigation_frame.grid_rowconfigure(6, weight=1)
        
        title_label = ctk.CTkLabel(self.navigation_frame, text="Mise-à-jour", font=ctk.CTkFont(family="Segoe UI", size=18, weight="bold"), text_color="white")
        title_label.grid(row=0, column=0, padx=20, pady=20)
        
        # --- Boutons de Navigation (Lambda corrigée) ---
        
        self.pages = {
            "Bon de Commande": PageCmdFrs,      
            "Bon de Réception": PageLivrFrs,
            "Bon de Transfert": PageTransfert,
            "Bon de Sortie": PageSortie,
        }
        
        self.page_frames = {}

        for i, (name, PageClass) in enumerate(self.pages.items()):
            button_container = ctk.CTkFrame(self.navigation_frame, fg_color=INACTIVE_BUTTON_COLOR)
            button_container.grid(row=i+1, column=0, sticky="ew")
            button_container.grid_columnconfigure(1, weight=1)
            
            checkbox = ctk.CTkCheckBox(
                button_container, 
                text="", 
                width=15, 
                height=15, 
                border_width=2, 
                fg_color=NAV_BAR_COLOR, 
                hover_color=NAV_BAR_COLOR, 
                border_color="white", 
                checkmark_color="white",
                state="disabled" 
            )
            checkbox.grid(row=0, column=0, padx=(10, 5), pady=5, sticky="w")
            
            button_command = lambda p=name: self.show_page(p) 
            
            button = ctk.CTkButton(
                button_container, 
                text=name, 
                command=button_command, 
                fg_color="transparent", 
                hover_color="#006BB3", 
                text_color=INACTIVE_TEXT_COLOR,
                anchor="w",
                font=ctk.CTkFont(family="Segoe UI", size=14)
            )
            button.grid(row=0, column=1, padx=(0, 10), pady=5, sticky="ew")
            
            self.nav_buttons[name] = {
                "container": button_container,
                "button": button,
                "checkbox": checkbox
            }

        # Label "Mise-à-jour Arrêt" en bas
        stop_label_container = ctk.CTkFrame(self.navigation_frame, fg_color="transparent")
        stop_label_container.grid(row=7, column=0, padx=0, pady=(0, 20), sticky="ew")
        stop_checkbox = ctk.CTkCheckBox(stop_label_container, text="", width=15, height=15, border_width=2, fg_color=NAV_BAR_COLOR, border_color="white", checkmark_color="white")
        stop_checkbox.pack(side="left", padx=(10, 5), pady=5)
        stop_label = ctk.CTkLabel(stop_label_container, text="Mise-à-jour Arrêt", font=ctk.CTkFont(family="Segoe UI", size=14), text_color="white")
        stop_label.pack(side="left")


        # --- Zone d'affichage des pages (Content) ---
        self.content_frame = ctk.CTkFrame(self, fg_color="white")
        self.content_frame.grid(row=0, column=1, sticky="nsew", padx=0, pady=0)
        self.content_frame.grid_rowconfigure(0, weight=1)
        self.content_frame.grid_columnconfigure(0, weight=1)
        
         
        
        # Initialiser toutes les pages
        for name, PageClass in self.pages.items():
            if name == "Bon de Commande":
                # PageCmdFrs attend maintenant (master, iduser)
                frame = PageClass(master=self.content_frame, iduser=self.iduser)
            else:
                # Les autres classes attendent (master)
                frame = PageClass(master=self.content_frame)
                
            self.page_frames[name] = frame
            frame.grid(row=0, column=0, sticky="nsew") 

        self.show_page("Bon de Commande")
        
    def show_page(self, page_name):
        """Affiche la page demandée et met à jour l'apparence des boutons."""
        if self.current_page == page_name:
            return

        if self.current_page and self.current_page in self.page_frames:
            self.page_frames[self.current_page].grid_remove()
            self._update_button_visuals(self.current_page, is_active=False)

        if page_name in self.page_frames:
            self.page_frames[page_name].grid()
            self.current_page = page_name
            self._update_button_visuals(page_name, is_active=True)
    
    
    def _update_button_visuals(self, name, is_active):
        """Mettre à jour l'apparence du bouton de navigation."""
        if name in self.nav_buttons:
            widgets = self.nav_buttons[name]
            
            if is_active:
                widgets["container"].configure(fg_color=ACTIVE_BUTTON_COLOR)
                widgets["button"].configure(
                    fg_color=ACTIVE_BUTTON_COLOR, 
                    hover_color="#E0E0E0", 
                    text_color=ACTIVE_TEXT_COLOR
                )
                widgets["checkbox"].select()
                widgets["checkbox"].configure(fg_color="white", checkmark_color=NAV_BAR_COLOR)
            else:
                widgets["container"].configure(fg_color=NAV_BAR_COLOR)
                widgets["button"].configure(
                    fg_color="transparent", 
                    hover_color="#006BB3", 
                    text_color=INACTIVE_TEXT_COLOR
                )
                widgets["checkbox"].deselect()
                widgets["checkbox"].configure(fg_color=NAV_BAR_COLOR, checkmark_color="white")

    def on_double_click(self, event):
        """Gérer le double-clic sur une ligne du tableau"""
        selection = self.tree.selection()
        if not selection:
            return
    
        # Récupérer les valeurs de la ligne sélectionnée
        values = self.tree.item(selection[0])['values']
    
        if not values:
            return
    
        reference = values[1]  # RÉFÉRENCE
        type_doc = values[2]   # TYPE
    
        # Ouvrir la fenêtre appropriée selon le type de document
        if type_doc == "Bon de Réception":
            self.open_bon_reception(reference)
        elif type_doc == "Facture":
            messagebox.showinfo("Info", f"Ouverture de la facture {reference}")
        # self.open_facture(reference)
        elif type_doc == "Bon de sortie":
            messagebox.showinfo("Info", f"Ouverture du bon de sortie {reference}")
            # self.open_bon_sortie(reference)
        elif type_doc == "Avoir":
            messagebox.showinfo("Info", f"Ouverture de l'avoir {reference}")
        # self.open_avoir(reference)
        elif type_doc in ["Bon de transfert (Sortie)", "Bon de transfert (Entrée)"]:
            messagebox.showinfo("Info", f"Ouverture du bon de transfert {reference}")
            # self.open_bon_transfert(reference)

    def open_bon_reception(self, reference):
        """Ouvrir la fenêtre du bon de réception"""
        # Créer une fenêtre toplevel
        bon_window = ctk.CTkToplevel(self)
        bon_window.title(f"Bon de Réception - {reference}")
        bon_window.geometry("1400x800")
        bon_window.transient(self)
    
        # Charger la page PageLivrFrs dans cette fenêtre
        page_livrFrs = PageLivrFrs(bon_window)
    
        # Optionnel : charger automatiquement le bon avec cette référence
        # Si PageLivrFrs a une méthode pour charger un bon spécifique
        # page_livr.load_bon_by_reference(reference)  
        

# --- Point d'entrée de l'application ---
if __name__ == "__main__":
    app = ctk.CTk()
    app.title("Gestion de Mouvements de Stock")
    app.geometry("1000x700") 
    
    app.grid_rowconfigure(0, weight=1)
    app.grid_columnconfigure(0, weight=1)
    
    USER_ID = 1 
    
    main_window = PageMouvementStock(master=app, iduser=USER_ID)
    main_window.grid(row=0, column=0, sticky="nsew")
    
    app.mainloop()