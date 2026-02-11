import customtkinter as ctk
from tkinter import ttk, messagebox, filedialog
import psycopg2
import json
import pandas as pd
from datetime import datetime
from tkcalendar import DateEntry # Importation nécessaire

class PageDetailFacture(ctk.CTkToplevel):
    """Fenêtre affichant les articles d'une facture spécifique"""
    def __init__(self, master, idvente, refvente):
        super().__init__(master)
        self.title(f"Détails Facture : {refvente}")
        self.geometry("800x500")
        self.attributes('-topmost', True)
        
        self.grid_columnconfigure(0, weight=1)
        self.grid_rowconfigure(0, weight=1)

        container = ctk.CTkFrame(self)
        container.grid(row=0, column=0, sticky="nsew", padx=20, pady=20)
        
        cols = ("code", "designation", "qte", "prix", "total")
        self.tree = ttk.Treeview(container, columns=cols, show="headings")
        
        # --- CONFIGURATION DES COLONNES ---
        self.tree.heading("code", text="Code")
        self.tree.heading("designation", text="Désignation")
        self.tree.heading("qte", text="Qté")
        self.tree.heading("prix", text="Prix Unit.")
        self.tree.heading("total", text="Total")

        # Réduction de 75% de la colonne code (fixée à 45 pixels)
        self.tree.column("code", width=70, minwidth=60, anchor="center") 
        self.tree.column("designation", width=350, anchor="w")
        self.tree.column("qte", width=70, anchor="center")
        self.tree.column("prix", width=100, anchor="e")
        self.tree.column("total", width=120, anchor="e")
        
        self.tree.pack(side="left", fill="both", expand=True)
        
        # Scrollbar pour le confort
        scroll = ttk.Scrollbar(container, orient="vertical", command=self.tree.yview)
        self.tree.configure(yscrollcommand=scroll.set)
        scroll.pack(side="right", fill="y")
        
        self.charger_details(idvente)

    def charger_details(self, idvente):
        try:
            with open('config.json') as f:
                config = json.load(f)
            conn = psycopg2.connect(**config['database'])
            cursor = conn.cursor()
            
            # Requête SQL corrigée selon votre structure réelle
            sql = """
                SELECT 
                    u.codearticle, 
                    a.designation, 
                    vd.qtvente, 
                    vd.prixunit, 
                    (vd.qtvente * vd.prixunit) as total
                FROM tb_ventedetail vd
                INNER JOIN tb_unite u ON vd.idunite = u.idunite
                INNER JOIN tb_article a ON vd.idarticle = a.idarticle
                WHERE vd.idvente = %s
            """
            cursor.execute(sql, (idvente,))
            
            for r in cursor.fetchall():
                # Formatage avec séparateur de milliers pour les prix
                self.tree.insert("", "end", values=(
                    r[0], 
                    r[1], 
                    r[2], 
                    f"{float(r[3]):,.0f}", 
                    f"{float(r[4]):,.0f}"
                ))
            
            conn.close()
        except Exception as e:
            messagebox.showerror("Erreur SQL", f"Erreur lors du chargement des détails : {e}")

