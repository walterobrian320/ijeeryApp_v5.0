import customtkinter as ctk
from tkinter import ttk, messagebox
import psycopg2
import json
from datetime import datetime
from reportlab.lib.pagesizes import A5
from reportlab.lib import colors
from reportlab.lib.units import mm
from reportlab.platypus import SimpleDocTemplate, Table, TableStyle, Paragraph, Spacer
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from reportlab.lib.enums import TA_CENTER, TA_LEFT
import os

class PageTransfert(ctk.CTkFrame):
    def __init__(self, parent, user_id):
        super().__init__(parent)
        self.user_id = user_id
        self.articles_transfert = []
        
        self.setup_ui()
        self.charger_magasins()
        
    def setup_ui(self):
        # Titre
        titre = ctk.CTkLabel(self, text="TRANSFERT DE STOCK", 
                            font=ctk.CTkFont(family="Segoe UI", size=24, weight="bold"))
        titre.pack(pady=20)
        
        # Frame principal
        main_frame = ctk.CTkFrame(self)
        main_frame.pack(fill="both", expand=True, padx=20, pady=10)
        
        # Frame formulaire
        form_frame = ctk.CTkFrame(main_frame)
        form_frame.pack(fill="x", padx=10, pady=10)
        
        # Date
        date_frame = ctk.CTkFrame(form_frame)
        date_frame.pack(fill="x", padx=10, pady=5)
        ctk.CTkLabel(date_frame, text="Date:", width=150).pack(side="left")
        self.entry_date = ctk.CTkEntry(date_frame, width=300)
        self.entry_date.pack(side="left", padx=5)
        self.entry_date.insert(0, datetime.now().strftime("%Y-%m-%d %H:%M:%S"))
        
        # Référence
        ref_frame = ctk.CTkFrame(form_frame)
        ref_frame.pack(fill="x", padx=10, pady=5)
        ctk.CTkLabel(ref_frame, text="Référence:", width=150).pack(side="left")
        self.entry_ref = ctk.CTkEntry(ref_frame, width=300, state="readonly")
        self.entry_ref.pack(side="left", padx=5)
        self.generer_reference()
        
        # Magasin sortie
        mag_sortie_frame = ctk.CTkFrame(form_frame)
        mag_sortie_frame.pack(fill="x", padx=10, pady=5)
        ctk.CTkLabel(mag_sortie_frame, text="De (Magasin):", width=150).pack(side="left")
        self.combo_mag_sortie = ctk.CTkComboBox(mag_sortie_frame, width=300, values=[""])
        self.combo_mag_sortie.pack(side="left", padx=5)
        
        # Magasin entrée
        mag_entree_frame = ctk.CTkFrame(form_frame)
        mag_entree_frame.pack(fill="x", padx=10, pady=5)
        ctk.CTkLabel(mag_entree_frame, text="A (Magasin):", width=150).pack(side="left")
        self.combo_mag_entree = ctk.CTkComboBox(mag_entree_frame, width=300, values=[""])
        self.combo_mag_entree.pack(side="left", padx=5)
        
        # Description
        desc_frame = ctk.CTkFrame(form_frame)
        desc_frame.pack(fill="x", padx=10, pady=5)
        ctk.CTkLabel(desc_frame, text="Description:", width=150).pack(side="left")
        self.entry_description = ctk.CTkEntry(desc_frame, width=300)
        self.entry_description.pack(side="left", padx=5)
        
        # Séparateur
        separator1 = ctk.CTkFrame(form_frame, height=2, fg_color="gray")
        separator1.pack(fill="x", padx=10, pady=15)
        
        # Article
        article_frame = ctk.CTkFrame(form_frame)
        article_frame.pack(fill="x", padx=10, pady=5)
        ctk.CTkLabel(article_frame, text="Article:", width=150).pack(side="left")
        self.entry_code_article = ctk.CTkEntry(article_frame, width=100, state="readonly")
        self.entry_code_article.pack(side="left", padx=5)
        self.entry_nom_article = ctk.CTkEntry(article_frame, width=200, state="readonly")
        self.entry_nom_article.pack(side="left", padx=5)
        btn_recherche = ctk.CTkButton(article_frame, text="🔍", width=40, 
                                      command=self.rechercher_article)
        btn_recherche.pack(side="left", padx=5)
        
        # Unité
        unite_frame = ctk.CTkFrame(form_frame)
        unite_frame.pack(fill="x", padx=10, pady=5)
        ctk.CTkLabel(unite_frame, text="Unité:", width=150).pack(side="left")
        self.entry_unite = ctk.CTkEntry(unite_frame, width=300, state="readonly")
        self.entry_unite.pack(side="left", padx=5)
        
        # Quantité
        qte_frame = ctk.CTkFrame(form_frame)
        qte_frame.pack(fill="x", padx=10, pady=5)
        ctk.CTkLabel(qte_frame, text="Quantité:", width=150).pack(side="left")
        self.entry_quantite = ctk.CTkEntry(qte_frame, width=300)
        self.entry_quantite.pack(side="left", padx=5)
        
        # Bouton Ajouter (Stocké comme attribut pour être désactivé/activé)
        self.btn_ajouter = ctk.CTkButton(form_frame, text="Ajouter", 
                                    command=self.ajouter_article, height=40)
        self.btn_ajouter.pack(pady=10)
        
        # Treeview
        tree_frame = ctk.CTkFrame(main_frame)
        tree_frame.pack(fill="both", expand=True, padx=10, pady=10)
        
        # Scrollbar
        scrollbar = ttk.Scrollbar(tree_frame)
        scrollbar.pack(side="right", fill="y")
        
        # Colonnes
        columns = ("Code", "Article", "Unité", "Quantité")
        self.tree = ttk.Treeview(tree_frame, columns=columns, show="headings", 
                                 yscrollcommand=scrollbar.set, height=10)
        scrollbar.config(command=self.tree.yview)
        
        # Configuration colonnes
        self.tree.heading("Code", text="Code Article")
        self.tree.heading("Article", text="Nom Article")
        self.tree.heading("Unité", text="Unité")
        self.tree.heading("Quantité", text="Quantité")
        
        self.tree.column("Code", width=120)
        self.tree.column("Article", width=250)
        self.tree.column("Unité", width=100)
        self.tree.column("Quantité", width=100)
        
        self.tree.pack(fill="both", expand=True)
        
        # Bouton Supprimer (Stocké comme attribut)
        self.btn_supprimer = ctk.CTkButton(tree_frame, text="Supprimer ligne", 
                                      command=self.supprimer_ligne, fg_color="red")
        self.btn_supprimer.pack(pady=5)
        
        # Boutons action
        btn_frame = ctk.CTkFrame(main_frame)
        btn_frame.pack(fill="x", padx=10, pady=10)
        
        # Bouton Enregistrer (Stocké comme attribut)
        self.btn_enregistrer = ctk.CTkButton(form_frame, text="Enregistrer", 
                                        command=self.enregistrer_transfert,
                                        height=40, fg_color="green")
        self.btn_enregistrer.pack(side="left", padx=5, expand=True, fill="x")
        
        # NOUVEAU BOUTON : Charger Transfert
        self.btn_charger = ctk.CTkButton(form_frame, text="Charger Transfert", 
                                    command=self.ouvrir_fenetre_chargement, height=40,
                                    fg_color="orange")
        self.btn_charger.pack(side="left", padx=5, expand=True, fill="x")
        
        # Bouton Nouveau
        self.btn_nouveau = ctk.CTkButton(form_frame, text="Nouveau", 
                                    command=self.nouveau_transfert, height=40)
        self.btn_nouveau.pack(side="left", padx=5, expand=True, fill="x")
        
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
    
    def get_connection(self):
        return self.connect_db()
    
    def generer_reference(self):
        try:
            conn = self.get_connection()
            if not conn:
                return
            
            cur = conn.cursor()
            
            annee = datetime.now().year
            cur.execute("""
                SELECT reftransfert FROM tb_transfert 
                WHERE reftransfert LIKE %s 
                ORDER BY reftransfert DESC LIMIT 1
            """, (f"{annee}-TRA-%",))
            
            result = cur.fetchone()
            if result:
                # Assurez-vous que la référence est bien au format "YYYY-TRA-NNNNN"
                parts = result[0].split('-')
                if len(parts) == 3 and parts[1] == 'TRA':
                    try:
                        dernier_num = int(parts[2])
                        nouveau_num = dernier_num + 1
                    except ValueError:
                        # Si le numéro n'est pas un entier valide
                        nouveau_num = 1
                else:
                    nouveau_num = 1
            else:
                nouveau_num = 1
                
            reference = f"{annee}-TRA-{nouveau_num:05d}"
            self.entry_ref.configure(state="normal")
            self.entry_ref.delete(0, "end")
            self.entry_ref.insert(0, reference)
            self.entry_ref.configure(state="readonly")
            
            cur.close()
            conn.close()
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur génération référence: {str(e)}")
    
    def charger_magasins(self):
        try:
            conn = self.get_connection()
            if not conn:
                return
            
            cur = conn.cursor()
            
            cur.execute("SELECT idmag, designationmag FROM tb_magasin WHERE deleted = 0")
            magasins = cur.fetchall()
            
            self.magasins_data = {mag[1]: mag[0] for mag in magasins}
            mag_list = list(self.magasins_data.keys())
            
            self.combo_mag_sortie.configure(values=mag_list)
            self.combo_mag_entree.configure(values=mag_list)
            
            if mag_list:
                self.combo_mag_sortie.set(mag_list[0])
                self.combo_mag_entree.set(mag_list[0])
            
            cur.close()
            conn.close()
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur chargement magasins: {str(e)}")
    
    def rechercher_article(self):
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
        style.configure("Treeview", rowheight=30, font=('Arial', 10))
        style.configure("Treeview.Heading", font=('Arial', 10, 'bold'))

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

            conn = self.get_connection()
            if not conn:
                return
            try:
                cur = conn.cursor()
                filtre_like = f"%{filtre}%"

                # Même logique réservoir que page_venteParMsin / page_stock :
                # tous les mouvements sont convertis en "unité de base" via qtunite,
                # puis le solde commun est divisé par le qtunite de chaque ligne.
                query = """
                WITH mouvements_bruts AS (
                    SELECT
                        lf.idarticle,
                        COALESCE(u.qtunite, 1) as qtunite_source,
                        lf.qtlivrefrs as quantite,
                        'reception' as type_mouvement
                    FROM tb_livraisonfrs lf
                    INNER JOIN tb_unite u ON lf.idarticle = u.idarticle AND lf.idunite = u.idunite
                    WHERE lf.deleted = 0

                    UNION ALL

                    SELECT
                        vd.idarticle,
                        COALESCE(u.qtunite, 1) as qtunite_source,
                        vd.qtvente as quantite,
                        'vente' as type_mouvement
                    FROM tb_ventedetail vd
                    INNER JOIN tb_vente v ON vd.idvente = v.id AND v.deleted = 0
                    INNER JOIN tb_unite u ON vd.idarticle = u.idarticle AND vd.idunite = u.idunite
                    WHERE vd.deleted = 0

                    UNION ALL

                    SELECT
                        t.idarticle,
                        COALESCE(u.qtunite, 1) as qtunite_source,
                        t.qttransfert as quantite,
                        'transfert_in' as type_mouvement
                    FROM tb_transfertdetail t
                    INNER JOIN tb_unite u ON t.idarticle = u.idarticle AND t.idunite = u.idunite
                    WHERE t.deleted = 0

                    UNION ALL

                    SELECT
                        t.idarticle,
                        COALESCE(u.qtunite, 1) as qtunite_source,
                        t.qttransfert as quantite,
                        'transfert_out' as type_mouvement
                    FROM tb_transfertdetail t
                    INNER JOIN tb_unite u ON t.idarticle = u.idarticle AND t.idunite = u.idunite
                    WHERE t.deleted = 0

                    UNION ALL

                    SELECT
                        u.idarticle,
                        COALESCE(u.qtunite, 1) as qtunite_source,
                        i.qtinventaire as quantite,
                        'inventaire' as type_mouvement
                    FROM tb_inventaire i
                    INNER JOIN tb_unite u ON i.codearticle = u.codearticle

                    UNION ALL

                    SELECT
                        sd.idarticle,
                        COALESCE(u.qtunite, 1) as qtunite_source,
                        sd.qtsortie as quantite,
                        'sortie' as type_mouvement
                    FROM tb_sortiedetail sd
                    INNER JOIN tb_unite u ON sd.idarticle = u.idarticle AND sd.idunite = u.idunite

                    UNION ALL

                    SELECT
                        ad.idarticle,
                        COALESCE(u.qtunite, 1) as qtunite_source,
                        ad.qtavoir as quantite,
                        'avoir' as type_mouvement
                    FROM tb_avoir a
                    INNER JOIN tb_avoirdetail ad ON a.id = ad.idavoir
                    INNER JOIN tb_unite u ON ad.idarticle = u.idarticle AND ad.idunite = u.idunite
                    WHERE a.deleted = 0 AND ad.deleted = 0
                ),

                solde_base AS (
                    SELECT
                        idarticle,
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
                        ) as solde
                    FROM mouvements_bruts
                    GROUP BY idarticle
                )

                SELECT
                    u.idarticle,
                    u.idunite,
                    u.codearticle,
                    a.designation,
                    u.designationunite,
                    GREATEST(COALESCE(sb.solde, 0) / NULLIF(COALESCE(u.qtunite, 1), 0), 0) as stock_total
                FROM tb_article a
                INNER JOIN tb_unite u ON a.idarticle = u.idarticle
                LEFT JOIN solde_base sb ON sb.idarticle = u.idarticle
                WHERE a.deleted = 0
                  AND (u.codearticle ILIKE %s OR a.designation ILIKE %s)
                ORDER BY u.codearticle, u.idunite
                """

                cur.execute(query, (filtre_like, filtre_like))
                articles = cur.fetchall()

                for row in articles:
                    tree.insert('', 'end', values=(
                        row[0],          # idarticle
                        row[1],          # idunite
                        row[2] or "",    # codearticle
                        row[3] or "",    # designation
                        row[4] or "",    # designationunite
                        row[5]           # stock_total
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

        def valider_selection():
            selection = tree.selection()
            if not selection:
                messagebox.showwarning("Attention", "Veuillez sélectionner un article")
                return

            values = tree.item(selection[0])['values']

            # Stocker l'article sélectionné avec les mêmes clés utilisées dans ajouter_article
            self.article_selectionne = {
                'id': values[0],           # idarticle
                'idunite': values[1],      # idunite
                'code': values[2] or "N/A",
                'nom': values[3] or "N/A",
                'unite': values[4] or "N/A"
            }

            self.entry_code_article.configure(state="normal")
            self.entry_code_article.delete(0, "end")
            self.entry_code_article.insert(0, self.article_selectionne['code'])
            self.entry_code_article.configure(state="readonly")

            self.entry_nom_article.configure(state="normal")
            self.entry_nom_article.delete(0, "end")
            self.entry_nom_article.insert(0, self.article_selectionne['nom'])
            self.entry_nom_article.configure(state="readonly")

            self.entry_unite.configure(state="normal")
            self.entry_unite.delete(0, "end")
            self.entry_unite.insert(0, self.article_selectionne['unite'])
            self.entry_unite.configure(state="readonly")

            fenetre_recherche.destroy()

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
        
    def calculer_stock_article(self, idarticle, idunite_cible, idmag=None):
        """
        ✅ CALCUL CONSOLIDÉ (identique à page_venteParMsin / page_stock.py) :
        Relie tous les mouvements de toutes les unités (PIECE, CARTON, etc.)
        d'un même idarticle via le coefficient 'qtunite' de tb_unite.

        LOGIQUE :
          1) On récupère toutes les unités sœurs (même idarticle).
          2) Pour chaque unité sœur, on somme ses mouvements puis on les convertit
             en "unité de base" en multipliant par son qtunite.
          3) Le solde total (réservoir commun) est divisé par le qtunite de
             l'unité cible pour obtenir le stock affiché.

        Exemple : vente de 20 PIECES → réservoir diminue de 20×1 = 20.
                  CARTON (qtunite=20) → stock = réservoir / 20  →  -1 CARTON.
        """
        conn = self.get_connection()
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

            # 2. Identifier le qtunite de l'unité cible
            qtunite_affichage = 1
            for idu, code, qt_u in unites_liees:
                if idu == idunite_cible:
                    qtunite_affichage = qt_u if qt_u > 0 else 1
                    break

            total_stock_global_base = 0  # Réservoir commun en unité de base

            # 3. Sommer les mouvements de chaque unité sœur
            for idu_boucle, code_boucle, qtunite_boucle in unites_liees:

                # --- Réceptions ---
                q_rec = "SELECT COALESCE(SUM(qtlivrefrs), 0) FROM tb_livraisonfrs WHERE idarticle = %s AND idunite = %s AND deleted = 0"
                p_rec = [idarticle, idu_boucle]
                if idmag:
                    q_rec += " AND idmag = %s"
                    p_rec.append(idmag)
                cursor.execute(q_rec, p_rec)
                receptions = cursor.fetchone()[0] or 0

                # --- Ventes ---
                q_ven = "SELECT COALESCE(SUM(qtvente), 0) FROM tb_ventedetail WHERE idarticle = %s AND idunite = %s AND deleted = 0"
                p_ven = [idarticle, idu_boucle]
                if idmag:
                    q_ven += " AND idmag = %s"
                    p_ven.append(idmag)
                cursor.execute(q_ven, p_ven)
                ventes = cursor.fetchone()[0] or 0

                # --- Transferts entrants ---
                q_tin = "SELECT COALESCE(SUM(qttransfert), 0) FROM tb_transfertdetail WHERE idarticle = %s AND idunite = %s AND deleted = 0"
                p_tin = [idarticle, idu_boucle]
                if idmag:
                    q_tin += " AND idmagentree = %s"
                    p_tin.append(idmag)
                cursor.execute(q_tin, p_tin)
                t_in = cursor.fetchone()[0] or 0

                # --- Transferts sortants ---
                q_tout = "SELECT COALESCE(SUM(qttransfert), 0) FROM tb_transfertdetail WHERE idarticle = %s AND idunite = %s AND deleted = 0"
                p_tout = [idarticle, idu_boucle]
                if idmag:
                    q_tout += " AND idmagsortie = %s"
                    p_tout.append(idmag)
                cursor.execute(q_tout, p_tout)
                t_out = cursor.fetchone()[0] or 0

                # --- Inventaires (via codearticle) ---
                q_inv = "SELECT COALESCE(SUM(qtinventaire), 0) FROM tb_inventaire WHERE codearticle = %s"
                p_inv = [code_boucle]
                if idmag:
                    q_inv += " AND idmag = %s"
                    p_inv.append(idmag)
                cursor.execute(q_inv, p_inv)
                inv = cursor.fetchone()[0] or 0

                # --- Avoirs (AUGMENTENT le stock - annulation de vente) ---
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

                # Conversion en unité de base puis accumulation dans le réservoir
                # Les avoirs s'AJOUTENT car c'est une annulation de vente (retour marchandise)
                solde_unite = (receptions + t_in + inv + avoirs - ventes - t_out)
                total_stock_global_base += (solde_unite * qtunite_boucle)

            # 4. Conversion finale : réservoir / qtunite de l'unité cible
            stock_final = total_stock_global_base / qtunite_affichage
            return max(0, stock_final)

        except Exception as e:
            print(f"Erreur calcul stock consolidé : {e}")
            return 0
        finally:
            cursor.close()
            conn.close()
    
    def ajouter_article(self):
        # 1. Vérifications de base (Article et Unité)
        if not hasattr(self, 'article_selectionne'):
            messagebox.showwarning("Attention", "Veuillez sélectionner un article")
            return
            
        if not self.article_selectionne.get('idunite'):
             messagebox.showwarning("Attention", "Cet article n'a pas d'unité par défaut.")
             return
        
        # 2. Vérification de la saisie quantité
        try:
            quantite_saisie = float(self.entry_quantite.get())
            if quantite_saisie <= 0:
                messagebox.showwarning("Attention", "La quantité doit être supérieure à 0")
                return
        except ValueError:
            messagebox.showwarning("Attention", "Quantité invalide")
            return

        # 3. VERIFICATION DU STOCK (BLOCAGE)
        mag_sortie_nom = self.combo_mag_sortie.get()
        if not mag_sortie_nom:
            messagebox.showwarning("Attention", "Sélectionnez le magasin de sortie")
            return

        id_mag_sortie = self.magasins_data[mag_sortie_nom]
        id_article = self.article_selectionne['id']
        id_unite = self.article_selectionne['idunite']
        
        stock_actuel = self.calculer_stock_article(id_article, id_unite, id_mag_sortie)
        
        if quantite_saisie > stock_actuel:
            messagebox.showerror("Stock Insuffisant", 
                f"Transfert impossible.\n\n"
                f"Article : {self.article_selectionne['nom']}\n"
                f"Stock disponible : {stock_actuel}\n"
                f"Quantité demandée : {quantite_saisie}")
            return # Sortie de la fonction sans ajouter au Treeview

        # 4. Ajout au Treeview et à la liste si stock suffisant
        self.tree.insert("", "end", values=(
            self.article_selectionne['code'],
            self.article_selectionne['nom'],
            self.article_selectionne['unite'],
            quantite_saisie
        ))
        
        self.articles_transfert.append({
            'idarticle': self.article_selectionne['id'],
            'idunite': self.article_selectionne['idunite'],
            'code': self.article_selectionne['code'],
            'nom': self.article_selectionne['nom'],
            'unite': self.article_selectionne['unite'],
            'quantite': quantite_saisie
        })
        
        # Réinitialisation des champs de saisie
        self.reinitialiser_champs_article()
    
    def reinitialiser_champs_article(self):
        """Réinitialise les champs de saisie d'article après un ajout réussi."""
        self.entry_code_article.configure(state="normal")
        self.entry_code_article.delete(0, "end")
        self.entry_code_article.configure(state="readonly")

        self.entry_nom_article.configure(state="normal")
        self.entry_nom_article.delete(0, "end")
        self.entry_nom_article.configure(state="readonly")

        self.entry_unite.configure(state="normal")
        self.entry_unite.delete(0, "end")
        self.entry_unite.configure(state="readonly")

        self.entry_quantite.delete(0, "end")

        if hasattr(self, 'article_selectionne'):
            del self.article_selectionne

    def supprimer_ligne(self):
        selection = self.tree.selection()
        if selection:
            index = self.tree.index(selection[0])
            self.tree.delete(selection[0])
            del self.articles_transfert[index]
    
    def enregistrer_transfert(self):
        if not self.articles_transfert:
            messagebox.showwarning("Attention", "Aucun article dans le transfert")
            return
        
        mag_sortie = self.combo_mag_sortie.get()
        mag_entree = self.combo_mag_entree.get()
        
        if not mag_sortie or not mag_entree:
            messagebox.showwarning("Attention", "Sélectionnez les magasins")
            return
        
        if mag_sortie == mag_entree:
            messagebox.showwarning("Attention", "Les magasins doivent être différents")
            return
        
        try:
            conn = self.get_connection()
            if not conn:
                return
            
            cur = conn.cursor()

            # ---------- MODE MODIFICATION (UPDATE) ----------
            if getattr(self, 'idtransfert_en_cours', None) is not None:
                idtransfert = self.idtransfert_en_cours

                # Mettre à jour l'en-tête du transfert
                cur.execute("""
                    UPDATE tb_transfert
                    SET idmagsortie   = %s,
                        idmagentree   = %s,
                        dateregistre  = %s,
                        description   = %s
                    WHERE idtransfert = %s
                """, (
                    self.magasins_data[mag_sortie],
                    self.magasins_data[mag_entree],
                    self.entry_date.get(),
                    self.entry_description.get(),
                    idtransfert
                ))

                # Supprimer les anciennes lignes de détail (soft-delete)
                cur.execute("""
                    UPDATE tb_transfertdetail SET deleted = 1
                    WHERE idtransfert = %s AND deleted = 0
                """, (idtransfert,))

                # Ré-insérer les détails actuels
                for art in self.articles_transfert:
                    cur.execute("""
                        INSERT INTO tb_transfertdetail 
                        (idarticle, idunite, qttransfert, qttransfertsortie, qttransfertentree,
                         deleted, idtransfert, idmagsortie, idmagentree)
                        VALUES (%s, %s, %s, %s, %s, 0, %s, %s, %s)
                    """, (
                        art['idarticle'],
                        art['idunite'],
                        art['quantite'],
                        art['quantite'],
                        art['quantite'],
                        idtransfert,
                        self.magasins_data[mag_sortie],
                        self.magasins_data[mag_entree]
                    ))

                conn.commit()
                cur.close()
                conn.close()

                messagebox.showinfo("Succès", f"Transfert « {self.entry_ref.get()} » mis à jour avec succès.")
                self.imprimer_transfert(idtransfert)
                self.nouveau_transfert()
                return   # fin du chemin UPDATE

            # ---------- MODE CRÉATION (INSERT) ----------
            cur.execute("""
                INSERT INTO tb_transfert 
                (reftransfert, iduser, idmagsortie, idmagentree, dateregistre, description, deleted)
                VALUES (%s, %s, %s, %s, %s, %s, 0)
                RETURNING idtransfert
            """, (
                self.entry_ref.get(),
                self.user_id,
                self.magasins_data[mag_sortie],
                self.magasins_data[mag_entree],
                self.entry_date.get(),
                self.entry_description.get()
            ))
            
            idtransfert = cur.fetchone()[0]
            
            # Insérer détails
            for art in self.articles_transfert:
                cur.execute("""
                    INSERT INTO tb_transfertdetail 
                    (idarticle, idunite, qttransfert, qttransfertsortie, qttransfertentree,
                     deleted, idtransfert, idmagsortie, idmagentree)
                    VALUES (%s, %s, %s, %s, %s, 0, %s, %s, %s)
                """, (
                    art['idarticle'],
                    art['idunite'],
                    art['quantite'],
                    art['quantite'],
                    art['quantite'],
                    idtransfert,
                    self.magasins_data[mag_sortie],
                    self.magasins_data[mag_entree]
                ))
            
            conn.commit()
            cur.close()
            conn.close()
            
            messagebox.showinfo("Succès", "Transfert enregistré avec succès")
            self.imprimer_transfert(idtransfert)
            self.nouveau_transfert()
            
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur enregistrement: {str(e)}")
    
    def imprimer_transfert(self, idtransfert):
        try:
            conn = self.get_connection()
            if not conn:
                return
            
            cur = conn.cursor()
            
            # Infos société
            cur.execute("SELECT * FROM tb_infosociete LIMIT 1")
            info_societe = cur.fetchone()
            
            # Infos transfert
            cur.execute("""
                SELECT t.*, u.username, 
                       ms.designationmag as mag_sortie,
                       me.designationmag as mag_entree
                FROM tb_transfert t
                LEFT JOIN tb_users u ON t.iduser = u.iduser
                LEFT JOIN tb_magasin ms ON t.idmagsortie = ms.idmag
                LEFT JOIN tb_magasin me ON t.idmagentree = me.idmag
                WHERE t.idtransfert = %s
            """, (idtransfert,))
            
            transfert = cur.fetchone()
            
            # Détails transfert
            cur.execute("""
                SELECT u.codearticle, a.designation, u.designationunite, td.qttransfert
                FROM tb_transfertdetail td
                LEFT JOIN tb_article a ON td.idarticle = a.idarticle
                LEFT JOIN tb_unite u ON td.idunite = u.idunite
                WHERE td.idtransfert = %s
            """, (idtransfert,))
            
            details = cur.fetchall()
            
            cur.close()
            conn.close()
            
            # Générer PDF
            filename = f"Transfert_{transfert[1]}_{datetime.now().strftime('%Y%m%d_%H%M%S')}.pdf"
            doc = SimpleDocTemplate(filename, pagesize=A5)
            elements = []
            styles = getSampleStyleSheet()
            
            # Style personnalisé
            titre_style = ParagraphStyle(
                'CustomTitle',
                parent=styles['Heading1'],
                fontSize=14,
                textColor=colors.HexColor('#1f77b4'),
                spaceAfter=12,
                alignment=TA_CENTER
            )
            
            # En-tête société
            if info_societe:
                elements.append(Paragraph(f"<b>{info_societe[1]}</b>", titre_style))
                elements.append(Paragraph(f"{info_societe[2]}", styles['Normal']))
                elements.append(Paragraph(f"Tél: {info_societe[3]}", styles['Normal']))
                elements.append(Spacer(1, 10*mm))
            
            # Titre document
            elements.append(Paragraph("<b>BON DE TRANSFERT</b>", titre_style))
            elements.append(Spacer(1, 5*mm))
            
            # Infos transfert
            info_data = [
                ['Référence:', transfert[1]],
                ['Date:', str(transfert[5])],
                ['De:', transfert[8]],
                ['A:', transfert[9]],
                ['Utilisateur:', transfert[7]],
                ['Description:', transfert[6] or '']
            ]
            
            info_table = Table(info_data, colWidths=[40*mm, 80*mm])
            info_table.setStyle(TableStyle([
                ('FONTNAME', (0, 0), (0, -1), 'Helvetica-Bold'),
                ('FONTSIZE', (0, 0), (-1, -1), 9),
                ('VALIGN', (0, 0), (-1, -1), 'TOP'),
            ]))
            
            elements.append(info_table)
            elements.append(Spacer(1, 5*mm))
            
            # Table articles
            data = [['Code', 'Article', 'Unité', 'Quantité']]
            for detail in details:
                data.append([detail[0], detail[1], detail[2], str(detail[3])])
            
            table = Table(data, colWidths=[30*mm, 50*mm, 20*mm, 20*mm])
            table.setStyle(TableStyle([
                ('BACKGROUND', (0, 0), (-1, 0), colors.grey),
                ('TEXTCOLOR', (0, 0), (-1, 0), colors.whitesmoke),
                ('ALIGN', (0, 0), (-1, -1), 'CENTER'),
                ('FONTNAME', (0, 0), (-1, 0), 'Helvetica-Bold'),
                ('FONTSIZE', (0, 0), (-1, 0), 10),
                ('BOTTOMPADDING', (0, 0), (-1, 0), 12),
                ('BACKGROUND', (0, 1), (-1, -1), colors.beige),
                ('GRID', (0, 0), (-1, -1), 1, colors.black),
                ('FONTSIZE', (0, 1), (-1, -1), 9),
            ]))
            
            elements.append(table)
            
            doc.build(elements)
            
            # Ouvrir le PDF
            os.startfile(filename)
            
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur impression: {str(e)}")
            
    def desactiver_edition(self):
        """Désactive l'édition des champs et des boutons d'ajout/suppression quand 
           un ancien transfert est chargé."""
        self.entry_date.configure(state="readonly")
        self.entry_description.configure(state="readonly")
        self.combo_mag_sortie.configure(state="readonly")
        self.combo_mag_entree.configure(state="readonly")
        
        # Désactiver les boutons d'action
        self.btn_ajouter.configure(state="disabled")
        self.btn_supprimer.configure(state="disabled")
        self.btn_enregistrer.configure(state="disabled")
        
    def activer_edition(self):
        """Active l'édition des champs et des boutons d'action pour un nouveau transfert."""
        self.entry_date.configure(state="normal")
        self.entry_description.configure(state="normal")
        self.combo_mag_sortie.configure(state="normal")
        self.combo_mag_entree.configure(state="normal")
        
        # Activer les boutons d'action
        self.btn_ajouter.configure(state="normal") 
        self.btn_supprimer.configure(state="normal") 
        self.btn_enregistrer.configure(state="normal") 

    def ouvrir_fenetre_chargement(self):
        """Ouvre une fenêtre pour rechercher et charger un transfert existant.
           Fournit aussi les boutons Modifier et Supprimer sur le transfert sélectionné."""
        
        load_win = ctk.CTkToplevel(self)
        load_win.title("Charger un Transfert Existant")
        load_win.geometry("900x650")
        load_win.grab_set()

        # ---------- zone recherche ----------
        search_frame = ctk.CTkFrame(load_win)
        search_frame.pack(fill="x", padx=10, pady=10)
        
        ctk.CTkLabel(search_frame, text="Référence/Magasin:").pack(side="left", padx=5)
        entry_search = ctk.CTkEntry(search_frame, width=300)
        entry_search.pack(side="left", padx=5)
        
        btn_rechercher = ctk.CTkButton(search_frame, text="Rechercher", 
                                       command=lambda: charger_transferts(entry_search.get()))
        btn_rechercher.pack(side="left", padx=5)

        # ---------- treeview ----------
        tree_frame = ctk.CTkFrame(load_win)
        tree_frame.pack(fill="both", expand=True, padx=10, pady=10)
        
        scrollbar = ttk.Scrollbar(tree_frame)
        scrollbar.pack(side="right", fill="y")
        
        columns = ("ID", "Référence", "Date", "Mag. Sortie", "Mag. Entrée", "Utilisateur")
        self.tree_transferts = ttk.Treeview(tree_frame, columns=columns, show="headings",
                                    yscrollcommand=scrollbar.set)
        scrollbar.config(command=self.tree_transferts.yview)
        
        self.tree_transferts.heading("Référence", text="Référence")
        self.tree_transferts.heading("Date", text="Date")
        self.tree_transferts.heading("Mag. Sortie", text="De (Magasin)")
        self.tree_transferts.heading("Mag. Entrée", text="À (Magasin)")
        self.tree_transferts.heading("Utilisateur", text="Utilisateur")
        
        self.tree_transferts.column("ID", width=0, stretch=False)
        self.tree_transferts.column("Référence", width=150)
        self.tree_transferts.column("Date", width=150)
        self.tree_transferts.column("Mag. Sortie", width=150)
        self.tree_transferts.column("Mag. Entrée", width=150)
        self.tree_transferts.column("Utilisateur", width=100)
        
        self.tree_transferts["displaycolumns"] = ("Référence", "Date", "Mag. Sortie", "Mag. Entrée", "Utilisateur")
        self.tree_transferts.pack(fill="both", expand=True)

        # ---------- barre de boutons (désactivés jusqu'à une sélection) ----------
        btn_frame = ctk.CTkFrame(load_win)
        btn_frame.pack(fill="x", padx=10, pady=(0, 10))

        btn_charger = ctk.CTkButton(btn_frame, text="📂 Charger",
                                    command=lambda: action_charger(),
                                    state="disabled", width=140, height=35,
                                    fg_color="#2e7d32", hover_color="#1b5e20")
        btn_charger.pack(side="left", padx=5, pady=5)

        btn_modifier = ctk.CTkButton(btn_frame, text="✏️  Modifier",
                                     command=lambda: action_modifier(),
                                     state="disabled", width=140, height=35,
                                     fg_color="#1565c0", hover_color="#0d47a1")
        btn_modifier.pack(side="left", padx=5, pady=5)

        btn_supprimer = ctk.CTkButton(btn_frame, text="🗑️  Supprimer",
                                      command=lambda: action_supprimer(),
                                      state="disabled", width=140, height=35,
                                      fg_color="#c62828", hover_color="#b71c1c")
        btn_supprimer.pack(side="left", padx=5, pady=5)

        # ---------- charger la liste ----------
        def charger_transferts(filtre=""):
            try:
                self.tree_transferts.delete(*self.tree_transferts.get_children())
                # Après rafraîchissement, aucune sélection → désactiver les boutons
                mettre_a_jour_boutons()

                conn = self.get_connection()
                if not conn:
                    return
                
                cur = conn.cursor()
                
                query = """
                    SELECT t.idtransfert, t.reftransfert, t.dateregistre, 
                           ms.designationmag as mag_sortie, me.designationmag as mag_entree, 
                           u.username
                    FROM tb_transfert t
                    LEFT JOIN tb_magasin ms ON t.idmagsortie = ms.idmag
                    LEFT JOIN tb_magasin me ON t.idmagentree = me.idmag
                    LEFT JOIN tb_users u ON t.iduser = u.iduser
                    WHERE t.deleted = 0
                """
                params = []
                if filtre:
                    query += """ AND (LOWER(t.reftransfert) LIKE LOWER(%s) OR 
                                  LOWER(ms.designationmag) LIKE LOWER(%s) OR 
                                  LOWER(me.designationmag) LIKE LOWER(%s))"""
                    params.extend([f"%{filtre}%", f"%{filtre}%", f"%{filtre}%"])
                
                query += " ORDER BY t.dateregistre DESC"
                
                cur.execute(query, tuple(params))
                
                transferts = cur.fetchall()
                for trf in transferts:
                    self.tree_transferts.insert("", "end", values=trf)
                
                cur.close()
                conn.close()
            except Exception as e:
                messagebox.showerror("Erreur", f"Erreur chargement transferts: {str(e)}")

        # ---------- activer/désactiver les boutons selon la sélection ----------
        def mettre_a_jour_boutons(*args):
            etat = "normal" if self.tree_transferts.selection() else "disabled"
            btn_charger.configure(state=etat)
            btn_modifier.configure(state=etat)
            btn_supprimer.configure(state=etat)

        self.tree_transferts.bind("<<TreeviewSelect>>", mettre_a_jour_boutons)

        # ---------- action : charger (lecture seule, comme avant) ----------
        def action_charger():
            selection = self.tree_transferts.selection()
            if not selection:
                return
            id_transfert = self.tree_transferts.item(selection[0])['values'][0]
            self.charger_transfert_selectionne(id_transfert)
            load_win.destroy()

        # ---------- action : modifier ----------
        def action_modifier():
            selection = self.tree_transferts.selection()
            if not selection:
                return
            id_transfert = self.tree_transferts.item(selection[0])['values'][0]
            ref_transfert = self.tree_transferts.item(selection[0])['values'][1]
            self.modifier_transfert(id_transfert, ref_transfert)
            load_win.destroy()

        # ---------- action : supprimer (soft-delete) ----------
        def action_supprimer():
            selection = self.tree_transferts.selection()
            if not selection:
                return
            item = self.tree_transferts.item(selection[0])
            id_transfert = item['values'][0]
            ref_transfert = item['values'][1]

            if not messagebox.askyesno("Confirmation suppression",
                    f"Êtes-vous sûr de vouloir supprimer le transfert\n"
                    f"« {ref_transfert} » ?\n\n"
                    f"Cette action est irréversible."):
                return

            try:
                conn = self.get_connection()
                if not conn:
                    return
                cur = conn.cursor()

                # Soft-delete détails puis en-tête
                cur.execute("UPDATE tb_transfertdetail SET deleted = 1 WHERE idtransfert = %s AND deleted = 0",
                            (id_transfert,))
                cur.execute("UPDATE tb_transfert SET deleted = 1 WHERE idtransfert = %s",
                            (id_transfert,))
                conn.commit()
                cur.close()
                conn.close()

                messagebox.showinfo("Supprimé", f"Transfert « {ref_transfert} » supprimé avec succès.")
                # Rafraîchir la liste
                charger_transferts(entry_search.get())

            except Exception as e:
                messagebox.showerror("Erreur", f"Erreur suppression: {str(e)}")

        # ---------- liaison clavier / double-clic ----------
        charger_transferts()
        entry_search.bind("<Return>", lambda e: charger_transferts(entry_search.get()))
        self.tree_transferts.bind("<Double-1>", lambda e: action_charger())


    def charger_transfert_selectionne(self, idtransfert):
        """Charge les détails du transfert sélectionné dans l'interface principale."""
        try:
            conn = self.get_connection()
            if not conn:
                return

            cur = conn.cursor()

            # 1. Infos transfert principal
            cur.execute("""
                SELECT t.reftransfert, t.dateregistre, t.description, 
                       ms.designationmag, me.designationmag, t.idmagsortie, t.idmagentree
                FROM tb_transfert t
                LEFT JOIN tb_magasin ms ON t.idmagsortie = ms.idmag
                LEFT JOIN tb_magasin me ON t.idmagentree = me.idmag
                WHERE t.idtransfert = %s
            """, (idtransfert,))
            transfert = cur.fetchone()

            if not transfert:
                messagebox.showwarning("Attention", "Transfert non trouvé.")
                cur.close()
                conn.close()
                return

            # On commence un nouveau transfert pour vider l'interface, sans générer de nouvelle référence
            self.nouveau_transfert(is_loading=True)

            # Remplir les champs principaux (en mode lecture seule pour la référence)
            self.entry_ref.configure(state="normal")
            self.entry_ref.delete(0, "end")
            self.entry_ref.insert(0, transfert[0]) # Référence
            self.entry_ref.configure(state="readonly")
            
            self.entry_date.delete(0, "end")
            self.entry_date.insert(0, str(transfert[1])) # Date
            
            self.entry_description.delete(0, "end")
            self.entry_description.insert(0, transfert[2] or '') # Description

            self.combo_mag_sortie.set(transfert[3]) # Magasin Sortie
            self.combo_mag_entree.set(transfert[4]) # Magasin Entrée
            
            # 2. Détails des articles
            cur.execute("""
                SELECT td.idarticle, td.idunite, u.codearticle, a.designation, u.designationunite, td.qttransfert
                FROM tb_transfertdetail td
                LEFT JOIN tb_article a ON td.idarticle = a.idarticle
                LEFT JOIN tb_unite u ON td.idunite = u.idunite
                WHERE td.idtransfert = %s AND td.deleted = 0
            """, (idtransfert,))
            details = cur.fetchall()

            # Remplir le Treeview et la liste interne
            self.articles_transfert = []
            for det in details:
                # Format: (idart, idunite, code, nom, unite, qte)
                
                # Treeview (pour l'affichage)
                self.tree.insert("", "end", values=(det[2], det[3], det[4], det[5]))
                
                # Liste interne (pour la gestion)
                self.articles_transfert.append({
                    'idarticle': det[0],
                    'idunite': det[1],
                    'code': det[2],
                    'nom': det[3],
                    'unite': det[4],
                    'quantite': det[5]
                })

            messagebox.showinfo("Succès", f"Transfert {transfert[0]} chargé. Mode Lecture Seule.")
            
            # Verrouiller l'enregistrement
            self.desactiver_edition()

            cur.close()
            conn.close()

        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur lors du chargement du transfert: {str(e)}")
    
    def modifier_transfert(self, idtransfert, ref_transfert):
        """Charge un transfert existant en MODE ÉDITION.
           Les champs restent modifiables et l'enregistrement fait un UPDATE
           sur le même idtransfert au lieu d'un INSERT."""
        try:
            conn = self.get_connection()
            if not conn:
                return

            cur = conn.cursor()

            # 1. Infos transfert principal
            cur.execute("""
                SELECT t.reftransfert, t.dateregistre, t.description, 
                       ms.designationmag, me.designationmag, t.idmagsortie, t.idmagentree
                FROM tb_transfert t
                LEFT JOIN tb_magasin ms ON t.idmagsortie = ms.idmag
                LEFT JOIN tb_magasin me ON t.idmagentree = me.idmag
                WHERE t.idtransfert = %s
            """, (idtransfert,))
            transfert = cur.fetchone()

            if not transfert:
                messagebox.showwarning("Attention", "Transfert non trouvé.")
                cur.close()
                conn.close()
                return

            # Vider l'interface sans générer de nouvelle référence
            self.nouveau_transfert(is_loading=True)

            # Remplir les champs (référence verrouillée, reste éditable)
            self.entry_ref.configure(state="normal")
            self.entry_ref.delete(0, "end")
            self.entry_ref.insert(0, transfert[0])
            self.entry_ref.configure(state="readonly")

            self.entry_date.delete(0, "end")
            self.entry_date.insert(0, str(transfert[1]))

            self.entry_description.delete(0, "end")
            self.entry_description.insert(0, transfert[2] or '')

            self.combo_mag_sortie.set(transfert[3])
            self.combo_mag_entree.set(transfert[4])

            # 2. Détails des articles
            cur.execute("""
                SELECT td.idarticle, td.idunite, u.codearticle, a.designation, u.designationunite, td.qttransfert
                FROM tb_transfertdetail td
                LEFT JOIN tb_article a ON td.idarticle = a.idarticle
                LEFT JOIN tb_unite u ON td.idunite = u.idunite
                WHERE td.idtransfert = %s AND td.deleted = 0
            """, (idtransfert,))
            details = cur.fetchall()

            self.articles_transfert = []
            for det in details:
                self.tree.insert("", "end", values=(det[2], det[3], det[4], det[5]))
                self.articles_transfert.append({
                    'idarticle': det[0],
                    'idunite': det[1],
                    'code': det[2],
                    'nom': det[3],
                    'unite': det[4],
                    'quantite': det[5]
                })

            cur.close()
            conn.close()

            # 3. Activer l'édition complète ET mémoriser l'id pour le UPDATE
            self.activer_edition()
            self.idtransfert_en_cours = idtransfert   # ← clé pour distinguer UPDATE / INSERT

            messagebox.showinfo("Mode Modification",
                f"Transfert « {ref_transfert} » chargé en mode modification.\n"
                f"Vous pouvez changer les articles, les quantités ou les magasins\n"
                f"puis appuyer sur « Enregistrer ».")

        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur lors de la modification du transfert: {str(e)}")

    def nouveau_transfert(self, is_loading=False):
        # Réinitialiser tous les champs
        self.entry_date.delete(0, "end")
        self.entry_date.insert(0, datetime.now().strftime("%Y-%m-%d %H:%M:%S"))
        self.entry_description.delete(0, "end")
        self.entry_quantite.delete(0, "end")
        
        self.entry_code_article.configure(state="normal")
        self.entry_code_article.delete(0, "end")
        self.entry_code_article.configure(state="readonly")
        
        self.entry_nom_article.configure(state="normal")
        self.entry_nom_article.delete(0, "end")
        self.entry_nom_article.configure(state="readonly")
        
        self.entry_unite.configure(state="normal")
        self.entry_unite.delete(0, "end")
        self.entry_unite.configure(state="readonly")
        
        # Vider le treeview
        self.tree.delete(*self.tree.get_children())
        self.articles_transfert = []
        
        # Nouvelle référence
        if not is_loading: # On ne génère une nouvelle référence que si on commence vraiment un nouveau transfert
            self.generer_reference()
            self.activer_edition() # Réactiver l'édition
            self.idtransfert_en_cours = None  # Réinitialiser → prochain enregistrement sera un INSERT


# Exemple d'utilisation
if __name__ == "__main__":
    ctk.set_appearance_mode("light")
    ctk.set_default_color_theme("blue")
    
    root = ctk.CTk()
    root.title("Transfert de Stock")
    root.geometry("600x800")
    
    # ID utilisateur (à récupérer depuis votre système d'authentification)
    user_id = 1
    
    app = PageTransfert(root, user_id)
    app.pack(fill="both", expand=True)
    
    root.mainloop()