import customtkinter as ctk
from tkinter import messagebox, ttk, simpledialog
import psycopg2
import json
from datetime import datetime
import calendar 
from typing import Optional, Dict, Any, List
import traceback 
import os
import sys # Ajouté pour open_file sur Linux/macOS
import textwrap # Ajouté pour le formatage du ticket de caisse

# --- NOUVELLES IMPORTATIONS POUR L'IMPRESSION ---
from reportlab.lib.pagesizes import A5, landscape
from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, Table, TableStyle, Image
from reportlab.lib.styles import getSampleStyleSheet
from reportlab.lib import colors

# --- AJOUT DU FILIGRANE "AVOIR" EN ARRIÈRE-PLAN ---
from reportlab.lib.units import inch
from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import landscape, A5
# -----------------------------------------------

# ==============================================================================
# FONCTION UTILITAIRE : CONVERSION NOMBRE EN LETTRES (FRANÇAIS)
# ==============================================================================

def nombre_en_lettres_fr(montant: float) -> str:
    """
    Convertit un montant numérique en sa représentation en lettres en français.
    Gère les Millions et les Milliers correctement.
    """
    from math import floor
    
    if montant is None: return ""
    
    try:
        montant = round(float(montant), 2)
    except ValueError:
        return ""

    unites = ["", "un", "deux", "trois", "quatre", "cinq", "six", "sept", "huit", "neuf"]
    dix_a_dixneuf = ["dix", "onze", "douze", "treize", "quatorze", "quinze", "seize"]
    dizaines = ["", "dix", "vingt", "trente", "quarante", "cinquante", "soixante", "soixante", "quatre-vingt", "quatre-vingt"]
    
    def convertir_nombre_simple(n):
        if n == 0: return ""
        texte = []
        
        # Unités (0-9)
        if n < 10:
            texte.append(unites[n])
        # 10-16
        elif n < 17:
            texte.append(dix_a_dixneuf[n - 10])
        # 17-19
        elif n < 20:
            texte.append("dix-" + unites[n - 10])
        # 20-99 (simplifié)
        elif n < 100:
            d = n // 10
            u = n % 10
            
            partie_dizaine = dizaines[d]
            if (d == 2 or d > 6) and u == 1: # 21, 71, 91 (simplifié)
                 partie_dizaine += " et"
            
            texte.append(partie_dizaine)
            if u > 0:
                if d == 7 or d == 9: # 70-79, 90-99
                    texte.append("-" + convertir_nombre_simple(n - (d * 10)))
                else:
                    texte.append("-" + unites[u])
        
        return "".join(texte).replace("--", "-") # Corrige double trait d'union

    def convertir_bloc(n):
        if n == 0: return ""
        if n < 100: return convertir_nombre_simple(n)
        
        texte = []
        c = n // 100
        r = n % 100
        
        if c == 1: texte.append("cent")
        else: 
            texte.append(convertir_nombre_simple(c) + "-cent")
            if r == 0: texte[-1] += "s" # Quatre-cents
        
        if r > 0:
            texte.append("-" + convertir_bloc(r))

        return "".join(texte).replace("un-cent", "cent") # Corrige 'un-cent' -> 'cent'
    
    entier = floor(montant)
    centimes = int(round((montant - entier) * 100))
    
    # ====================================================================
    # Gestion des blocs Millions, Milliers, Unités
    # ====================================================================
    million = entier // 1_000_000
    mille_reste = (entier % 1_000_000) // 1_000 
    reste_unites = entier % 1_000 
    
    resultat = []
    
    # 1. MILLIONS
    if million > 0:
        lettres_million = convertir_bloc(million)
        bloc_million = "million"
        if million > 1: bloc_million += "s"
        resultat.append(f"{lettres_million} {bloc_million}")
    
    # 2. MILLIERS (0 à 999)
    if mille_reste > 0:
        lettres_mille = convertir_bloc(mille_reste)
        resultat.append(f"{lettres_mille} mille")
    
    # 3. UNITÉS (0 à 999)
    if reste_unites > 0:
        resultat.append(convertir_bloc(reste_unites))
    
    # 4. CAS SPECIAL: ZÉRO
    if entier == 0 and centimes == 0 and not resultat:
        resultat.append("zéro")

    
    # Monnaie
    result_str = " ".join(resultat).strip().replace("  ", " ").replace("-", " ") 
    if not result_str: result_str = "zéro"
    
    unite_monetaire = "Ariary" # Assurez-vous que cette unité est correcte (était "Francs" dans le code précédent)
    result_str += " " + unite_monetaire
    
    # Centimes
    if centimes > 0:
        centime_lettres = convertir_bloc(centimes)
        centime_monetaire = "centimes"
        centime_lettres = centime_lettres.replace("-", " ")
        result_str += " et " + centime_lettres + " " + centime_monetaire

    return result_str.capitalize().replace(" et-", " et ")
    
# ==============================================================================

# ==============================================================================
# CLASSE UTILITAIRE : DIALOGUE DE CHOIX D'IMPRESSION (CTKTOPLEVEL)
# ==============================================================================
class SimpleDialogWithChoice(ctk.CTkToplevel):
    """Dialogue modal personnalisé pour choisir le format d'impression."""
    def __init__(self, master, title, message):
        super().__init__(master)
        self.title(title)
        self.transient(master)
        self.grab_set()
        
        self.result = None
        self.choice = ctk.StringVar(self, value="A5 PDF (Paysage)")
        
        # UI
        ctk.CTkLabel(self, text=message, wraplength=350, justify="left").pack(pady=10, padx=20)
        
        frame_radio = ctk.CTkFrame(self)
        frame_radio.pack(pady=5, padx=20, fill="x")
        
        self.radio_pdf = ctk.CTkRadioButton(frame_radio, text="A5 PDF (Paysage)", variable=self.choice, value="A5 PDF (Paysage)")
        self.radio_pdf.pack(pady=5, padx=10, anchor="w")
        
        self.radio_ticket = ctk.CTkRadioButton(frame_radio, text="Ticket de Caisse 80mm", variable=self.choice, value="Ticket 80mm")
        self.radio_ticket.pack(pady=5, padx=10, anchor="w")
        
        # Boutons
        frame_buttons = ctk.CTkFrame(self)
        frame_buttons.pack(pady=10, padx=20)
        
        ctk.CTkButton(frame_buttons, text="Annuler", command=self.cancel, fg_color="#d32f2f", hover_color="#b71c1c").pack(side="left", padx=5)
        ctk.CTkButton(frame_buttons, text="Imprimer", command=self.ok, fg_color="#00695c", hover_color="#004d40").pack(side="right", padx=5)
        
        self.wait_window(self)

    def ok(self):
        self.result = self.choice.get()
        self.grab_release()
        self.destroy()

    def cancel(self):
        self.result = None
        self.grab_release()
        self.destroy()
# ==============================================================================


# --- Configuration de CustomTkinter ---
ctk.set_appearance_mode("System")
ctk.set_default_color_theme("blue")