class PageListeFacture(ctk.CTkFrame):
    def __init__(self, parent, session_data=None):
        super().__init__(parent)
        
        self.grid_columnconfigure(0, weight=1)
        self.grid_rowconfigure(1, weight=1)

        self.setup_ui()
        self.charger_donnees()

    def connect_db(self):
        try:
            with open('config.json') as f:
                config = json.load(f)
            return psycopg2.connect(**config['database'])
        except Exception as e:
            return None

    def setup_ui(self):
        # --- Barre de recherche ---
        search_frame = ctk.CTkFrame(self)
        search_frame.grid(row=0, column=0, sticky="ew", padx=10, pady=10)

        # 1. Recherche textuelle existante
        self.entry_search = ctk.CTkEntry(search_frame, width=250, placeholder_text="Facture, Client...")
        self.entry_search.pack(side="left", padx=5, pady=10)
        self.entry_search.bind("<Return>", lambda e: self.charger_donnees())

        # 2. Sélecteur Date Début
        ctk.CTkLabel(search_frame, text="Du:").pack(side="left", padx=2)
        self.date_debut = DateEntry(search_frame, width=12, background='darkblue', 
                                   foreground='white', borderwidth=2, date_pattern='dd/mm/yyyy')
        self.date_debut.pack(side="left", padx=5)

        # 3. Sélecteur Date Fin
        ctk.CTkLabel(search_frame, text="Au:").pack(side="left", padx=2)
        self.date_fin = DateEntry(search_frame, width=12, background='darkblue', 
                                 foreground='white', borderwidth=2, date_pattern='dd/mm/yyyy')
        self.date_fin.pack(side="left", padx=5)

        # Boutons
        ctk.CTkButton(search_frame, text="🔍 Filtrer", width=80, 
                      command=self.charger_donnees).pack(side="left", padx=5)
        
        self.btn_export = ctk.CTkButton(search_frame, text="📊 Excel", width=80,
                                        fg_color="#1e7e34", hover_color="#155724", 
                                        command=self.exporter_excel)
        self.btn_export.pack(side="right", padx=10)

        # --- Tableau ---
        table_frame = ctk.CTkFrame(self)
        table_frame.grid(row=1, column=0, sticky="nsew", padx=10, pady=5)
        
        columns = ("date", "n_facture", "client", "montant", "user")
        self.tree = ttk.Treeview(table_frame, columns=columns, show="headings")
        
        for col in columns:
            self.tree.heading(col, text=col.replace("_", " ").title())
            self.tree.column(col, anchor="center" if col != "client" else "w")

        self.tree.pack(side="left", fill="both", expand=True)
        self.tree.bind("<Double-1>", self.on_double_click)

        # --- Footer ---
        footer_frame = ctk.CTkFrame(self)
        footer_frame.grid(row=2, column=0, sticky="ew", padx=10, pady=10)
        self.lbl_count = ctk.CTkLabel(footer_frame, text="Factures: 0")
        self.lbl_count.pack(side="left", padx=20)
        self.lbl_total_mt = ctk.CTkLabel(footer_frame, text="Total: 0", font=("Arial", 16, "bold"), text_color="#2ecc71")
        self.lbl_total_mt.pack(side="right", padx=20)

    def formater_montant(self, valeur):
        """Transforme un nombre en format 1.000,00"""
        try:
            # Formatage initial : 1,000.00
            n = f"{float(valeur):,.2f}"
            # Remplacement pour le format FR : 1.000,00
            return n.replace(",", "X").replace(".", ",").replace("X", ".")
        except:
            return "0,00"

    def charger_donnees(self):
        for item in self.tree.get_children(): self.tree.delete(item)
        
        val = self.entry_search.get().strip()
        d1 = self.date_debut.get_date()
        d2 = self.date_fin.get_date()
        
        conn = self.connect_db()
        if not conn: return
        
        try:
            cursor = conn.cursor()
            # SQL incluant le filtre de date
            sql = """
                SELECT v.dateregistre, v.refvente, COALESCE(c.nomcli, 'Client Divers'), v.totmtvente, u.username, v.id
                FROM tb_vente v
                LEFT JOIN tb_client c ON v.idclient = c.idclient
                LEFT JOIN tb_users u ON v.iduser = u.iduser
                WHERE (v.refvente ILIKE %s OR c.nomcli ILIKE %s)
                AND v.dateregistre::date BETWEEN %s AND %s
                ORDER BY v.dateregistre DESC, v.id DESC
            """
            cursor.execute(sql, (f"%{val}%", f"%{val}%", d1, d2))
            rows = cursor.fetchall()
            
            total = 0
            for r in rows:
                mt_format = self.formater_montant(r[3]) # Utilisation de la fonction
                self.tree.insert("", "end", iid=str(r[5]), values=(
                    r[0].strftime("%d/%m/%Y %H:%M:%S"), 
                    r[1], 
                    r[2], 
                    mt_format, 
                    r[4]
                ))
                total += float(r[3])
        
            self.lbl_count.configure(text=f"Total factures : {len(rows)}")
            self.lbl_total_mt.configure(text=f"Montant Total : {self.formater_montant(total)} FG")
        finally:
            conn.close()

    def on_double_click(self, event):
        """Action lors du double clic"""
        selected_item = self.tree.focus()
        if not selected_item: return
        
        # Récupérer les infos de la ligne
        values = self.tree.item(selected_item)['values']
        ref_facture = values[1]
        
        # Ouvrir la fenêtre de détails
        PageDetailFacture(self, selected_item, ref_facture)

    def exporter_excel(self):
        lignes = []
        for item in self.tree.get_children():
            lignes.append(self.tree.item(item)['values'])
        
        if not lignes:
            messagebox.showwarning("Vide", "Rien à exporter")
            return

        df = pd.DataFrame(lignes, columns=["Date", "N° Facture", "Client", "Montant", "Vendeur"])
        
        file_path = filedialog.asksaveasfilename(
            defaultextension=".xlsx",
            filetypes=[("Excel files", "*.xlsx")],
            initialfile=f"Rapport_Ventes_{datetime.now().strftime('%Y%m%d')}"
        )
        
        if file_path:
            df.to_excel(file_path, index=False)
            messagebox.showinfo("Export réussi", f"Le fichier a été enregistré sous :\n{file_path}")



