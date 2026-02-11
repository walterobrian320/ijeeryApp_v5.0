import customtkinter as ctk
import json
import os
import psycopg2 # Assurez-vous d'avoir installé psycopg2 : pip install psycopg2-binary

class ConfigDataBase(ctk.CTk):
    def __init__(self):
        super().__init__()
        self.title("Configuration de la base de données")
        self.geometry("600x550")
        self.resizable(False, False)

        self.config_file_path = "config.json"
        self.config_data = self.load_config()

        self.create_widgets()
        self.set_entries_state("disabled")
        
        # Charger les bases de données après la création des widgets
        self.update_combobox_list()

    def load_config(self):
        if os.path.exists(self.config_file_path):
            try:
                with open(self.config_file_path, 'r') as f:
                    return json.load(f)
            except json.JSONDecodeError:
                return self.default_config()
        return self.default_config()

    def default_config(self):
        return {
            "database": {
                "host": "",
                "user": "",
                "password": "",
                "database": "",
                "port": 5432
            }
        }

    def fetch_database_names(self):
        """Récupère les noms des bases depuis la table tb_baseliste."""
        db_list = []
        try:
            # On utilise les identifiants actuels pour se connecter et lister les noms
            conn = psycopg2.connect(
                host=self.config_data['database']['host'],
                user=self.config_data['database']['user'],
                password=self.config_data['database']['password'],
                database=self.config_data['database']['database'],
                port=self.config_data['database']['port']
            )
            cursor = conn.cursor()
            # Requête pour récupérer la colonne nombase
            cursor.execute("SELECT nombase FROM tb_baseliste;")
            rows = cursor.fetchall()
            db_list = [row[0] for row in rows]
            cursor.close()
            conn.close()
        except Exception as e:
            print(f"Erreur de récupération : {e}")
            # Si erreur, on garde au moins la valeur actuelle du config
            current = self.config_data['database']['database']
            db_list = [current] if current else ["postgres"]
        
        return db_list

    def update_combobox_list(self):
        """Met à jour les valeurs de la ComboBox."""
        names = self.fetch_database_names()
        self.database_combo.configure(values=names)
        if self.config_data['database']['database'] in names:
            self.database_combo.set(self.config_data['database']['database'])

    def save_config(self):
        if self.save_button.cget("state") == "disabled":
            return

        try:
            new_port = int(self.port_entry.get())
        except ValueError:
            self.status_label.configure(text="Erreur: Le port doit être un nombre entier.", text_color="red")
            return

        self.config_data['database'].update({
            "host": self.host_entry.get(),
            "user": self.user_entry.get(),
            "password": self.password_entry.get(),
            "database": self.database_combo.get(), # Récupère la valeur de la ComboBox
            "port": new_port
        })

        with open(self.config_file_path, 'w') as f:
            json.dump(self.config_data, f, indent=4)

        self.status_label.configure(text="Configuration sauvegardée avec succès!", text_color="green")
        self.set_entries_state("disabled")
        self.save_button.configure(state="disabled")
        self.edit_button.configure(state="normal")
        self.after(2000, self.destroy)

    def set_entries_state(self, state):
        self.host_entry.configure(state=state)
        self.user_entry.configure(state=state)
        self.password_entry.configure(state=state)
        self.database_combo.configure(state=state) # État de la ComboBox
        self.port_entry.configure(state=state)
    
    def enable_editing(self):
        self.set_entries_state("normal")
        self.status_label.configure(text="Mode modification activé.", text_color="orange")
        self.edit_button.configure(state="disabled")
        self.save_button.configure(state="normal")

    def create_widgets(self):
        frame = ctk.CTkFrame(self)
        frame.pack(padx=20, pady=20, fill="both", expand=True)

        # Host
        ctk.CTkLabel(frame, text="Host:").pack(pady=(10, 0))
        self.host_entry = ctk.CTkEntry(frame)
        self.host_entry.insert(0, self.config_data['database']['host'])
        self.host_entry.pack()

        # Utilisateur
        ctk.CTkLabel(frame, text="Utilisateur:").pack(pady=(10, 0))
        self.user_entry = ctk.CTkEntry(frame)
        self.user_entry.insert(0, self.config_data['database']['user'])
        self.user_entry.pack()

        # Mot de passe
        ctk.CTkLabel(frame, text="Mot de passe:").pack(pady=(10, 0))
        self.password_entry = ctk.CTkEntry(frame, show="*")
        self.password_entry.insert(0, self.config_data['database']['password'])
        self.password_entry.pack()

        # Base de données (Transformé en ComboBox)
        ctk.CTkLabel(frame, text="Base de données:").pack(pady=(10, 0))
        self.database_combo = ctk.CTkComboBox(frame, values=["Chargement..."])
        self.database_combo.set(self.config_data['database']['database'])
        self.database_combo.pack()

        # Port
        ctk.CTkLabel(frame, text="Port:").pack(pady=(10, 0))
        self.port_entry = ctk.CTkEntry(frame)
        self.port_entry.insert(0, str(self.config_data['database']['port']))
        self.port_entry.pack()

        button_frame = ctk.CTkFrame(frame)
        button_frame.pack(pady=20)

        self.edit_button = ctk.CTkButton(button_frame, text="Modifier", command=self.enable_editing)
        self.edit_button.pack(side="left", padx=5)

        self.save_button = ctk.CTkButton(button_frame, text="Sauvegarder", command=self.save_config, state="disabled")
        self.save_button.pack(side="left", padx=5)

        self.status_label = ctk.CTkLabel(frame, text="")
        self.status_label.pack()

if __name__ == "__main__":
    app = ConfigDataBase()
    app.mainloop()