class PageAvoir(ctk.CTkFrame):
    """
    Fenêtre de gestion des ventes de stock.
    """
    def __init__(self, master, id_user_connecte: int, role_user="normal", **kwargs):
        super().__init__(master, **kwargs)
        self.id_user_connecte = id_user_connecte 
        self.conn: Optional[psycopg2.connection] = None
        self.article_selectionne = None
        self.detail_avoir = []
        self.index_ligne_selectionnee = None
        self.magasin_map = {}
        self.magasin_ids = []
        self.client_map = {}
        self.client_ids = []
        self.role_user = role_user
        self.infos_societe: Dict[str, Any] = {}
        self.derniere_idvente_enregistree: Optional[int] = None
    
        self.mode_modification = False
        self.idvente_charge = None
        
        self.grid_columnconfigure(0, weight=1)
        self.grid_rowconfigure(0, weight=0)
        self.grid_rowconfigure(1, weight=1)
        self.grid_rowconfigure(2, weight=0)
        self.grid_rowconfigure(3, weight=0)
        
        self.setup_ui()
        self.generer_reference()
        self.charger_magasins()
        self.charger_client()
        self.charger_infos_societe()
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
    
    # --- FONCTIONS DE FORMATAGE ET DE CALCUL DE STOCK ---
    def formater_nombre(self, nombre):
        """Formate un nombre avec séparateur de milliers (1.000.000,00)"""
        try:
            nombre = float(nombre) 
            # Utilise un formatage pour avoir des séparateurs de milliers
            formatted = "{:,.2f}".format(nombre).replace(',', '_TEMP_').replace('.', ',').replace('_TEMP_', '.')
            return formatted
        except:
            return "0,00"
    
    def parser_nombre(self, texte):
        """Convertit un nombre formaté (1.000.000,00) en float"""
        try:
            # Remplace le point de séparation des milliers et la virgule décimale par un point
            texte_clean = texte.replace('.', '').replace(',', '.')
            return float(texte_clean)
        except:
            return 0.0

    def get_article_price(self, idarticle, idunite):
        """Récupère le dernier prix unitaire pour l'article et l'unité donnés."""
        conn = self.conn   # <<< UTILISATION DE LA CONNEXION PRINCIPALE
        if not conn:
            return 0.0

        try:
            cursor = conn.cursor()

            # 1. Dernier prix dans tb_prix
            sql_prix = """
                SELECT COALESCE(prix) as prix FROM tb_prix 
                WHERE idarticle = %s AND idunite = %s 
                ORDER BY id DESC 
                LIMIT 1
            """
            cursor.execute(sql_prix, (idarticle, idunite))
            result = cursor.fetchone()

            if result and result[0] is not None and result[0] > 0:
                return float(result[0])

            # 2. Sinon, prixventeunite dans tb_unite
            sql_unite = """
                SELECT prix 
                FROM tb_unite 
                WHERE idarticle = %s AND idunite = %s 
                LIMIT 1
            """
            cursor.execute(sql_unite, (idarticle, idunite))
            result_unite = cursor.fetchone()

            if result_unite and result_unite[0] is not None:
                return float(result_unite[0])

            return 0.0

        except Exception as e:
            print("ERREUR get_article_price :", e)
            return 0.0

        finally:
            if 'cursor' in locals():
                cursor.close()

    
    def calculer_stock_article(self, idarticle, idunite_cible, idmag=None):
        """
        Calcule le stock d'un article pour un magasin donné, dans l'unité cible.
        (Méthode inchangée pour la vérification du stock)
        """
        # ... (La logique de calcul de stock reste inchangée et est omise ici pour la concision)
        conn = self.connect_db()
        if not conn:
            return 0
    
        try:
            cursor = conn.cursor()
        
            # Récupérer toutes les unités de cet article avec leur qtunite
            cursor.execute("""
                SELECT idunite, COALESCE(qtunite, 1) as qtunite
                FROM tb_unite 
                WHERE idarticle = %s
                ORDER BY idunite ASC 
            """, (idarticle,))
            unites_article = cursor.fetchall()
        
            if not unites_article:
                return 0
        
            # Créer un dictionnaire : {idunite: facteur_vers_base}
            facteurs_conversion = {}
        
            facteur_cumul = 1.0
            for i, (id_unite, qt_unite) in enumerate(unites_article):
                if i == 0:
                    facteurs_conversion[id_unite] = 1.0 
                else:
                    facteur_cumul *= qt_unite
                    facteurs_conversion[id_unite] = facteur_cumul
        
            facteur_cible = facteurs_conversion.get(idunite_cible, 1.0)
            if facteur_cible == 0:
                return 0 
        
            clause_mag = "AND idmag = %s" if idmag else ""
            params_mag = [idmag] if idmag else []
        
            stock_en_unite_base = 0
        
            for idunite_source, _ in unites_article:
                # Calcul des mouvements (Entrées - Sorties) pour cette unité source et ce magasin
                
                # Livraisons fournisseurs (ENTRÉE)
                query_livraison = f"""
                    SELECT COALESCE(SUM(qtlivrefrs), 0) 
                    FROM tb_livraisonfrs 
                    WHERE idarticle = %s AND idunite = %s {clause_mag}
                """
                cursor.execute(query_livraison, [idarticle, idunite_source] + params_mag)
                total_livraison = cursor.fetchone()[0] or 0
            
                # Ventes (SORTIE)
                query_vente = f"""
                    SELECT COALESCE(SUM(qtvente), 0) 
                    FROM tb_ventedetail 
                    WHERE idarticle = %s AND idunite = %s {clause_mag}
                """
                cursor.execute(query_vente, [idarticle, idunite_source] + params_mag)
                total_vente = cursor.fetchone()[0] or 0
                
                # Avoir (ENTREE)
                query_avoir = f"""
                    SELECT COALESCE(SUM(qtavoir), 0) 
                    FROM tb_avoirdetail 
                    WHERE idarticle = %s AND idunite = %s {clause_mag}
                """
                cursor.execute(query_avoir, [idarticle, idunite_source] + params_mag)
                total_avoir = cursor.fetchone()[0] or 0
            
                # Sorties (SORTIE)
                query_sortie = f"""
                    SELECT COALESCE(SUM(qtsortie), 0) 
                    FROM tb_sortiedetail sd 
                    INNER JOIN tb_sortie s ON sd.idsortie = s.id
                    WHERE sd.idarticle = %s AND sd.idunite = %s AND s.deleted = 0 {clause_mag}
                """
                cursor.execute(query_sortie, [idarticle, idunite_source] + params_mag)
                total_sortie = cursor.fetchone()[0] or 0
                
                # Transferts sortants (SORTIE)
                query_transfert_sortie = """
                    SELECT COALESCE(SUM(td.qttransfertsortie), 0)
                    FROM tb_transfertdetail td
                    INNER JOIN tb_transfert t ON td.reftransfert = t.reftransfert
                    WHERE td.idarticle = %s AND td.idunite = %s AND t.deleted = 0
                """
                params_transfert_sortie = [idarticle, idunite_source]
                if idmag:
                    query_transfert_sortie += " AND t.idmagsortie = %s"
                    params_transfert_sortie.append(idmag)
            
                cursor.execute(query_transfert_sortie, params_transfert_sortie)
                total_transfert_sortie = cursor.fetchone()[0] or 0
            
                # Transferts entrants (ENTRÉE)
                query_transfert_entree = """
                    SELECT COALESCE(SUM(td.qttransfertentree), 0)
                    FROM tb_transfertdetail td
                    INNER JOIN tb_transfert t ON td.reftransfert = t.reftransfert
                    WHERE td.idarticle = %s AND td.idunite = %s AND t.deleted = 0
                """
                params_transfert_entree = [idarticle, idunite_source]
                if idmag:
                    query_transfert_entree += " AND t.idmagentree = %s"
                    params_transfert_entree.append(idmag)
            
                cursor.execute(query_transfert_entree, params_transfert_entree)
                total_transfert_entree = cursor.fetchone()[0] or 0
            
                stock_unite_source = (total_livraison + total_avoir + total_transfert_entree - 
                                     total_vente - total_sortie - total_transfert_sortie)
            
                facteur_vers_base = facteurs_conversion.get(idunite_source, 1.0)
                stock_en_unite_base += stock_unite_source * facteur_vers_base
        
            stock_final = stock_en_unite_base / facteur_cible
        
            return stock_final
        
        except Exception as e:
            # traceback.print_exc()
            return 0
        finally:
            if 'cursor' in locals() and cursor: cursor.close()
            if conn: conn.close()
    # --------------------------------------------------------------------------

    def setup_ui(self):
        """Configure l'interface utilisateur de la page de vente."""
    
        # --- Frame principale d'en-tête (Lot 1) ---
        header_frame = ctk.CTkFrame(self)
        header_frame.grid(row=0, column=0, padx=10, pady=10, sticky="ew")
        header_frame.grid_columnconfigure((0, 1, 2, 3, 4, 5, 6, 7), weight=1)
    
        # Référence
        ctk.CTkLabel(header_frame, text="N° Avoir:").grid(row=0, column=0, padx=5, pady=5, sticky="w")
        self.entry_ref_avoir = ctk.CTkEntry(header_frame, width=150)
        self.entry_ref_avoir.grid(row=0, column=1, padx=5, pady=5, sticky="w")
        self.entry_ref_avoir.configure(state="readonly")
    
        # Date
        ctk.CTkLabel(header_frame, text="Date Avoir:").grid(row=0, column=2, padx=5, pady=5, sticky="w")
        self.entry_date_avoir = ctk.CTkEntry(header_frame, width=150)
        self.entry_date_avoir.grid(row=0, column=3, padx=5, pady=5, sticky="w")
        self.entry_date_avoir.insert(0, datetime.now().strftime("%d/%m/%Y"))
    
        # Magasin
        ctk.CTkLabel(header_frame, text="Magasin de:").grid(row=0, column=4, padx=5, pady=5, sticky="w")
        self.combo_magasin = ctk.CTkComboBox(header_frame, width=200, values=["Chargement..."])
        self.combo_magasin.grid(row=0, column=5, padx=5, pady=5, sticky="w")
    
         # Client
        # Champ Entry pour client
        self.entry_client = ctk.CTkEntry(header_frame, width=200, placeholder_text="Client...")
        self.entry_client.grid(row=0, column=7, padx=5, pady=5, sticky="w")

        # Bouton loupe
        self.btn_search_client = ctk.CTkButton(
        header_frame,
        text="🔎",
        width=40,
        command=self.open_recherche_client
        )
        self.btn_search_client.grid(row=0, column=8, padx=2, pady=5, sticky="w")


        # Bouton Charger facture
        btn_charger_bs = ctk.CTkButton(header_frame, text="📂 Charger Facture", 
                                    command=self.ouvrir_recherche_sortie, width=130,
                                    fg_color="#1976d2", hover_color="#1565c0")
        btn_charger_bs.grid(row=1, column=7, padx=5, pady=5, sticky="ew")
    
        # Motif
        ctk.CTkLabel(header_frame, text="Désignation:").grid(row=1, column=0, padx=5, pady=5, sticky="w")
        self.entry_designation = ctk.CTkEntry(header_frame, width=750)
        self.entry_designation.grid(row=1, column=1, columnspan=7, padx=5, pady=5, sticky="w")

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
        ctk.CTkLabel(detail_frame, text="Quantité Avoir:").grid(row=0, column=2, padx=5, pady=5, sticky="w")
        self.entry_qtavoir = ctk.CTkEntry(detail_frame, width=100)
        self.entry_qtavoir.grid(row=1, column=2, padx=5, pady=5, sticky="ew")
        
        # Unité
        ctk.CTkLabel(detail_frame, text="Unité:").grid(row=0, column=3, padx=5, pady=5, sticky="w")
        self.entry_unite = ctk.CTkEntry(detail_frame, width=100)
        self.entry_unite.grid(row=1, column=3, padx=5, pady=5, sticky="ew")
        self.entry_unite.configure(state="readonly")
        
        # Prix Unitaire
        ctk.CTkLabel(detail_frame, text="Prix Unitaire:").grid(row=0, column=4, padx=5, pady=5, sticky="w")
        self.entry_prixunit = ctk.CTkEntry(detail_frame, width=100)
        self.entry_prixunit.configure(state="readonly")
        self.entry_prixunit.grid(row=1, column=4, padx=5, pady=5, sticky="ew")

        
        # Boutons d'action
        self.btn_ajouter = ctk.CTkButton(detail_frame, text="➕ Ajouter", command=self.valider_detail, 
                                        fg_color="#2e7d32", hover_color="#1b5e20")
        self.btn_ajouter.grid(row=1, column=5, padx=5, pady=5, sticky="w")
        
        self.btn_annuler_mod = ctk.CTkButton(detail_frame, text="✖️ Annuler Modif.", command=self.reset_detail_form, 
                                            fg_color="#d32f2f", hover_color="#b71c1c", state="disabled")
        self.btn_annuler_mod.grid(row=1, column=6, padx=5, pady=5, sticky="w")
        
        

        # --- Treeview pour les Détails (Lot 3) ---
        tree_frame = ctk.CTkFrame(self)
        tree_frame.grid(row=2, column=0, padx=10, pady=(0, 10), sticky="nsew")
        tree_frame.grid_columnconfigure(0, weight=1)
        tree_frame.grid_rowconfigure(0, weight=1)
        
        style = ttk.Style()
        style.theme_use("clam") 
        style.configure("Treeview", rowheight=25, font=('Arial', 10), background=self._apply_appearance_mode(ctk.get_appearance_mode()))
        style.configure("Treeview.Heading", font=('Arial', 10, 'bold'))

        # Colonnes AJOUTÉES: "Montant"
        colonnes = ("ID_Article", "ID_Unite", "ID_Magasin", "Code Article", "Désignation", "Magasin", "Unité", "Prix Unitaire", "Quantité Avoir", "Montant")
        self.tree_details = ttk.Treeview(tree_frame, columns=colonnes, show='headings')
        
        for col in colonnes:
            self.tree_details.heading(col, text=col.replace('_', ' ').title())
            if "ID" in col:
                 self.tree_details.column(col, width=0, stretch=False) 
            elif "Quantité" in col or "Prix" in col:
                 self.tree_details.column(col, width=100, anchor='e')
            elif "Montant" in col: 
                 self.tree_details.column(col, width=120, anchor='e')
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

        # --------------------------------------------------------------------------
        # --- NOUVEAU: Frame des Totaux (Lot 4) ---
        # --------------------------------------------------------------------------
        totals_frame = ctk.CTkFrame(self)
        totals_frame.grid(row=3, column=0, padx=10, pady=(0, 10), sticky="ew")
        totals_frame.grid_columnconfigure(0, weight=1) # Pour le total en lettres
        totals_frame.grid_columnconfigure(1, weight=0) # Pour le total général (à droite)

        # Total en Lettres (Côté gauche)
        ctk.CTkLabel(totals_frame, text="Total en Lettres:", font=ctk.CTkFont(weight="bold")).grid(row=0, column=0, padx=5, pady=5, sticky="nw")
        self.label_total_lettres = ctk.CTkLabel(totals_frame, text="Zéro Ariary", wraplength=700, justify="left", 
                                                font=ctk.CTkFont(slant="italic"))
        self.label_total_lettres.grid(row=1, column=0, padx=5, pady=5, sticky="ew")
        
        # Total Général (Côté droit)
        right_total_frame = ctk.CTkFrame(totals_frame, fg_color="transparent")
        right_total_frame.grid(row=0, column=1, rowspan=2, padx=5, pady=5, sticky="ne")
        
        ctk.CTkLabel(right_total_frame, text="TOTAL GÉNÉRAL:", font=ctk.CTkFont(size=14, weight="bold"), fg_color="transparent").pack(side="left", padx=5, pady=5)
        self.label_total_general = ctk.CTkLabel(right_total_frame, text=self.formater_nombre(0.0), 
                                               font=ctk.CTkFont(size=14, weight="bold"), text_color="#d32f2f")
        self.label_total_general.pack(side="right", padx=5, pady=5)
        # --------------------------------------------------------------------------

        # --- Frame de Boutons (Lot 5 - Anciennement Lot 4) ---
        btn_action_frame = ctk.CTkFrame(self)
        btn_action_frame.grid(row=4, column=0, padx=10, pady=10, sticky="ew")
        btn_action_frame.grid_columnconfigure((0, 1, 2), weight=1)
        
        self.btn_supprimer_ligne = ctk.CTkButton(btn_action_frame, text="🗑️ Supprimer Ligne", command=self.supprimer_detail, 
                                                 fg_color="#d32f2f", hover_color="#b71c1c")
        self.btn_supprimer_ligne.grid(row=0, column=1, padx=5, pady=5, sticky="w")
        
               
        self.btn_valider_modif = ctk.CTkButton(
            btn_action_frame,
            text="✅ Valider Modif",
            command=self.enregistrer_avoir,  # ✅ CORRECTION
            fg_color="#2e7d32", 
            hover_color="#1b5e20",
            state="disabled"
        )
        self.btn_valider_modif.grid(row=0, column=2, padx=5, pady=5, sticky="w")

        self.btn_imprimer = ctk.CTkButton(btn_action_frame, text="🖨️ Imprimer Facture", command=self.open_impression_dialogue, 
                                          fg_color="#00695c", hover_color="#004d40", state="disabled")
        self.btn_imprimer.grid(row=0, column=2, padx=5, pady=5, sticky="ew") 
        
        self.btn_enregistrer = ctk.CTkButton(btn_action_frame, text="💾 Enregistrer la Facture", command=self.enregistrer_avoir, 
                                             font=ctk.CTkFont(size=13, weight="bold"))
        self.btn_enregistrer.grid(row=0, column=3, padx=5, pady=5, sticky="e")

        # Initialisation des totaux
        self.calculer_totaux()
        
    def sort_tree(self, tree, col):
        """
        Trie les éléments du treeview selon la colonne `col`.
        - Pour 'Montant Total' : tri numérique
        - Pour 'Date' : tri par date au format JJ/MM/AAAA
        Cette fonction bascule l'ordre à chaque appel.
        """
        # Récupérer les enfants
        children = tree.get_children('')
        # Construire liste (valeur, item)
        vals = []
        for k in children:
            v = tree.set(k, col)
            vals.append((v, k))
        reverse = getattr(tree, "_sort_reverse_" + col, False)
        # Détection type
        try:
            if col == "Montant Total":
                def keyfn(x):
                    txt = x[0] or "0"
                    txt = txt.replace(" ", "").replace(".", "").replace(",", ".")
                    return float(txt) if txt not in ("", None) else 0.0
            elif col == "Date":
                from datetime import datetime as _dt
                def keyfn(x):
                    txt = x[0] or ""
                    try:
                        return _dt.strptime(txt, "%d/%m/%Y")
                    except:
                        return _dt.min
            else:
                def keyfn(x):
                    return x[0] or ""
            vals.sort(key=keyfn, reverse=reverse)
        except Exception:
            # fallback to string sort
            vals.sort(reverse=reverse)
        # reposition
        for index, (_, item) in enumerate(vals):
            tree.move(item, '', index)
        # toggle reverse flag
        setattr(tree, "_sort_reverse_" + col, not reverse)

    def open_recherche_client(self):
        fen = ctk.CTkToplevel(self)
        fen.title("Rechercher un client")
        fen.geometry("500x400")
        fen.grab_set()

        frame = ctk.CTkFrame(fen)
        frame.pack(fill="both", expand=True, padx=10, pady=10)

        ctk.CTkLabel(frame, text="Rechercher un client :", font=ctk.CTkFont(size=14, weight="bold")).pack(pady=5)

        entry_search = ctk.CTkEntry(frame, placeholder_text="Nom client...")
        entry_search.pack(fill="x", padx=5, pady=5)

        # Treeview
        colonnes = ("ID", "Nom Client")
        tree = ttk.Treeview(frame, columns=colonnes, show="headings", height=10)

        tree.heading("ID", text="ID")
        tree.heading("Nom Client", text="Nom Client")

        tree.column("ID", width=0, stretch=False)
        tree.column("Nom Client", width=300, anchor="w")

        tree.pack(fill="both", expand=True, pady=5)

        # Fonction chargement
        def charger_clients(filtre=""):
            for item in tree.get_children():
                tree.delete(item)

            conn = self.connect_db()
            if not conn:
                return

            try:
                cursor = conn.cursor()
                sql = """
                SELECT idclient, nomcli 
                FROM tb_client 
                WHERE deleted = 0 AND nomcli ILIKE %s
                ORDER BY nomcli
            """
                cursor.execute(sql, (f"%{filtre}%",))
                for idc, nom in cursor.fetchall():
                    tree.insert("", "end", values=(idc, nom))
            finally:
                cursor.close()
                conn.close()

        # Recherche en direct
        entry_search.bind("<KeyRelease>", lambda e: charger_clients(entry_search.get()))

        # Double clic : renvoie nom dans l’Entry principal
        def valider_selection():
            sel = tree.selection()
            if not sel:
                return
            values = tree.item(sel[0])["values"]
            nom_client = values[1]

            self.entry_client.delete(0, "end")
            self.entry_client.insert(0, nom_client)

            fen.destroy()

        tree.bind("<Double-1>", lambda e: valider_selection())

        charger_clients()

    
    def calculer_totaux(self):
        """Calcule le montant total de la facture et le met à jour dans l'interface."""
        total_general = 0.0
        
        for detail in self.detail_avoir:
            # S'assurer que le calcul utilise les clés présentes dans `self.detail_vente`
            montant_ligne = detail.get('qtvente', 0) * detail.get('prixunit', 0)
            total_general += montant_ligne
            
        total_lettres = nombre_en_lettres_fr(total_general)
        
        # Mise à jour des labels
        self.label_total_general.configure(text=self.formater_nombre(total_general))
        self.label_total_lettres.configure(text=total_lettres)
    # ---------------------------------------------------------------
    
    # --- MÉTHODES DE CHARGEMENT DE DONNÉES ---

    def generer_reference(self):
        # ... (Méthode inchangée)
        conn = self.connect_db()
        if not conn: return
        
        try:
            cursor = conn.cursor()
            
            annee = datetime.now().year
            
            sql_max_id = """
                SELECT refavoir 
                FROM tb_avoir 
                WHERE EXTRACT(YEAR FROM dateregistre) = %s 
                ORDER BY id DESC 
                LIMIT 1
            """
            cursor.execute(sql_max_id, (annee,))
            derniere_ref = cursor.fetchone()

            nouveau_numero = 1
            if derniere_ref:
                parts = derniere_ref[0].split('-')
                if len(parts) == 3 and parts[1] == 'AV':
                     try:
                        partie_num = parts[-1]
                        nouveau_numero = int(partie_num) + 1
                     except ValueError:
                         nouveau_numero = 1
                
            nouvelle_ref = f"{annee}-AV-{nouveau_numero:05d}"
            
            self.entry_ref_avoir.configure(state="normal")
            self.entry_ref_avoir.delete(0, "end")
            self.entry_ref_avoir.insert(0, nouvelle_ref)
            self.entry_ref_avoir.configure(state="readonly")
            
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur lors de la génération de la référence: {str(e)}")
        finally:
            conn.close()

    def charger_magasins(self):
        # ... (Méthode inchangée)
        conn = self.connect_db()
        if not conn: return

        try:
            cursor = conn.cursor()
            cursor.execute("SELECT idmag, designationmag FROM tb_magasin WHERE deleted = 0 ORDER BY designationmag")
            magasins = cursor.fetchall()
        
            self.magasin_map = {nom: id_ for id_, nom in magasins}
            self.magasin_ids = [id_ for id_, nom in magasins]
            noms_magasins = list(self.magasin_map.keys())
        
            self.combo_magasin.configure(values=noms_magasins)
            if noms_magasins:
                self.combo_magasin.set(noms_magasins[0])
            else:
                self.combo_magasin.set("Aucun magasin trouvé")
            
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur lors du chargement des magasins: {str(e)}")
        finally:
            conn.close()

    def charger_client(self):
        """Charge uniquement la map des clients pour la recherche"""
        conn = self.connect_db()
        if not conn: return

        try:
            cursor = conn.cursor()
            cursor.execute("SELECT idclient, nomcli FROM tb_client WHERE deleted = 0 ORDER BY nomcli")
            clients = cursor.fetchall()
    
            self.client_map = {nom: id_ for id_, nom in clients}
            self.client_ids = [id_ for id_, nom in clients]
        
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur lors du chargement des clients: {str(e)}")
        finally:
            conn.close()


    def charger_infos_societe(self):
        # ... (Méthode inchangée)
        conn = self.connect_db()
        if not conn: return
    
        try:
            cursor = conn.cursor()
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

   
    # --- FONCTION DE RECHERCHE D'ARTICLE ---

    def open_recherche_article(self):
        # ... (Méthode inchangée)
        if self.index_ligne_selectionnee is not None:
            messagebox.showwarning("Attention", "Veuillez d'abord valider ou annuler la modification de la ligne en cours")
            return
            
        fenetre_recherche = ctk.CTkToplevel(self)
        fenetre_recherche.title("Rechercher un article pour la sortie")
        fenetre_recherche.geometry("1000x600")
        fenetre_recherche.grab_set()

        main_frame = ctk.CTkFrame(fenetre_recherche)
        main_frame.pack(fill="both", expand=True, padx=10, pady=10)

        titre = ctk.CTkLabel(main_frame, text="Sélectionner un article", 
                             font=ctk.CTkFont(size=16, weight="bold"))
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
        
        colonnes = ("ID_Article", "ID_Unite", "Code", "Désignation", "Unité", "Prix Unitaire", "Stock") 
        tree = ttk.Treeview(tree_frame, columns=colonnes, show='headings', height=15)
        
        style = ttk.Style()
        style.configure("Treeview", rowheight=25, font=('Arial', 10))
        style.configure("Treeview.Heading", font=('Arial', 10, 'bold'))

        tree.heading("ID_Article", text="ID_Article")
        tree.heading("ID_Unite", text="ID_Unite")
        tree.heading("Code", text="Code")
        tree.heading("Désignation", text="Désignation")
        tree.heading("Prix Unitaire", text="Prix Unitaire")
        tree.heading("Unité", text="Unité")
        tree.heading("Stock", text="Stock Actuel (Total)") 
        
        tree.column("ID_Article", width=0, stretch=False)
        tree.column("ID_Unite", width=0, stretch=False)
        tree.column("Code", width=150, anchor='w')
        tree.column("Désignation", width=400, anchor='w')
        tree.column("Prix Unitaire", width=120, anchor='e')
        tree.column("Unité", width=100, anchor='w')
        tree.column("Stock", width=150, anchor='e') 

        scrollbar = ctk.CTkScrollbar(tree_frame, command=tree.yview)
        tree.configure(yscrollcommand=scrollbar.set)
        
        tree.pack(side="left", fill="both", expand=True)
        scrollbar.pack(side="right", fill="y")
        
        label_count = ctk.CTkLabel(main_frame, text="Nombre d'articles/unités : 0")
        label_count.pack(pady=(0, 5))
        
        # Fonctions de chargement et de recherche
        def charger_articles(terme_recherche=""):
            """Charge les articles (une ligne par unité) en fonction du terme de recherche et calcule le stock."""
            for item in tree.get_children():
                tree.delete(item)
            
            conn = self.connect_db()
            if not conn:
                return

            try:
                cursor = conn.cursor()
                sql = """
                    SELECT 
                        a.idarticle, a.designation, u.idunite, u.codearticle, u.designationunite
                    FROM tb_article a 
                    INNER JOIN tb_unite u ON a.idarticle = u.idarticle
                    WHERE a.deleted = 0 
                      AND (u.codearticle ILIKE %s OR a.designation ILIKE %s)
                    ORDER BY a.designation, u.idunite
                """
                
                terme = f"%{terme_recherche.strip()}%"
                cursor.execute(sql, (terme, terme))
                resultats = cursor.fetchall()
                
                designationmag = self.combo_magasin.get()
                idmag_selectionne = self.magasin_map.get(designationmag)
                
                count = 0
                for row in resultats:
                    idarticle, designation, idunite, codearticle, designationunite = row
                    
                    stock_actuel = self.calculer_stock_article(idarticle, idunite, idmag_selectionne)
                    
                    prix = self.get_article_price(idarticle, idunite)

                    tree.insert('', 'end', values=(
                        idarticle,
                        idunite,
                        codearticle,
                        designation,
                        designationunite,
                        self.formater_nombre(prix),
                        self.formater_nombre(stock_actuel)
                    ))
                    count += 1
                
                label_count.configure(text=f"Nombre d'articles/unités : {count}")
            except Exception as e:
                messagebox.showerror("Erreur", f"Erreur lors du chargement des articles: {str(e)}")
            finally:
                if 'cursor' in locals() and cursor: cursor.close()
                if conn: conn.close()

        def rechercher(*args):
            """Appelé lors de la frappe dans le champ de recherche."""
            charger_articles(entry_search.get())

        entry_search.bind('<KeyRelease>', rechercher)
        
        # Fonction de validation de sélection
        def valider_selection():
            selection = tree.selection()
            if not selection:
                messagebox.showwarning("Attention", "Veuillez sélectionner un article")
                return

            values = tree.item(selection[0])['values']
            stock_texte = values[5]
            stock_reel = self.parser_nombre(stock_texte)
            
            if stock_reel <= 0:
                if not messagebox.askyesno("Stock faible", 
                                          f"Le stock disponible ({stock_texte} {values[4]}) est nul ou négatif. Voulez-vous continuer la sortie?"):
                    return

            article_data = {
                'idarticle': values[0],
                'nom_article': values[3],
                'idunite': values[1],
                'nom_unite': values[4],
                'code_article': values[2]
            }
            
            last_price = self.get_article_price(article_data['idarticle'], article_data['idunite'])
            article_data['prixunit'] = last_price 
            
            fenetre_recherche.destroy()
            self.on_article_selected(article_data)

        tree.bind('<Double-Button-1>', lambda e: valider_selection())
        
        # Boutons
        btn_frame = ctk.CTkFrame(main_frame)
        btn_frame.pack(fill="x")
        
        btn_annuler = ctk.CTkButton(btn_frame, text="❌ Annuler", command=fenetre_recherche.destroy, 
                                    fg_color="#d32f2f", hover_color="#b71c1c")
        btn_annuler.pack(side="left", padx=5, pady=5)
        
        btn_valider = ctk.CTkButton(btn_frame, text="✅ Valider", command=valider_selection, 
                                    fg_color="#2e7d32", hover_color="#1b5e20")
        btn_valider.pack(side="right", padx=5, pady=5)
        
        # Chargement initial
        charger_articles()

    # --- GESTION DU DÉTAIL DE SORTIE (MÉTHODES CORRIGÉES) ---

    def on_article_selected(self, article_data):
        """Met à jour les champs après sélection d'un article."""
        self.article_selectionne = article_data

        # Affichage Article
        designation_complete = f"[{article_data.get('code_article', 'N/A')}] {article_data['nom_article']}"
        self.entry_article.configure(state="normal")
        self.entry_article.delete(0, "end")
        self.entry_article.insert(0, designation_complete)
        self.entry_article.configure(state="readonly")

        # Affichage unité
        self.entry_unite.configure(state="normal")
        self.entry_unite.delete(0, "end")
        self.entry_unite.insert(0, article_data['nom_unite'])
        self.entry_unite.configure(state="readonly")

        # --- Récupération prix unitaire automatique ---
        prix = article_data.get("prixunit", 0.0)
        prix_format = self.formater_nombre(prix)

        self.entry_prixunit.configure(state="normal")
        self.entry_prixunit.delete(0, "end")
        self.entry_prixunit.insert(0, prix_format)

        # Protection du prix selon rôle utilisateur
        if self.role_user != "admin":
            self.entry_prixunit.configure(state="readonly")
        else:
            self.entry_prixunit.configure(state="normal")


        # Remise à zéro de la quantité + focus
        self.entry_qtavoir.delete(0, "end")
        self.entry_qtavoir.focus_set()


    def valider_detail(self):
        """Ajoute ou modifie un article dans la liste temporaire."""
        if not self.article_selectionne:
            messagebox.showwarning("Attention", "Veuillez d'abord sélectionner un article.")
            return

        qtvente_texte = self.entry_qtavoir.get().strip()
        prixunit_texte = self.entry_prixunit.get().strip()
    
        # Validation de la quantité
        try:
            qtvente = self.parser_nombre(qtvente_texte)
            if qtvente < 0:  # Permettre 0 pour exclure un article de l'avoir
                raise ValueError
        except:
            messagebox.showerror("Erreur de Saisie", "La quantité d'avoir doit être un nombre positif ou nul.")
            return
    
        # Validation du prix
        try:
            prixunit = self.parser_nombre(prixunit_texte)
            if prixunit < 0:
                raise ValueError
        except:
            messagebox.showerror("Erreur de Saisie", "Le prix unitaire doit être un nombre positif ou nul.")
            return

        # Vérification du magasin
        designationmag = self.combo_magasin.get().strip()
        if not designationmag or designationmag == "Chargement..." or designationmag == "Aucun magasin trouvé":
            messagebox.showerror("Erreur", "Veuillez sélectionner un magasin valide.")
            return
        idmag = self.magasin_map.get(designationmag)
        if not idmag:
            messagebox.showerror("Erreur", "Le magasin sélectionné n'est pas valide.")
            return

        # Préparation des données
        nouveau_detail = {
            'idmag': idmag,
            'designationmag': designationmag,
            'idarticle': self.article_selectionne['idarticle'],
            'code_article': self.article_selectionne.get('code_article', 'N/A'),
            'nom_article': self.article_selectionne['nom_article'],
            'idunite': self.article_selectionne['idunite'],
            'nom_unite': self.article_selectionne['nom_unite'],
            'qtvente': qtvente,
            'prixunit': prixunit
        }
    
        # Si on a une quantité d'origine (dans le cas d'une transformation de facture en avoir)
        if self.index_ligne_selectionnee is not None:
            detail_original = self.detail_avoir[self.index_ligne_selectionnee]
            if 'qt_origine' in detail_original:
                nouveau_detail['qt_origine'] = detail_original['qt_origine']
            
                # Vérifier que la quantité d'avoir ne dépasse pas la quantité originale
                if qtvente > detail_original['qt_origine']:
                    messagebox.showerror(
                        "Erreur", 
                        f"La quantité d'avoir ({self.formater_nombre(qtvente)}) ne peut pas dépasser "
                        f"la quantité vendue ({self.formater_nombre(detail_original['qt_origine'])})."
                    )
                    return
    
        # MODE MODIFICATION : Mise à jour de la ligne existante
        if self.index_ligne_selectionnee is not None:
            # Mettre à jour dans la liste
            self.detail_avoir[self.index_ligne_selectionnee] = nouveau_detail
        
            # Mettre à jour dans le Treeview
            selected_item = self.tree_details.selection()[0]
            self.tree_details.item(selected_item, values=self.format_detail_for_treeview(nouveau_detail))
        
            messagebox.showinfo("Succès", "Ligne modifiée avec succès.")
    
        # MODE AJOUT : Ajout d'une nouvelle ligne
        else:
            self.detail_avoir.append(nouveau_detail)
            self.tree_details.insert('', 'end', values=self.format_detail_for_treeview(nouveau_detail))
            messagebox.showinfo("Succès", "Article ajouté avec succès.")

        # Recalculer les totaux
        self.calculer_totaux()
    
        # Réinitialiser le formulaire
        self.reset_detail_form()
        
    def format_detail_for_treeview(self, detail):
        """Formate le dictionnaire de détail en tuple pour l'affichage dans le Treeview."""
        
        # Calcul du montant total
        montant_total = detail['qtvente'] * detail['prixunit'] # <<< CALCUL DU MONTANT
        
        # Colonnes: ("ID_Article", "ID_Unite", "ID_Magasin", "Code Article", "Désignation", "Magasin", "Unité", "Prix Unitaire", "Quantité Vente", "Montant")
        return (
            detail['idarticle'],
            detail['idunite'],
            detail['idmag'],
            detail.get('code_article', 'N/A'),
            detail['nom_article'],
            detail['designationmag'],
            detail['nom_unite'],
            self.formater_nombre(detail['prixunit']),
            self.formater_nombre(detail['qtvente']),
            self.formater_nombre(montant_total) # <<< AJOUT DU MONTANT FORMATÉ
        )
        
    def charger_details_treeview(self):
        # ... (Méthode inchangée, utilise format_detail_for_treeview)
        for item in self.tree_details.get_children():
            self.tree_details.delete(item)
            
        for detail in self.detail_avoir:
            self.tree_details.insert('', 'end', values=self.format_detail_for_treeview(detail))
            
        self.calculer_totaux() # <<< AJOUT/CORRECTION : Recalculer le total après chargement

    def modifier_detail(self, event):
        """Permet la modification d'une ligne de détail pour ajuster les quantités d'avoir."""
    
        # Vérifier si on est en mode consultation (avoir déjà enregistré)
        if self.mode_modification:
            messagebox.showwarning("Attention", "Impossible de modifier en mode consultation.")
            return
    
        selected_item = self.tree_details.focus()
        if not selected_item:
            return

        try:
            # Récupérer l'index de la ligne sélectionnée
            self.index_ligne_selectionnee = self.tree_details.index(selected_item)
            detail = self.detail_avoir[self.index_ligne_selectionnee]
        except IndexError:
            messagebox.showerror("Erreur", "Erreur lors de la récupération de la ligne.")
            self.reset_detail_form()
            return
    
        # Préparer les données de l'article pour la modification
        self.article_selectionne = {
            'idarticle': detail['idarticle'],
            'nom_article': detail['nom_article'],
            'idunite': detail['idunite'],
            'nom_unite': detail['nom_unite'],
            'code_article': detail.get('code_article', 'N/A'),
            'prixunit': detail.get('prixunit', 0.0)  # Ajouter le prix
        }
    
        # Afficher l'article
        designation_complete = f"[{detail.get('code_article', 'N/A')}] {detail['nom_article']}"
    
        self.entry_article.configure(state="normal")
        self.entry_article.delete(0, "end")
        self.entry_article.insert(0, designation_complete)
        self.entry_article.configure(state="readonly")
    
        # Afficher l'unité
        self.entry_unite.configure(state="normal")
        self.entry_unite.delete(0, "end")
        self.entry_unite.insert(0, detail['nom_unite'])
        self.entry_unite.configure(state="readonly")
    
        # Afficher le prix unitaire
        self.entry_prixunit.configure(state="normal")
        self.entry_prixunit.delete(0, "end")
        self.entry_prixunit.insert(0, self.formater_nombre(detail.get('prixunit', 0.0)))
    
        # Rendre le prix modifiable seulement pour les admins
        if self.role_user != "admin":
            self.entry_prixunit.configure(state="readonly")
    
        # Afficher la quantité (MODIFIABLE)
        self.entry_qtavoir.delete(0, "end")
        self.entry_qtavoir.insert(0, self.formater_nombre(detail['qtvente']))
    
        # Changer l'apparence du bouton pour indiquer le mode modification
        self.btn_ajouter.configure(
            text="✔️ Valider Modif.", 
            fg_color="#ff8f00", 
            hover_color="#e65100"
        )
        self.btn_annuler_mod.configure(state="normal")
    
        # Mettre le focus sur le champ quantité pour faciliter la modification
        self.entry_qtavoir.focus_set()

    def supprimer_detail(self):
        """Supprime la ligne sélectionnée dans le Treeview et dans self.detail_vente."""
        selected_item = self.tree_details.focus()
        if not selected_item:
            messagebox.showwarning("Attention", "Veuillez sélectionner une ligne à supprimer.")
            return

        if self.mode_modification:
             messagebox.showwarning("Attention", "Impossible de modifier/supprimer une ligne en mode consultation.")
             return

        try:
            # Récupérer l'index dans la liste detail_vente
            index_a_supprimer = self.tree_details.index(selected_item)
            
            # Suppression dans la liste
            del self.detail_avoir[index_a_supprimer]
            
            # Suppression dans le Treeview
            self.tree_details.delete(selected_item)
            
            # Mise à jour des totaux
            self.calculer_totaux() # <<< AJOUT/CORRECTION
            
            messagebox.showinfo("Succès", "Ligne supprimée avec succès.")

        except Exception as e:
            messagebox.showerror("Erreur de suppression", f"Impossible de supprimer la ligne: {str(e)}")
            
        self.reset_detail_form()

    def reset_detail_form(self):
        # ... (Méthode inchangée)
        self.article_selectionne = None
        self.index_ligne_selectionnee = None
        
        self.entry_article.configure(state="normal")
        self.entry_article.delete(0, "end")
        self.entry_article.configure(state="readonly")
        
        self.entry_unite.configure(state="normal")
        self.entry_unite.delete(0, "end")
        self.entry_unite.configure(state="readonly")
        
        self.entry_prixunit.configure(state="normal")
        self.entry_prixunit.delete(0, "end")
        
        self.entry_qtavoir.delete(0, "end")
        
        self.btn_ajouter.configure(text="➕ Ajouter", fg_color="#2e7d32", hover_color="#1b5e20")
        self.btn_annuler_mod.configure(state="disabled")

    # Extrait de la méthode ouvrir_recherche_sortie(self):

    def ouvrir_recherche_sortie(self):
        """Ouvre une fenêtre modale pour rechercher et sélectionner une facture (vente) à transformer en avoir."""
        
        # Le reste de votre logique (vérification des détails)
        if self.detail_avoir:
            if not messagebox.askyesno("Attention", "Le formulaire d'avoir actuel contient des lignes non enregistrées. Voulez-vous continuer et les effacer ?"):
                return
        
        # 1. Création de la fenêtre modale (Toplevel)
        fenetre = ctk.CTkToplevel(self)
        fenetre.title("Rechercher une Facture (Vente)")
        fenetre.geometry("1000x600")
        fenetre.grab_set()

        main_frame = ctk.CTkFrame(fenetre)
        main_frame.pack(fill="both", expand=True, padx=10, pady=10)

        ctk.CTkLabel(main_frame, text="Sélectionner une Facture pour Avoir", 
                     font=ctk.CTkFont(size=16, weight="bold")).pack(pady=(0, 10))

        # 2. Zone de recherche
        search_frame = ctk.CTkFrame(main_frame)
        search_frame.pack(fill="x", pady=(0, 10))

        ctk.CTkLabel(search_frame, text="🔍 Référence ou Client:").pack(side="left", padx=5)
        entry_search = ctk.CTkEntry(search_frame, placeholder_text="Référence ou Nom Client...", width=300)
        entry_search.pack(side="left", padx=5, fill="x", expand=True)

        # 3. Conteneur du Treeview
        tree_frame = ctk.CTkFrame(main_frame)
        tree_frame.pack(fill="both", expand=True, pady=(0, 10))
        
        # 4. 🛑 CORRECTION 3: Configuration des styles pour le ttk.Treeview (Visibilité)
        style = ttk.Style()
        style.theme_use("clam") 
        style.configure("Treeview", 
                        font=('Arial', 10), 
                        background="#2A2D2E", 
                        foreground="white",    
                        fieldbackground="#2A2D2E",
                        rowheight=25) 
        style.configure("Treeview.Heading", 
                        font=('Arial', 10, 'bold'), 
                        background="#3A3D3E", 
                        foreground="white", 
                        relief="flat")
        style.map('Treeview', 
                  background=[('selected', '#1F6AA5')]) 

        # 5. Création du Treeview
        colonnes = ("ID", "Ref Vente", "Date", "Client", "Montant Total", "Description", "Utilisateur")
        tree = ttk.Treeview(tree_frame, columns=colonnes, show='headings', height=15, selectmode='browse') 
        
        # Configuration des colonnes
        tree.heading("ID", text="ID")
        tree.heading("Ref Vente", text="N° Facture")
        tree.heading("Date", text="Date")
        tree.heading("Client", text="Client")
        tree.heading("Montant Total", text="Montant Total")
        tree.heading("Description", text="Description")
        tree.heading("Utilisateur", text="Utilisateur")

        tree.column("ID", width=0, stretch=False)
        tree.column("Ref Vente", width=120, anchor='w')
        tree.column("Date", width=100, anchor='center')
        tree.column("Client", width=150, anchor='w')
        tree.column("Montant Total", width=120, anchor='e')
        tree.column("Description", width=250, anchor='w')
        tree.column("Utilisateur", width=100, anchor='w')

        # Scrollbar
        scrollbar = ctk.CTkScrollbar(tree_frame, command=tree.yview)
        tree.configure(yscrollcommand=scrollbar.set)
        
        tree.pack(side="left", fill="both", expand=True)
        scrollbar.pack(side="right", fill="y")
        
        # 6. Fonction de chargement des données
        def charger_factures(filtre=""):
            for item in tree.get_children():
                tree.delete(item)

            conn = self.connect_db()
            if not conn: return

            try:
                cursor = conn.cursor()
                sql = """
                    SELECT 
                        v.id, v.refvente, v.dateregistre, c.nomcli, 
                        (SELECT SUM(vd.qtvente * vd.prixunit) FROM tb_ventedetail vd WHERE vd.idvente = v.id) AS montant_total,
                        v.description, u.nomuser
                    FROM tb_vente v
                    LEFT JOIN tb_client c ON v.idclient = c.idclient
                    LEFT JOIN tb_users u ON v.iduser = u.iduser
                    WHERE v.deleted = 0 
                        AND (v.refvente ILIKE %s OR v.description ILIKE %s OR c.nomcli ILIKE %s)
                    ORDER BY v.dateregistre DESC
                """
                filtre_like = f"%{filtre}%"
                cursor.execute(sql, (filtre_like, filtre_like, filtre_like))
                
                for row in cursor.fetchall():
                    id_vente, ref_vente, date_vente, nom_cli, montant_total, description, nom_user = row
                    
                    date_str = date_vente.strftime("%d/%m/%Y") if date_vente else "N/A"
                    montant_str = self.formater_nombre(montant_total or 0.0)
                    
                    tree.insert('', 'end', values=(
                        id_vente, ref_vente, date_str, nom_cli or "N/A",
                        montant_str, description or "", nom_user or "Inconnu"
                    ))
            except Exception as e:
                messagebox.showerror("Erreur SQL", f"Erreur lors du chargement des factures: {str(e)}")
            finally:
                if 'cursor' in locals(): cursor.close()
                if conn: conn.close()
        
        # Lier la recherche
        entry_search.bind('<KeyRelease>', lambda e: charger_factures(entry_search.get()))
        
        # 7. Fonction de validation
        def valider_selection():
            selection = tree.selection()
            if not selection:
                messagebox.showwarning("Attention", "Veuillez sélectionner une facture")
                return

            values = tree.item(selection[0])['values']
            idvente = values[0]
            fenetre.destroy()
            self.charger_vente_modification(idvente) 

        # Binding du double-clic
        tree.bind('<Double-Button-1>', lambda e: valider_selection())

        # 8. Boutons
        btn_frame = ctk.CTkFrame(main_frame)
        btn_frame.pack(fill="x")
        
        ctk.CTkButton(btn_frame, text="❌ Annuler", command=fenetre.destroy, 
                      fg_color="#d32f2f", hover_color="#b71c1c").pack(side="left", padx=5, pady=5)
        
        ctk.CTkButton(btn_frame, text="✅ Charger la Facture", command=valider_selection, 
                      fg_color="#2e7d32", hover_color="#1b5e20").pack(side="right", padx=5, pady=5)

        # 9. Chargement initial
        charger_factures()

    def charger_vente_modification(self, idvente: int):
        """Charge les données d'une vente existante pour CRÉER UN AVOIR.
        Active le bouton 'Enregistrer' pour l'enregistrement de l'Avoir.
        """
        conn = self.connect_db()
        if not conn: return

        try:
            cursor = conn.cursor()
    
            # 1. Requête pour l'en-tête de la Vente
            sql_vente = """
                SELECT 
                    v.id, v.refvente, v.dateregistre, v.description, c.nomcli, v.idclient
                FROM tb_vente v
                LEFT JOIN tb_client c ON v.idclient = c.idclient
                WHERE v.id = %s
            """
            cursor.execute(sql_vente, (idvente,))
            vente = cursor.fetchone()
            if not vente:
                messagebox.showerror("Erreur", "Facture introuvable.")
                return
        
            # 2. Requête pour les détails de la Vente
            sql_details = """
                SELECT 
                    vd.idmag, m.designationmag, vd.idarticle, u.codearticle, a.designation, 
                    vd.idunite, u.designationunite, vd.qtvente, vd.prixunit
                FROM tb_ventedetail vd
                INNER JOIN tb_article a ON vd.idarticle = a.idarticle
                INNER JOIN tb_unite u ON vd.idunite = u.idunite
                INNER JOIN tb_magasin m ON vd.idmag = m.idmag
                WHERE vd.idvente = %s
            """
            cursor.execute(sql_details, (idvente,))
            details = cursor.fetchall()
    
            # 3. Préparation du formulaire pour l'Avoir
            self.reset_form(reset_imprimer=False)
    
            self.mode_modification = False  # Nouvel avoir, pas une consultation
            self.idvente_charge = idvente
            self.derniere_idvente_enregistree = None

            # 4. Génération d'une nouvelle référence d'Avoir
            self.generer_reference()
    
            # Remplir les champs avec les données de la vente
            date_vente_str = vente[2].strftime("%d/%m/%Y")
            client_nom = vente[4] or "Client Inconnu"
    
            self.entry_date_avoir.configure(state="normal")
            self.entry_date_avoir.delete(0, "end")
            self.entry_date_avoir.insert(0, date_vente_str)
    
            self.entry_client.configure(state="normal")
            self.entry_client.delete(0, "end")
            self.entry_client.insert(0, client_nom)
    
            self.entry_designation.configure(state="normal")
            self.entry_designation.delete(0, "end")
            self.entry_designation.insert(0, f"Avoir pour Facture {vente[1]} - {vente[3] or ''}".strip())
    
            # 5. Charger les détails de la Vente comme base pour l'Avoir
            self.detail_avoir = []
            for detail in details:
                idmag, designationmag, idarticle, codearticle, designation, idunite, designationunite, qtvente, prixunit = detail
                self.detail_avoir.append({
                    'idmag': idmag,
                    'designationmag': designationmag,
                    'idarticle': idarticle,
                    'code_article': codearticle,
                    'nom_article': designation,
                    'idunite': idunite,
                    'nom_unite': designationunite,
                    'qtvente': qtvente,
                    'prixunit': prixunit,
                    'qt_origine': qtvente  # Quantité originale pour validation
                })
            self.charger_details_treeview()
    
            # 6. Configuration des états pour le Mode Création Avoir
        
            # Permettre la modification de la désignation et de la date
            self.entry_designation.configure(state="normal")
            self.entry_date_avoir.configure(state="normal")
        
            # Verrouiller le client (l'avoir est pour le client initial)
            self.entry_client.configure(state="readonly")
            self.combo_magasin.configure(state="disabled")
    
            # Désactiver l'ajout de nouveaux articles
            self.btn_recherche_article.configure(state="disabled")
            self.btn_ajouter.configure(state="normal")  # Permet de valider les modifications
        
            # Permettre la suppression et la modification des lignes
            self.btn_supprimer_ligne.configure(state="normal")
    
            # ✅ ACTIVATION DU BOUTON D'ENREGISTREMENT
            self.btn_enregistrer.configure(
                state="normal", 
                text="💾 Enregistrer l'Avoir",
                command=self.enregistrer_avoir  # Important : utiliser enregistrer_avoir et non enregistrer_facture
            )
        
            # Désactiver l'impression (pas encore enregistré)
            self.btn_imprimer.configure(state="disabled")
        
            # Désactiver le bouton "Valider Modif" car on utilise "Enregistrer l'Avoir"
            self.btn_valider_modif.configure(state="disabled")
    
            # Mise à jour des totaux
            self.calculer_totaux()
    
            messagebox.showinfo(
                "Chargement réussi", 
                f"Facture {vente[1]} chargée pour transformation en Avoir.\n\n"
                f"Instructions :\n"
                f"• Double-cliquez sur une ligne pour modifier la quantité\n"
                f"• Mettez la quantité à 0 pour exclure un article\n"
                f"• Cliquez sur 'Enregistrer l'Avoir' pour finaliser"
            )
    
        except Exception as e:
            self.btn_enregistrer.configure(state="disabled")
            messagebox.showerror("Erreur", f"Erreur lors du chargement: {str(e)}")
            traceback.print_exc()
        finally:
            if 'cursor' in locals() and cursor:
                cursor.close()
            if conn:
                conn.close()
    def charger_avoir_modification(self, idavoir: int):
        """Charge un avoir existant en mode consultation pour impression"""
        conn = self.connect_db()
        if not conn: return
    
        try:
            cursor = conn.cursor()
        
            # Récupérer l'en-tête de l'avoir
            sql_avoir = """
            SELECT 
                a.id, a.refavoir, a.dateregistre, a.observation, c.nomcli, a.idclient
            FROM tb_avoir a
            LEFT JOIN tb_client c ON a.idclient = c.idclient
            WHERE a.id = %s
        """
            cursor.execute(sql_avoir, (idavoir,))
            avoir = cursor.fetchone()
        
            if not avoir:
                messagebox.showerror("Erreur", "Avoir introuvable.")
                return
        
            # Récupérer les détails de l'avoir
            sql_details = """
            SELECT 
                ad.idmag, m.designationmag, ad.idarticle, u.codearticle, a.designation, 
                ad.idunite, u.designationunite, ad.qtavoir, ad.prixunit
            FROM tb_avoirdetail ad
            INNER JOIN tb_article a ON ad.idarticle = a.idarticle
            INNER JOIN tb_unite u ON ad.idunite = u.idunite
            INNER JOIN tb_magasin m ON ad.idmag = m.idmag
            WHERE ad.idavoir = %s
        """
            cursor.execute(sql_details, (idavoir,))
            details = cursor.fetchall()
        
            # Réinitialiser le formulaire
            self.reset_form(reset_imprimer=False)
        
            # Passer en mode consultation
            self.mode_modification = True
            self.idvente_charge = idavoir
            self.derniere_idvente_enregistree = idavoir
        
            # Remplir les champs d'en-tête
            self.entry_ref_avoir.configure(state="normal")
            self.entry_ref_avoir.delete(0, "end")
            self.entry_ref_avoir.insert(0, avoir[1])
            self.entry_ref_avoir.configure(state="readonly")
        
            self.entry_date_avoir.delete(0, "end")
            self.entry_date_avoir.insert(0, avoir[2].strftime("%d/%m/%Y"))
        
            client_nom = avoir[4] or "Client Inconnu"
            self.entry_client.delete(0, "end")
            self.entry_client.insert(0, client_nom)
        
            self.entry_designation.delete(0, "end")
            self.entry_designation.insert(0, avoir[3] or "")
        
            # Charger les détails
            self.detail_avoir = []
            for detail in details:
                idmag, designationmag, idarticle, codearticle, designation, idunite, designationunite, qtavoir, prixunit = detail
                self.detail_avoir.append({
                    'idmag': idmag,
                    'designationmag': designationmag,
                    'idarticle': idarticle,
                    'code_article': codearticle,
                    'nom_article': designation,
                    'idunite': idunite,
                    'nom_unite': designationunite,
                    'qtvente': qtavoir,  # Note: on utilise 'qtvente' pour la compatibilité
                    'prixunit': prixunit
                })
        
            self.charger_details_treeview()
        
            # Verrouiller les champs
            self.entry_designation.configure(state="readonly")
            self.entry_date_avoir.configure(state="readonly")
            self.entry_client.configure(state="readonly")
            self.combo_magasin.configure(state="disabled")
        
            # Activer l'impression, désactiver l'édition
            self.btn_imprimer.configure(state="normal")
            self.btn_enregistrer.configure(state="disabled", text="📄 Mode Consultation")
            self.btn_recherche_article.configure(state="disabled")
            self.btn_ajouter.configure(state="disabled")
            self.btn_supprimer_ligne.configure(state="disabled")
        
            messagebox.showinfo("Chargement réussi", 
                f"Avoir {avoir[1]} chargé.\nVous pouvez maintenant l'imprimer.\n\n"
                f"Note: L'enregistrement et la modification sont désactivés en mode consultation.")
        
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur lors du chargement de l'avoir: {str(e)}")
        finally:
            if 'cursor' in locals() and cursor: cursor.close()
            if conn: conn.close()
    
    def charger_vente_pour_transformation(self, idvente: int):
        """
        Charge une facture de vente pour la transformer en Avoir.
        Seules les quantités sont modifiables. Article / Unité / Prix sont verrouillés.
        """
        conn = self.connect_db()
        if not conn: return

        try:
            cursor = conn.cursor()

            # Récupère en-tête vente
            sql_vente = """
                SELECT v.id, v.refvente, v.dateregistre, v.description, c.nomcli, v.idclient
                FROM tb_vente v
                LEFT JOIN tb_client c ON v.idclient = c.idclient
                WHERE v.id = %s
            """
            cursor.execute(sql_vente, (idvente,))
            vente = cursor.fetchone()
            if not vente:
                messagebox.showerror("Erreur", "Facture introuvable.")
                return

            # Récupère lignes de la vente
            sql_details = """
                SELECT vd.idmag, m.designationmag, vd.idarticle, u.codearticle, a.designation,
                       vd.idunite, u.designationunite, vd.qtvente, vd.prixunit
                FROM tb_ventedetail vd
                INNER JOIN tb_article a ON vd.idarticle = a.idarticle
                INNER JOIN tb_unite u ON vd.idunite = u.idunite
                INNER JOIN tb_magasin m ON vd.idmag = m.idmag
                WHERE vd.idvente = %s
            """
            cursor.execute(sql_details, (idvente,))
            details = cursor.fetchall()

            # Reset form (nouveau avoir)
            self.reset_form(reset_imprimer=True)

            # Générer nouvelle référence Avoir
            self.generer_reference()

            # Pré-remplir en-tête (date = aujourd'hui, description = "Avoir de <refvente>")
            self.mode_modification = False
            self.idvente_charge = idvente

            self.entry_date_avoir.delete(0, "end")
            self.entry_date_avoir.insert(0, datetime.now().strftime("%d/%m/%Y"))

            client_nom = vente[4] or "Client Inconnu"
            self.entry_client.delete(0, "end")
            self.entry_client.insert(0, client_nom)

            self.entry_designation.delete(0, "end")
            self.entry_designation.insert(0, f"Avoir de la facture {vente[1]}")

            # Charger les détails : copier les articles avec mêmes prix/unité; quantités modifiables
            self.detail_avoir = []
            for detail in details:
                idmag, designationmag, idarticle, codearticle, designation, idunite, designationunite, qtvente, prixunit = detail
                self.detail_avoir.append({
                    'idmag': idmag,
                    'designationmag': designationmag,
                    'idarticle': idarticle,
                    'code_article': codearticle,
                    'nom_article': designation,
                    'idunite': idunite,
                    'nom_unite': designationunite,
                    'qtvente': qtvente,      # qté initiale = qté vendue (modifiable)
                    'qt_origine': qtvente,   # conserve la qté d'origine pour validation
                    'prixunit': prixunit
                })

            # Afficher dans treeview
            self.charger_details_treeview()

            # Verrouiller éléments non éditables
            self.entry_designation.configure(state="normal")
            self.entry_designation.delete(0, "end")
            self.entry_designation.insert(0, f"Avoir généré depuis {vente[1]}")
            self.entry_designation.configure(state="readonly")

            self.entry_date_avoir.configure(state="normal")
            self.entry_date_avoir.configure(state="readonly")

            # UI : activer enregistrement Avoir, permettre édition des qt seulement
            self.btn_imprimer.configure(state="disabled")
            # attacher enregistrement d'avoir
            try:
                self.btn_enregistrer.configure(state="normal", text="💾 Enregistrer Avoir", command=self.enregistrer_avoir)
            except Exception:
                # si btn_enregistrer non encore créé ou différent, ignore
                pass
            try:
                self.btn_recherche_article.configure(state="disabled")  # interdiction d'ajouter de nouveaux articles
            except Exception:
                pass
            try:
                self.btn_ajouter.configure(state="normal")
            except Exception:
                pass
            try:
                self.btn_supprimer_ligne.configure(state="normal")
            except Exception:
                pass

            messagebox.showinfo("Transformation", f"Facture {vente[1]} chargée pour transformation en Avoir.\nVous ne pouvez modifier que les quantités.")
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur lors du chargement pour transformation: {e}")
        finally:
            if 'cursor' in locals() and cursor: cursor.close()
            if conn: conn.close()


    def enregistrer_avoir(self):
        """
        Enregistre l'Avoir dans tb_avoir et tb_avoirdetail.
        Met à jour automatiquement tb_pmtavoir après l'enregistrement.
        Vérifie que qtavoir <= qt vendue pour chaque ligne.
        Lance automatiquement l'impression A5 après l'enregistrement.
        """
        if not self.detail_avoir:
            messagebox.showwarning("Attention", "Aucun détail à enregistrer.")
            return

        # Filtrer les lignes avec quantité > 0
        details_a_enregistrer = [d for d in self.detail_avoir if d.get('qtvente', 0) > 0]

        if not details_a_enregistrer:
            messagebox.showwarning("Attention", "Aucun article avec une quantité supérieure à 0.")
            return

        # Validation quantités
        for d in details_a_enregistrer:
            if d.get('qtvente', 0) < 0:
                messagebox.showerror("Erreur", "Les quantités doivent être positives.")
                return
            if 'qt_origine' in d and d.get('qtvente', 0) > d.get('qt_origine', 0):
                messagebox.showerror(
                    "Erreur", 
                    f"La quantité d'avoir pour '{d['nom_article']}' "
                    f"({self.formater_nombre(d['qtvente'])}) ne peut pas excéder "
                    f"la quantité vendue ({self.formater_nombre(d['qt_origine'])})."
                )
                return

        conn = self.connect_db()
        if not conn: return

        ref_avoir = self.entry_ref_avoir.get()
        date_str = self.entry_date_avoir.get()
        description = self.entry_designation.get().strip()
        client_nom = self.entry_client.get().strip()

        idclient = self.client_map.get(client_nom)
        if not idclient:
            # Créer le client si nécessaire
            try:
                cur = conn.cursor()
                cur.execute(
                    "INSERT INTO tb_client (nomcli, deleted) VALUES (%s, 0) RETURNING idclient", 
                    (client_nom,)
                )
                idclient = cur.fetchone()[0]
                conn.commit()
                self.client_map[client_nom] = idclient
                cur.close()
            except Exception as e:
                conn.rollback()
                messagebox.showerror("Erreur", f"Impossible d'ajouter le client: {e}")
                return

        try:
            cur = conn.cursor()
            try:
                datereg = datetime.strptime(date_str, "%d/%m/%Y").date()
            except ValueError:
                messagebox.showerror("Erreur de Date", "Format de date invalide (JJ/MM/AAAA).")
                return

            # ✅ CALCUL DU MONTANT TOTAL DE L'AVOIR
            montant_total_avoir = sum(d['qtvente'] * d['prixunit'] for d in details_a_enregistrer)
    
            # ✅ DATE DU JOUR POUR dateavoir
            date_avoir_aujourd_hui = datetime.now().date()

            # ✅ Insérer en-tête avoir avec mtavoir et dateavoir
            sql_avoir = """
                INSERT INTO tb_avoir (refavoir, dateregistre, dateavoir, observation, iduser, idclient, mtavoir, deleted)
                VALUES (%s, %s, %s, %s, %s, %s, %s, 0) RETURNING id
            """
            cur.execute(sql_avoir, (
                ref_avoir, 
                datereg, 
                date_avoir_aujourd_hui,
                description, 
                self.id_user_connecte, 
                idclient,
                montant_total_avoir
            ))
            id_avoir = cur.fetchone()[0]

            # Détails (seulement les lignes avec qtvente > 0)
            sql_detail = """
                INSERT INTO tb_avoirdetail (idavoir, idmag, idarticle, idunite, qtavoir, prixunit)
                VALUES (%s, %s, %s, %s, %s, %s)
            """
            params = []
            for d in details_a_enregistrer:
                params.append((
                    id_avoir, 
                    d['idmag'], 
                    d['idarticle'], 
                    d['idunite'], 
                    d['qtvente'],
                    d['prixunit']
                ))

            cur.executemany(sql_detail, params)

            # ✅ RÉCUPÉRATION DE refvente SI EXISTANT (depuis idvente_charge)
            refvente_associe = None
            if self.idvente_charge:
                sql_refvente = "SELECT refvente FROM tb_vente WHERE id = %s"
                cur.execute(sql_refvente, (self.idvente_charge,))
                result_refvente = cur.fetchone()
                if result_refvente:
                    refvente_associe = result_refvente[0]

            # ✅ RÉCUPÉRATION DES INFORMATIONS DE PAIEMENT DEPUIS tb_pmtfacture
            # On recherche le dernier paiement associé à la facture (si existe)
            id_banque = None
            idmode = None
        
            if refvente_associe:
                sql_pmt_facture = """
                    SELECT id_banque, idmode 
                    FROM tb_pmtfacture 
                    WHERE refvente = %s 
                    ORDER BY id DESC 
                    LIMIT 1
                """
                cur.execute(sql_pmt_facture, (refvente_associe,))
                result_pmt = cur.fetchone()
                if result_pmt:
                    id_banque = result_pmt[0]
                    idmode = result_pmt[1]

            # ✅ INSERTION DANS tb_pmtavoir
            observation_pmt = f"AVOIR - {client_nom} - {ref_avoir}"
        
            sql_pmtavoir = """
                INSERT INTO tb_pmtavoir 
                (datepmt, mtpaye, observation, idtypeoperation, deleted, refvente, refavoir, id_banque, iduser, idmode)
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            """
            cur.execute(sql_pmtavoir, (
                date_avoir_aujourd_hui,      # datepmt
                montant_total_avoir,          # mtpaye
                observation_pmt,              # observation
                2,                            # idtypeoperation (DEFAULT = 2)
                0,                            # deleted (DEFAULT = 0)
                refvente_associe,             # refvente (peut être NULL)
                ref_avoir,                    # refavoir
                id_banque,                    # id_banque (peut être NULL)
                self.id_user_connecte,        # iduser
                idmode                        # idmode (peut être NULL)
            ))

            conn.commit()
    
            messagebox.showinfo(
                "Succès", 
                f"Avoir N°{ref_avoir} enregistré avec succès.\n"
                f"Montant total: {self.formater_nombre(montant_total_avoir)}\n"
                f"Paiement enregistré dans tb_pmtavoir."
            )
    
            # Mettre à jour l'interface
            self.derniere_idvente_enregistree = id_avoir
            self.btn_imprimer.configure(state="normal")
            self.btn_enregistrer.configure(state="disabled", text="✔️ Avoir Enregistré")
    
            # 🖨️ LANCER L'IMPRESSION AUTOMATIQUE DE L'AVOIR EN A5
            self.imprimer_avoir_automatique(id_avoir)
    
        except Exception as e:
            if conn: 
                conn.rollback()
            messagebox.showerror("Erreur BD", f"Erreur lors de l'enregistrement : {e}")
            traceback.print_exc()
        finally:
            if 'cur' in locals(): 
                cur.close()
            if conn: 
                conn.close()

    def imprimer_avoir_automatique(self, idavoir: int):
        """
        Lance automatiquement l'impression de l'avoir au format A5 PDF.
        Appelée automatiquement après l'enregistrement de l'avoir.
        """
        data = self.get_data_avoir(idavoir)
        if not data:
            messagebox.showwarning("Attention", "Impossible de récupérer les données de l'avoir pour l'impression.")
            return

        try:
            filename = f"Avoir_{data['avoir']['refavoir']}_{datetime.now().strftime('%Y%m%d_%H%M%S')}.pdf"
            self.generate_pdf_a5_avoir(data, filename)
            self.open_file(filename)
            messagebox.showinfo("Impression", f"L'avoir a été imprimé : {filename}")
        except Exception as e:
            messagebox.showerror("Erreur d'impression", f"Erreur lors de l'impression de l'avoir : {e}")
            traceback.print_exc()


    def get_data_avoir(self, idavoir: int) -> Optional[Dict[str, Any]]:
        """
        Récupère les données d'un avoir depuis la base de données pour l'impression.
        Similaire à get_data_facture mais pour les avoirs.
        """
        conn = self.connect_db()
        if not conn: 
            return None
    
        data = {
            'societe': self.infos_societe,
            'avoir': None,
            'utilisateur': None,
            'client': None,
            'details': []
        }
    
        try:
            cursor = conn.cursor()
        
            # ✅ Récupérer l'en-tête de l'avoir avec dateavoir
            sql_avoir = """
                SELECT 
                    a.refavoir, a.dateregistre, a.dateavoir, a.observation, a.mtavoir,
                    u.nomuser, u.prenomuser, 
                    c.nomcli, c.adressecli, c.contactcli
                FROM tb_avoir a
                INNER JOIN tb_users u ON a.iduser = u.iduser
                LEFT JOIN tb_client c ON a.idclient = c.idclient
                WHERE a.id = %s
            """
            cursor.execute(sql_avoir, (idavoir,))
            avoir_result = cursor.fetchone()
        
            if not avoir_result:
                messagebox.showerror("Erreur", "Avoir introuvable.")
                return None
        
            # ✅ Formatage de la date d'avoir
            dateavoir_str = avoir_result[2].strftime("%d/%m/%Y") if avoir_result[2] else datetime.now().strftime("%d/%m/%Y")
        
            data['avoir'] = {
                'refavoir': avoir_result[0],
                'dateregistre': avoir_result[1].strftime("%d/%m/%Y"),
                'dateavoir': dateavoir_str,  # ✅ Date d'avoir
                'observation': avoir_result[3] or '',
                'mtavoir': avoir_result[4] or 0.0,  # ✅ Montant total
            }
            data['utilisateur'] = {
                'nomuser': avoir_result[5],
                'prenomuser': avoir_result[6]
            }
            data['client'] = {
                'nomcli': avoir_result[7] or 'Client Inconnu',
                'adressecli': avoir_result[8] or 'N/A',
                'contactcli': avoir_result[9] or 'N/A',
            }
        
            # Récupérer les détails de l'avoir
            sql_details = """
                SELECT 
                    u.codearticle, a.designation, u.designationunite, 
                    ad.qtavoir, ad.prixunit, 
                    ad.qtavoir * ad.prixunit as montant_total, 
                    m.designationmag
                FROM tb_avoirdetail ad
                INNER JOIN tb_article a ON ad.idarticle = a.idarticle
                INNER JOIN tb_unite u ON ad.idunite = u.idunite
                INNER JOIN tb_magasin m ON ad.idmag = m.idmag
                WHERE ad.idavoir = %s
                ORDER BY a.designation
            """
            cursor.execute(sql_details, (idavoir,))
            data['details'] = cursor.fetchall()
        
            return data
        
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur lors de la récupération des données de l'avoir: {str(e)}")
            traceback.print_exc()
            return None
        finally:
            if 'cursor' in locals() and cursor: 
                cursor.close()
            if conn: 
                conn.close()



    def generate_pdf_a5_avoir(self, data: Dict[str, Any], filename: str):
        """
        Génère un PDF au format A5 Paysage pour un AVOIR.
        Format identique à la facture mais affiche les quantités d'avoir.
        Avec filigrane "AVOIR" en arrière-plan.
        """
        doc = SimpleDocTemplate(
            filename, 
            pagesize=landscape(A5), 
            leftMargin=30, 
            rightMargin=30, 
            topMargin=30, 
            bottomMargin=20
        )
        styles = getSampleStyleSheet()
        elements = []
    
        societe = data['societe']
        client = data['client']
    
        
    
        class AvoirCanvasWithWatermark(canvas.Canvas):
            """Canvas personnalisé pour ajouter le filigrane AVOIR en arrière-plan"""
        
            def __init__(self, *args, **kwargs):
                canvas.Canvas.__init__(self, *args, **kwargs)
        
            def showPage(self):
                # Sauvegarder l'état actuel du canvas
                self.saveState()
            
                # Configuration du filigrane
                page_width = landscape(A5)[0]  # Largeur A5 paysage (~595 points)
                page_height = landscape(A5)[1]  # Hauteur A5 paysage (~420 points)
            
                # Position au centre de la page
                center_x = page_width / 2
                center_y = page_height / 2
            
                # Configuration de la police et de la couleur
                self.setFont("Helvetica-Bold", 120)
                self.setFillColorRGB(0.85, 0.85, 0.85)  # Gris clair (85%)
            
                # Se déplacer au centre de la page
                self.translate(center_x, center_y)
            
                # Rotation de -30° (vers la gauche)
                self.rotate(-30)
            
                # Dessiner le texte "AVOIR" centré
                self.drawCentredString(0, 0, "AVOIR")
            
                # Restaurer l'état du canvas
                self.restoreState()
            
                # Appeler la méthode parente pour afficher la page
                canvas.Canvas.showPage(self)
    
        # Création du document avec le canvas personnalisé
        doc = SimpleDocTemplate(
            filename, 
            pagesize=landscape(A5), 
            leftMargin=30, 
            rightMargin=30, 
            topMargin=30, 
            bottomMargin=20
        )
    
        styles = getSampleStyleSheet()
        elements = []
    
        societe = data['societe']
        client = data['client']
    
        # --- 1. EN-TÊTE SOCIÉTÉ ---
        style_header = styles['Normal']
        style_header.fontSize = 9
        style_header.alignment = 1  # Centré
    
        adresse = societe.get('adressesociete', 'N/A')
        ville = societe.get('villesociete', 'N/A')
        contact = societe.get('contactsociete', 'N/A')
        infos_legales = f"NIF: {societe.get('nifsociete', 'N/A')} | STAT: {societe.get('statsociete', 'N/A')} | CIF: {societe.get('cifsociete', 'N/A')}"
    
        elements.append(Paragraph(f"<b>{societe.get('nomsociete', 'NOM SOCIÉTÉ')}</b>", styles['Heading3']))
        elements.append(Paragraph(f"{adresse}, {ville} - Tél: {contact}", style_header))
        elements.append(Paragraph(infos_legales, style_header))
        elements.append(Spacer(1, 15))

        # --- 2. TITRE (AVOIR) ---
        style_titre = styles['Heading1']
        style_titre.textColor = colors.HexColor("#d32f2f")  # Rouge
        p_titre = Paragraph(f"<b>AVOIR N°{data['avoir']['refavoir']}</b>", style_titre)
        elements.append(p_titre)
        elements.append(Spacer(1, 12))
    
        # --- 3. Informations générales ---
        data_header = [
            ['Date Facture:', data['avoir']['dateregistre'], 'Client:', client['nomcli']],
            ['Date Avoir:', data['avoir']['dateavoir'], 'Contact Client:', client['contactcli']],
            ['Adresse Client:', client['adressecli'], 'Utilisateur:', f"{data['utilisateur']['prenomuser']} {data['utilisateur']['nomuser']}"],
            ['Désignation:', data['avoir']['observation'], '', ''],
        ]
    
        table_header = Table(data_header, colWidths=[100, 200, 100, 200])
        table_header.setStyle(TableStyle([
            ('FONTNAME', (0, 0), (-1, -1), 'Helvetica'),
            ('FONTNAME', (0, 0), (0, -1), 'Helvetica-Bold'),
            ('FONTNAME', (2, 0), (2, -1), 'Helvetica-Bold'),
            ('ALIGN', (0, 0), (-1, -1), 'LEFT'),
            ('VALIGN', (0, 0), (-1, -1), 'MIDDLE'),
            ('SPAN', (0, -1), (-1, -1)),
        ]))
        elements.append(table_header)
        elements.append(Spacer(1, 20))
    
        # --- 4. Tableau des Détails de l'AVOIR ---
        data_details = [
            ['Code Article', 'Désignation', 'Unité', 'Qté Avoir', 'Prix Unitaire', 'Montant Total']
        ]
    
        total_general = 0.0
    
        for code, designation, unite, qtavoir, prixunit, montant_total, magasin in data['details']:
            data_details.append([
                code,
                designation,
                unite,
                self.formater_nombre(qtavoir),
                self.formater_nombre(prixunit),
                self.formater_nombre(montant_total)
            ])
            total_general += montant_total
    
        formatted_total = self.formater_nombre(total_general)

        # Ligne Total
        data_details.append(['', '', 'Total Général', '', '', formatted_total])

        table_details = Table(data_details, colWidths=[65, 180, 70, 70, 70, 70])
        table_details.setStyle(TableStyle([
            ('BACKGROUND', (0, 0), (-1, 0), colors.HexColor("#ffcccc")),
            ('GRID', (0, 0), (-1, -1), 0.5, colors.black),
            ('FONTNAME', (0, 0), (-1, -1), 'Helvetica'),
            ('ALIGN', (3, 1), (5, -1), 'RIGHT'),
            ('FONTNAME', (2, -1), (5, -1), 'Helvetica-Bold'),
            ('SPAN', (0, -1), (2, -1)),
            ('BACKGROUND', (0, -1), (-1, -1), colors.HexColor("#ffe6e6")),
        ]))
        elements.append(table_details)
    
        # --- 5. TOTAL EN LETTRES ---
        total_lettres = nombre_en_lettres_fr(total_general)
    
        style_total_lettres = styles['Normal']
        style_total_lettres.fontSize = 10
        style_total_lettres.alignment = 0
        elements.append(Spacer(1, 10))
        elements.append(Paragraph(
            f"<b>Arrêté le présent avoir à la somme de :</b> <i>{total_lettres}</i>", 
            style_total_lettres
        ))
    
        elements.append(Spacer(1, 30))

        # --- 6. SIGNATURE DU RESPONSABLE ---
        style_signature = styles['Normal']
        style_signature.fontSize = 10
        style_signature.alignment = 2
    
        elements.append(Paragraph("<b>Le Responsable</b>", style_signature))
        elements.append(Spacer(1, 50))
        elements.append(Paragraph("Signature: __________________________", style_signature))

        try:
            # ✅ UTILISER LE CANVAS PERSONNALISÉ AVEC FILIGRANE
            doc.build(elements, canvasmaker=AvoirCanvasWithWatermark)
        except Exception as e:
            messagebox.showerror("Erreur d'impression", f"Erreur lors de la construction du document : {str(e)}")
            raise

    
    def reset_form(self, reset_imprimer=True):
        # ... (Méthode inchangée)
        self.detail_avoir = []
        self.article_selectionne = None
        self.index_ligne_selectionnee = None
        
        self.mode_modification = False
        self.idvente_charge = None
        
        self.entry_date_avoir.configure(state="normal")
        self.entry_date_avoir.delete(0, "end")
        self.entry_date_avoir.insert(0, datetime.now().strftime("%d/%m/%Y"))
        
        self.entry_designation.configure(state="normal")
        self.entry_designation.delete(0, "end")
        
        self.entry_client.configure(state="normal")
        self.entry_client.delete(0, "end")
        self.combo_magasin.configure(state="normal")
        
        self.charger_magasins()
        self.charger_client()
        self.generer_reference()
        self.reset_detail_form()
        
        for item in self.tree_details.get_children():
            self.tree_details.delete(item)
            
        self.btn_enregistrer.configure(state="normal", text="💾 Enregistrer la Facture")
        self.btn_recherche_article.configure(state="normal")
        self.btn_ajouter.configure(state="normal")
        self.btn_supprimer_ligne.configure(state="normal")
        
        if reset_imprimer:
            self.btn_imprimer.configure(state="disabled")
            self.derniere_idvente_enregistree = None
            
    def nouveau_facture(self):
        # ... (Méthode inchangée)
        self.reset_form(reset_imprimer=True)
        messagebox.showinfo("Nouveau", "Nouveau formulaire de facture prêt.")

    # --- MÉTHODES D'IMPRESSION ---
    
    def open_impression_dialogue(self):
        # ... (Méthode inchangée)
        if not self.derniere_idvente_enregistree:
            messagebox.showwarning("Attention", "Veuillez d'abord enregistrer ou charger une facture.")
            return

        idvente = self.derniere_idvente_enregistree
        
        data = self.get_data_facture(idvente)
        if not data:
            return

        try:
            choice_dialog = SimpleDialogWithChoice(
                self.master, 
                title="Choisir le format d'impression", 
                message="Veuillez sélectionner le format de la facture à imprimer:"
            )
            result = choice_dialog.result
        except Exception as e:
            messagebox.showerror("Erreur de Dialogue", f"Impossible d'ouvrir la fenêtre de choix d'impression : {e}")
            return
        
        if result == "A5 PDF (Paysage)":
            filename = f"Facture_{data['vente']['refvente']}_{datetime.now().strftime('%Y%m%d_%H%M%S')}.pdf"
            self.generate_pdf_a5(data, filename)
            self.open_file(filename)
            messagebox.showinfo("Impression PDF", f"Le fichier PDF '{filename}' a été généré avec succès.")
        elif result == "Ticket 80mm":
            filename = f"Ticket_{data['vente']['refvente']}_{datetime.now().strftime('%Y%m%d_%H%M%S')}.txt"
            self.generate_ticket_80mm(data, filename)
            self.open_file(filename)
            messagebox.showinfo("Impression Ticket", f"Le fichier Ticket '{filename}' (texte brut) a été généré avec succès.")
        else:
            messagebox.showinfo("Annulation", "Impression annulée.")


    def open_file(self, filename):
        # ... (Méthode inchangée)
        try:
            if sys.platform == 'win32':
                os.startfile(filename)
            elif sys.platform == 'darwin':
                os.system(f'open "{filename}"')
            else:
                os.system(f'xdg-open "{filename}"')
        except Exception as e:
            pass

    def get_data_facture(self, idvente: int) -> Optional[Dict[str, Any]]:
        # ... (Méthode inchangée)
        conn = self.connect_db()
        if not conn: return None
        
        data = {
            'societe': self.infos_societe,
            'vente': None,
            'utilisateur': None,
            'details': []
        }
        
        try:
            cursor = conn.cursor()
            
            sql_vente = """
                SELECT 
                    v.refvente, v.dateregistre, v.description, u.nomuser, u.prenomuser, 
                    c.nomcli, c.adressecli, c.contactcli
                FROM tb_vente v
                INNER JOIN tb_users u ON v.iduser = u.iduser
                LEFT JOIN tb_client c ON v.idclient = c.idclient
                WHERE v.id = %s
            """
            cursor.execute(sql_vente, (idvente,))
            vente_result = cursor.fetchone()
            
            if not vente_result:
                messagebox.showerror("Erreur", "Facture introuvable.")
                return None
                
            data['vente'] = {
                'refvente': vente_result[0],
                'dateregistre': vente_result[1].strftime("%d/%m/%Y"),
                'description': vente_result[2],
            }
            data['utilisateur'] = {
                'nomuser': vente_result[3],
                'prenomuser': vente_result[4]
            }
            data['client'] = {
                'nomcli': vente_result[5] or 'Client Inconnu',
                'adressecli': vente_result[6] or 'N/A',
                'contactcli': vente_result[7] or 'N/A',
            }
            
            sql_details = """
                SELECT 
                    u.codearticle, a.designation, u.designationunite, vd.qtvente, vd.prixunit, vd.qtvente * vd.prixunit as montant_total, m.designationmag
                FROM tb_ventedetail vd
                INNER JOIN tb_article a ON vd.idarticle = a.idarticle
                INNER JOIN tb_unite u ON vd.idunite = u.idunite
                INNER JOIN tb_magasin m ON vd.idmag = m.idmag
                WHERE vd.idvente = %s
                ORDER BY a.designation
            """
            cursor.execute(sql_details, (idvente,))
            data['details'] = cursor.fetchall()
            
            return data
            
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur lors de la récupération des données de la facture: {str(e)}")
            return None
        finally:
            if 'cursor' in locals() and cursor: cursor.close()
            if conn: conn.close()
            
    def create_watermark(self, canvas, doc):
        """Ajoute le filigrane 'AVOIR' en arrière-plan sur chaque page."""
        canvas.saveState()
        canvas.setFont('Helvetica-Bold', 100)
        canvas.setFillGray(0.5, 0.3)  # Gris à 30% d'opacité
        
        # Positionnement au centre du format A5 paysage
        # Largeur A5 paysage = 595.27 points, Hauteur = 419.53 points
        canvas.translate(297, 210)
        canvas.rotate(45)
        canvas.drawCentredString(0, 0, "AVOIR")
        canvas.restoreState()

    def generate_pdf_a5_avoir(self, data: Dict[str, Any], filename: str):
        """
        Génère un PDF au format A5 PORTRAIT pour un AVOIR.
        Avec filigrane "AVOIR" en ARRIÈRE-PLAN (gris clair).
        """
    
        class AvoirCanvasWithWatermark(canvas.Canvas):
            """Canvas personnalisé pour ajouter le filigrane AVOIR en arrière-plan"""
        
            def __init__(self, *args, **kwargs):
                canvas.Canvas.__init__(self, *args, **kwargs)
                self.pages = []
        
            def showPage(self):
                # On dessine le filigrane AVANT d'afficher la page 
                # pour qu'il soit placé sur la couche la plus basse (arrière-plan)
                self.draw_watermark()
                canvas.Canvas.showPage(self)
        
            def save(self):
                """Applique le filigrane AVANT de dessiner le contenu (arrière-plan)"""
                num_pages = len(self.pages)
                for page_num in range(num_pages):
                    # Restaurer l'état de la page
                    self.__dict__.update(self.pages[page_num])
                
                    # ✅ DESSINER LE FILIGRANE EN PREMIER (ARRIÈRE-PLAN)
                    self._draw_watermark()
                
                    # Puis dessiner le contenu de la page par-dessus
                    canvas.Canvas.showPage(self)
            
                # Finaliser le document
                canvas.Canvas.save(self)
        
            def draw_watermark(self):
                self.saveState()
                # Configuration du texte "AVOIR"
                self.setFont('Helvetica-Bold', 100)
                self.setFillGray(0.5, 0.15)  # Gris avec 15% d'opacité (très léger pour l'arrière-plan)
        
                # Positionnement pour format A5 Portrait (Dimensions env. 420x595 pts)
                # Centre du document : x=210, y=297
                self.translate(210, 297)
                self.rotate(45) # Inclinaison diagonale
                self.drawCentredString(0, 0, "AVOIR")
                self.restoreState()

        # ✅ Création du document A5 PORTRAIT avec le canvas personnalisé
        doc = SimpleDocTemplate(
            filename, 
            pagesize=A5,  # A5 PORTRAIT (pas landscape)
            leftMargin=20, 
            rightMargin=20, 
            topMargin=20, 
            bottomMargin=15
        )

        styles = getSampleStyleSheet()
        elements = []

        societe = data['societe']
        client = data['client']

        # --- 1. EN-TÊTE SOCIÉTÉ ---
        style_header = styles['Normal']
        style_header.fontSize = 8
        style_header.alignment = 1  # Centré

        adresse = societe.get('adressesociete', 'N/A')
        ville = societe.get('villesociete', 'N/A')
        contact = societe.get('contactsociete', 'N/A')
        infos_legales = f"NIF: {societe.get('nifsociete', 'N/A')} | STAT: {societe.get('statsociete', 'N/A')} | CIF: {societe.get('cifsociete', 'N/A')}"

        elements.append(Paragraph(f"<b>{societe.get('nomsociete', 'NOM SOCIÉTÉ')}</b>", styles['Heading3']))
        elements.append(Paragraph(f"{adresse}, {ville} - Tél: {contact}", style_header))
        elements.append(Paragraph(infos_legales, style_header))
        elements.append(Spacer(1, 10))

        # --- 2. TITRE (AVOIR) ---
        style_titre = styles['Heading2']
        style_titre.textColor = colors.HexColor("#d32f2f")  # Rouge
        p_titre = Paragraph(f"<b>AVOIR N°{data['avoir']['refavoir']}</b>", style_titre)
        elements.append(p_titre)
        elements.append(Spacer(1, 8))

        # --- 3. Informations générales (format compact pour portrait) ---
        data_header = [
            ['Date Facture:', data['avoir']['dateregistre']],
            ['Date Avoir:', data['avoir']['dateavoir']],
            ['Client:', client['nomcli']],
            ['Contact:', client['contactcli']],
            ['Adresse:', client['adressecli']],
            ['Utilisateur:', f"{data['utilisateur']['prenomuser']} {data['utilisateur']['nomuser']}"],
            ['Désignation:', data['avoir']['observation']],
        ]

        table_header = Table(data_header, colWidths=[80, 280])
        table_header.setStyle(TableStyle([
            ('FONTNAME', (0, 0), (0, -1), 'Helvetica-Bold'),
            ('FONTNAME', (1, 0), (1, -1), 'Helvetica'),
            ('FONTSIZE', (0, 0), (-1, -1), 8),
            ('ALIGN', (0, 0), (-1, -1), 'LEFT'),
            ('VALIGN', (0, 0), (-1, -1), 'MIDDLE'),
        ]))
        elements.append(table_header)
        elements.append(Spacer(1, 12))

        # --- 4. Tableau des Détails (colonnes adaptées au portrait) ---
        data_details = [
            ['Code', 'Désignation', 'Unité', 'Qté', 'P.U.', 'Montant']
        ]

        total_general = 0.0

        for code, designation, unite, qtavoir, prixunit, montant_total, magasin in data['details']:
            # Tronquer la désignation si trop longue
            desig_courte = (designation[:30] + '...') if len(designation) > 30 else designation
            data_details.append([
                code[:10],
                desig_courte,
                unite[:8],
                self.formater_nombre(qtavoir),
                self.formater_nombre(prixunit),
                self.formater_nombre(montant_total)
            ])
            total_general += montant_total

        formatted_total = self.formater_nombre(total_general)

        # Ligne Total
        data_details.append(['', '', 'TOTAL', '', '', formatted_total])

        # Largeurs adaptées au format portrait A5 (~380 points disponibles)
        table_details = Table(data_details, colWidths=[45, 140, 40, 45, 50, 55])
        table_details.setStyle(TableStyle([
            ('BACKGROUND', (0, 0), (-1, 0), colors.HexColor("#ffcccc")),
            ('GRID', (0, 0), (-1, -1), 0.5, colors.black),
            ('FONTNAME', (0, 0), (-1, -1), 'Helvetica'),
            ('FONTSIZE', (0, 0), (-1, -1), 7),
            ('ALIGN', (3, 1), (5, -1), 'RIGHT'),
            ('FONTNAME', (0, -1), (-1, -1), 'Helvetica-Bold'),
            ('SPAN', (0, -1), (2, -1)),
            ('BACKGROUND', (0, -1), (-1, -1), colors.HexColor("#ffe6e6")),
        ]))
        elements.append(table_details)

        # --- 5. TOTAL EN LETTRES ---
        total_lettres = nombre_en_lettres_fr(total_general)

        style_total_lettres = styles['Normal']
        style_total_lettres.fontSize = 8
        style_total_lettres.alignment = 0
        elements.append(Spacer(1, 8))
        elements.append(Paragraph(
            f"<b>Arrêté le présent avoir à la somme de :</b> <i>{total_lettres}</i>", 
            style_total_lettres
        ))

        elements.append(Spacer(1, 20))

        # --- 6. SIGNATURE DU RESPONSABLE ---
        style_signature = styles['Normal']
        style_signature.fontSize = 9
        style_signature.alignment = 2

        elements.append(Paragraph("<b>Le Responsable</b>", style_signature))
        elements.append(Spacer(1, 30))
        elements.append(Paragraph("Signature: _____________________", style_signature))

        try:
            # ✅ UTILISER LE CANVAS PERSONNALISÉ AVEC FILIGRANE EN ARRIÈRE-PLAN
            doc.build(elements, canvasmaker=AvoirCanvasWithWatermark)
        except Exception as e:
            messagebox.showerror("Erreur d'impression", f"Erreur lors de la construction du document : {str(e)}")
            raise

    
    def generate_ticket_80mm(self, data: Dict[str, Any], filename: str):
        # ... (Méthode inchangée)
        societe = data['societe']
        vente = data['vente']
        client = data['client']
        details = data['details']
        
        MAX_WIDTH = 40
        
        def center(text):
            return text.center(MAX_WIDTH)
            
        def line():
            return "-" * MAX_WIDTH
            
        def format_detail_line(designation, qte, unite, prixunit, montant_total):
            """Formate une ligne de détail pour le ticket."""
            lines = []
            
            designation_lines = textwrap.wrap(designation, MAX_WIDTH)
            lines.extend(designation_lines)
            
            qte_str = self.formater_nombre(qte)
            prixunit_str = self.formater_nombre(prixunit)
            
            qte_pu_line = f"{qte_str} {unite} @ {prixunit_str}"
            
            montant_total_str = self.formater_nombre(montant_total)
            
            if len(qte_pu_line) + len(montant_total_str) + 1 <= MAX_WIDTH:
                lines.append(qte_pu_line.ljust(MAX_WIDTH - len(montant_total_str) - 1) + montant_total_str.rjust(len(montant_total_str)))
            else:
                 lines.append(qte_pu_line)
                 lines.append(montant_total_str.rjust(MAX_WIDTH))
                 
            lines.append("")
            return lines

        content = []
        
        # --- EN-TÊTE SOCIÉTÉ ---
        content.append(center(societe.get('nomsociete', 'NOM SOCIÉTÉ')))
        content.append(center(societe.get('adressesociete', 'N/A')))
        content.append(center(f"Tél: {societe.get('contactsociete', 'N/A')}"))
        content.append(line())
        
        # --- INFOS VENTE/CLIENT ---
        content.append(f"Facture N°: {vente['refvente']}")
        content.append(f"Date: {vente['dateregistre']}")
        content.append(f"Client: {client['nomcli']}")
        content.append(line())
        
        # --- DÉTAILS ---
        total_general = 0.0
        
        for code, designation, unite, qte, prixunit, montant_total, magasin in details:
            lines = format_detail_line(designation, qte, unite, prixunit, montant_total)
            content.extend(lines)
            total_general += montant_total
        
        content.append(line())
        
        # --- TOTAL ---
        content.append(f"TOTAL À PAYER: {self.formater_nombre(total_general)}".rjust(MAX_WIDTH))
        content.append(line())
        
        # -----------------------------------------------------------------
        # TOTAL EN LETTRES
        # -----------------------------------------------------------------
        total_lettres = nombre_en_lettres_fr(total_general)
        content.append(center("TOTAL EN LETTRES"))
        
        lines_en_lettres = textwrap.wrap(total_lettres, MAX_WIDTH, subsequent_indent='  ')
        content.extend(lines_en_lettres)
        content.append(line())
        # -----------------------------------------------------------------

        # --- PIED DE PAGE ---
        
        content.append(center(vente['description']))
        content.append("\n")
        content.append(center("Merci de votre achat !"))
        
        with open(filename, 'w', encoding='utf-8') as f:
            f.write('\n'.join(content))


# --- Partie pour exécuter la fenêtre de test ---
if __name__ == "__main__":
    
    # Simulation de l'utilisateur connecté
    USER_ID = 1 
    
    try:
        app = ctk.CTk()
        app.title("Mise à jour Avoir")
        app.geometry("1200x600") 
        
        page_vente = PageAvoir(app, id_user_connecte=USER_ID)
        page_vente.pack(fill="both", expand=True, padx=10, pady=10)
        
        app.mainloop()
        
    except Exception as e:
        messagebox.showerror("Erreur Critique", f"L'application a rencontré une erreur critique:\n{e}\n\nTraceback:\n{traceback.format_exc()}")
        # print(f"Erreur critique:\n{tracebox.format_exc()}")