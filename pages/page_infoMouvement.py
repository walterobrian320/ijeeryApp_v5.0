import customtkinter as ctk
from tkinter import messagebox
import psycopg2
import json

# Importation des pages existantes
from pages.page_CmdFrs import PageCommandeFrs
from pages.page_livrFrs import PageBonReception
from pages.page_transfert import PageTransfert
from pages.page_sortie import PageSortie
from pages.page_SuiviCommande import PageSuiviCommande

class PasswordDialog(ctk.CTkToplevel):
    def __init__(self, title, text):
        super().__init__()
        self.title(title)
        self.geometry("300x150")
        self.result = None
        
        self.label = ctk.CTkLabel(self, text=text)
        self.label.pack(pady=10)
        
        # Le paramètre show="*" cache les caractères
        self.entry = ctk.CTkEntry(self, show="*")
        self.entry.pack(pady=5)
        self.entry.focus_set()
        
        self.btn = ctk.CTkButton(self, text="Valider", command=self.ok)
        self.btn.pack(pady=10)
        
        self.grab_set()  # Rend la fenêtre modale
        self.wait_window()

    def ok(self):
        self.result = self.entry.get()
        self.destroy()


class PageInfoMouvementStock(ctk.CTkFrame):
    """Frame principal avec navigation - Pour intégration dans app_main"""
    def __init__(self, parent, iduser, **kwargs):
        super().__init__(parent, **kwargs)
        
        self.iduser = iduser  # ID de l'utilisateur connecté
        
        # Configuration du thème
        ctk.set_appearance_mode("light")
        ctk.set_default_color_theme("blue")
        
        # Connexion à la base de données
        self.db_connection = self.connect_db()
        
        if not self.db_connection:
            messagebox.showwarning("Avertissement", "L'application démarre sans connexion à la base de données.")
        
        # Container principal - Configuration de la grille
        self.grid_rowconfigure(0, weight=1)
        self.grid_columnconfigure(1, weight=1)
        
        # Création des composants
        self.create_sidebar()
        self.create_content_area()
        
        # Dictionnaire des pages
        self.pages = {}
        self.current_page = None
        
        # Afficher la première page par défaut
        self.show_page("Mise à jour BC")
    
    def connect_db(self):
        """Connexion à la base de données PostgreSQL"""
        try:
            # Assurez-vous que 'config.json' existe et est accessible
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
        
    def create_sidebar(self):
        """Créer le menu latéral"""
        self.sidebar = ctk.CTkFrame(self, width=150, corner_radius=0, fg_color="#3b82f6")
        self.sidebar.grid(row=0, column=0, sticky="nsew")
        self.sidebar.grid_rowconfigure(5, weight=1)
        self.sidebar.grid_propagate(False)  # Empêcher le redimensionnement
        
        # Titre du menu
        title = ctk.CTkLabel(
            self.sidebar,
            text="Mise à jour",
            font=("Arial", 20, "bold"),
            text_color="white"
        )
        title.grid(row=0, column=0, padx=20, pady=30)
        
        # Boutons du menu
        self.menu_buttons = {}
        menus = [
            ("Mise à jour BC", "PageCommandeFrs"),
            ("Mise à jour BR", "PageBonReception"),
            ("Mise à jour Transfert", "PageTransfert"),
            ("Mise à jour Sortie", "PageSortie"),
            ("Suivi Commande", "PageSuiviCommande")
        ]
        
        for idx, (menu_name, page_class) in enumerate(menus, start=1):
            btn = ctk.CTkButton(
                self.sidebar,
                text=menu_name,
                font=("Arial", 13),
                fg_color="transparent",
                hover_color="#2563eb",
                anchor="w",
                height=40,
                command=lambda m=menu_name: self.show_page(m)
            )
            btn.grid(row=idx, column=0, padx=10, pady=5, sticky="ew")
            self.menu_buttons[menu_name] = btn
    
    def create_content_area(self):
        """Créer la zone de contenu principal"""
        self.content_frame = ctk.CTkFrame(self, corner_radius=0, fg_color="#f8fafc")
        self.content_frame.grid(row=0, column=1, sticky="nsew")
        
        # Message initial
        self.initial_label = ctk.CTkLabel(
            self.content_frame,
            text="⚙️ Prêt à travailler\n\nSélectionnez une option dans le menu",
            font=("Arial", 18),
            text_color="#94a3b8"
        )
        self.initial_label.place(relx=0.5, rely=0.5, anchor="center")
        
    def verifier_code_autorisation(self, code_saisi):
        """Vérifie si le code existe dans la table tb_codeautorisation"""
        if not self.db_connection:
            return False
        try:
            cursor = self.db_connection.cursor()
            query = "SELECT 1 FROM tb_codeautorisation WHERE code = %s"
            cursor.execute(query, (code_saisi,))
            result = cursor.fetchone()
            cursor.close()
            return result is not None
        except Exception as e:
            print(f"Erreur vérification code: {e}")
            return False
    
    def show_page(self, menu_name):
        """Afficher la page correspondant au menu sélectionné"""
        
        if menu_name == "Mise à jour Sortie":
            # Utilisation du dialogue personnalisé avec mot de passe caché
            dialog = PasswordDialog("Accès Sécurisé", "Entrez le code d'autorisation :")
            code = dialog.result
        
            if code:
                if not self.verifier_code_autorisation(code):
                    messagebox.showerror("Accès Refusé", "Code d'autorisation invalide.")
                    return
            else:
                return # Annulation ou champ vide
        
        # Cacher le label initial
        if self.initial_label:
            self.initial_label.place_forget()
            self.initial_label = None
        
        # Mapping menu -> classe de page (IMPORTÉES)
        page_mapping = {
            "Mise à jour BC": PageCommandeFrs,
            "Mise à jour BR": PageBonReception,
            "Mise à jour Transfert": PageTransfert,
            "Mise à jour Sortie": PageSortie,
            "Suivi Commande" : PageSuiviCommande
        }
        
        # Cacher la page actuelle
        if self.current_page:
            self.current_page.pack_forget()
        
        # Créer ou afficher la page demandée
        if menu_name not in self.pages:
            page_class = page_mapping[menu_name]
            
            # IMPORTANT : Passer le bon paramètre selon la classe
            try:
                if page_class == PageCommandeFrs:
                    self.pages[menu_name] = page_class(self.content_frame, self.iduser)
                elif page_class == PageBonReception:
                    self.pages[menu_name] = page_class(self.content_frame, self.iduser)
                elif page_class == PageTransfert:
                    self.pages[menu_name] = page_class(self.content_frame, self.iduser)
                elif page_class == PageSortie:
                    self.pages[menu_name] = page_class(self.content_frame, self.iduser)
                elif page_class == PageSuiviCommande:
                    self.pages[menu_name] = page_class(self.content_frame) # Pas d'iduser ici
                else:
                    self.pages[menu_name] = page_class(self.content_frame, self.iduser)
            except Exception as e:
                messagebox.showerror("Erreur", f"Erreur lors du chargement de la page {menu_name}:\n{str(e)}")
                return
        
        self.current_page = self.pages[menu_name]
        self.current_page.pack(fill="both", expand=True)
        
        # Forcer la mise à jour de l'affichage
        self.content_frame.update_idletasks()
        
        # Mettre à jour l'apparence des boutons
        for btn_name, btn in self.menu_buttons.items():
            if btn_name == menu_name:
                btn.configure(fg_color="#2563eb")
            else:
                btn.configure(fg_color="transparent")


# Test standalone si lancé directement
if __name__ == "__main__":
    # ID utilisateur (à récupérer depuis votre système d'authentification)
    iduser = 1
    
    # Créer une fenêtre de test
    app = ctk.CTk()
    app.title("Test - Mise à jour")
    app.geometry("1400x800")
    
    # Créer et afficher le frame
    page = PageInfoMouvementStock(app, iduser)
    page.pack(fill="both", expand=True)
    
    app.mainloop()