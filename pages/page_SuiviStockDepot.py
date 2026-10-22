import customtkinter as ctk
import psycopg2
import json
from tkinter import messagebox, filedialog, ttk
import winsound
import pandas as pd
from datetime import datetime
from resource_utils import get_config_path, safe_file_read
from stock_manager_update_latest import StockManagerUpdateLatest


class PageSuiviStockDepot(ctk.CTkFrame):
    def __init__(self, master, iduser=None):
        super().__init__(master)
        self.iduser = iduser
        
        self.grid_columnconfigure(0, weight=1)
        self.grid_rowconfigure(1, weight=1)

        # --- Entête ---
        self.header_frame = ctk.CTkFrame(self, height=60)
        self.header_frame.grid(row=0, column=0, sticky="ew", padx=10, pady=10)
        
        self.lbl_titre = ctk.CTkLabel(self.header_frame, text="🪧 SUIVI DES STOCKS PAR DÉPÔT", font=("Arial", 18, "bold"))
        self.lbl_titre.pack(side="left", padx=20)
        
        self.icon_notif = ctk.CTkLabel(self.header_frame, text="🔔", font=("Arial", 28))
        self.icon_notif.pack(side="right", padx=20)

        # --- Zone du Tableau (Treeview) ---
        self.setup_treeview()
        
        # --- Barre de boutons en bas ---
        self.bottom_frame = ctk.CTkFrame(self, fg_color="transparent")
        self.bottom_frame.grid(row=2, column=0, sticky="ew", padx=10, pady=10)

        self.btn_export = ctk.CTkButton(self.bottom_frame, text="📊 Export Excel", 
                                        fg_color="#1D6F42", hover_color="#145A32",
                                        command=self.exporter_excel)
        self.btn_export.pack(side="left", padx=10)

        self.lbl_status = ctk.CTkLabel(self.bottom_frame, text="Dernière mise à jour : --:--", font=("Arial", 10))
        self.lbl_status.pack(side="right", padx=10)

        self.donnees_actuelles = []
        self.boucle_verification()

    def setup_treeview(self):
        self.tree_frame = ctk.CTkFrame(self)
        self.tree_frame.grid(row=1, column=0, sticky="nsew", padx=10, pady=10)
        
        # --- Configuration du Style pour agrandir les lignes ---
        style = ttk.Style()
        # "clam" est souvent utilisé pour permettre une meilleure personnalisation des couleurs
        style.theme_use("clam") 
        
        style.configure("Treeview", 
                        rowheight=22,
                        font=('Segoe UI', 8),
                        background="#FFFFFF",
                        foreground="#000000",
                        fieldbackground="#FFFFFF",
                        borderwidth=0)
        
        style.configure("Treeview.Heading", 
                        font=('Segoe UI', 8, 'bold'), 
                        background="#E8E8E8",
                        foreground="#000000")

        # Couleurs pour l'alternance (Zebra Stripes)
        style.map("Treeview", background=[('selected', '#1f538d')])

        columns = ("code", "designation", "unite", "stock", "alertdepot", "magasin")
        self.tree = ttk.Treeview(self.tree_frame, columns=columns, show="headings", selectmode="browse")
        
        self.tree.heading("code", text="Code Article")
        self.tree.heading("designation", text="Désignation")
        self.tree.heading("unite", text="Unité")
        self.tree.heading("stock", text="Stock Actuel")
        self.tree.heading("alertdepot", text="Seuil Alerte Dépôt")
        self.tree.heading("magasin", text="Magasin / Dépôt")

        self.tree.column("code", width=120, anchor="center")
        self.tree.column("designation", width=250, anchor="w")
        self.tree.column("unite", width=100, anchor="center")
        self.tree.column("stock", width=100, anchor="center")
        self.tree.column("alertdepot", width=120, anchor="center")
        self.tree.column("magasin", width=200, anchor="w")

        # Configuration des tags (Couleurs)
        self.tree.tag_configure('oddrow', background="#f0f0f0")  # Gris très clair
        self.tree.tag_configure('evenrow', background="#ffffff") # Blanc
        self.tree.tag_configure('alerte', foreground="red", font=("Arial", 11, "bold"))
        
        scrollbar = ttk.Scrollbar(self.tree_frame, orient="vertical", command=self.tree.yview)
        self.tree.configure(yscrollcommand=scrollbar.set)
        
        self.tree.pack(side="left", fill="both", expand=True)
        scrollbar.pack(side="right", fill="y")

    def connect_db(self):
        try:
            from pages.db_helper import connect_page_db
            return connect_page_db()
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur de connexion : {e}")
            return None

    def verifier_stocks(self):
        conn = self.connect_db()
        if not conn: 
            return
        
        try:
            with conn.cursor() as cursor:
                cursor.execute("""
                    SELECT a.idarticle, a.designation, a.alertdepot, a.idmag,
                           COALESCE(m.designationmag, 'Non assigné') AS magasin
                    FROM tb_article a
                    LEFT JOIN tb_magasin m
                      ON m.idmag = a.idmag AND m.deleted = 0
                    WHERE a.deleted = 0
                    ORDER BY a.designation
                """)
                articles = cursor.fetchall()

            with StockManagerUpdateLatest.from_db_config() as manager:
                unites_par_article = {}
                for unite in manager.get_unites_tous_articles():
                    idarticle = int(unite["idarticle"])
                    precedente = unites_par_article.get(idarticle)
                    if (
                        precedente is None
                        or int(unite["niveau"]) > int(precedente["niveau"])
                    ):
                        unites_par_article[idarticle] = unite
                stocks_par_magasin = {
                    (int(row["idarticle"]), int(row["idmag"])): float(
                        row.get("stock_en_base", 0.0) or 0.0
                    )
                    for row in manager.get_stocks_tous_articles_par_magasin()
                }
            
            for item in self.tree.get_children():
                self.tree.delete(item)
            
            self.donnees_actuelles = []
            alerte_detectee = False

            for idarticle, desig, seuil, idmag, mag in articles:
                unite_info = unites_par_article.get(int(idarticle))
                if unite_info is None:
                    continue
                facteur = float(unite_info["facteur_vers_base"] or 0.0)
                if facteur <= 0:
                    raise ValueError(
                        f"Facteur de conversion invalide pour l'article {idarticle}."
                    )
                code = unite_info["codearticle"]
                unite = unite_info["designationunite"]
                stock_base = stocks_par_magasin.get(
                    (int(idarticle), int(idmag)), 0.0
                ) if idmag is not None else 0.0
                stock = stock_base / facteur
                seuil = seuil or 0
                stock_formate = "{:.2f}".format(float(stock))
                
                # Gestion de l'alternance des couleurs et de l'alerte
                tags = []
                if stock <= seuil:
                    tags.append('alerte')
                    alerte_detectee = True
                
                # Ajouter la couleur de ligne alternée si pas d'alerte (ou en complément)
                if i % 2 == 0:
                    tags.append('evenrow')
                else:
                    tags.append('oddrow')
                
                self.tree.insert("", "end", values=(code, desig, unite, stock_formate, seuil, mag), tags=tuple(tags))
                self.donnees_actuelles.append(
                    (code, desig, unite, stock, seuil, mag)
                )

            if alerte_detectee:
                self.notifier()
            else:
                self.icon_notif.configure(text_color="white")

        except Exception as e:
            print(f"Erreur calcul stock centralisé: {e}")
            messagebox.showerror("Erreur de stock", str(e))
        finally:
            conn.close()

    def boucle_verification(self):
        self.verifier_stocks()
        now = datetime.now().strftime("%H:%M:%S")
        self.lbl_status.configure(text=f"Mise à jour : {now}")
        self.after(60000, self.boucle_verification)

    def notifier(self):
        winsound.Beep(1000, 400)
        current = self.icon_notif.cget("text_color")
        self.icon_notif.configure(text_color="red" if current != "red" else "gray")

    def exporter_excel(self):
        if not self.donnees_actuelles:
            messagebox.showwarning("Export", "Aucune donnée à exporter.")
            return

        filepath = filedialog.asksaveasfilename(
            defaultextension=".xlsx",
            filetypes=[("Excel files", "*.xlsx")],
            initialfile=f"Alerte_Stock_Depot_{datetime.now().strftime('%Y%m%d_%H%M')}"
        )

        if filepath:
            try:
                df = pd.DataFrame(self.donnees_actuelles, columns=[
                    "Code Article", "Désignation", "Unité", "Stock Actuel", "Seuil Alerte Dépôt", "Magasin"
                ])
                df.to_excel(filepath, index=False)
                messagebox.showinfo("Succès", "Fichier Excel généré.")
                try:
                    from log_utils import AppLogger
                    AppLogger(session_data=getattr(self, "session_data", {}) or {}).log(
                        action="Export Excel",
                        element="Suivi Stock Dépôt",
                        details=f"export suivi stock dépôt, lignes={len(df)}, fichier={os.path.basename(filepath)}",
                        value=filepath,
                    )
                except Exception:
                    pass
            except Exception as e:
                messagebox.showerror("Erreur", f"Export impossible : {e}")
