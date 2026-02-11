
import customtkinter as ctk
from tkinter import messagebox
import psycopg2


class ConfigDBWindow(ctk.CTkToplevel):
    def __init__(self, master=None):
        super().__init__(master)
        self.title("Configuration de la Base de Données")
        self.geometry("450x380")
        self.resizable(False, False)
        self.config(padx=20, pady=20)

        self.fields = {}

        labels = [
            ("Nom de la BD", "dbname"),
            ("Utilisateur", "username"),
            ("Mot de passe", "password"),
            ("Hôte", "host"),
            ("Port", "port"),
        ]

        for i, (label_text, key) in enumerate(labels):
            label = ctk.CTkLabel(self, text=label_text + " :")
            label.grid(row=i, column=0, sticky="w", pady=(10, 5))

            entry = ctk.CTkEntry(self, width=250)
            if key == "password":
                entry.configure(show="*")

            entry.grid(row=i, column=1, pady=(10, 5), padx=(10, 0))
            self.fields[key] = entry

        self.save_btn = ctk.CTkButton(self, text="Enregistrer", command=self.save_config, fg_color="green")
        self.save_btn.grid(row=len(labels), columnspan=2, pady=20)

        self.load_config()

    def connect_local(self):
        """
        Connexion à la base locale PostgreSQL avec une configuration par défaut,
        utilisée uniquement pour accéder à la table de configuration.
        """
        return psycopg2.connect(
            dbname="dbfiaram", user="postgres", password="root", host="localhost", port="5432"
        )

    def load_config(self):
        try:
            conn = self.connect_local()
            cur = conn.cursor()
            cur.execute("SELECT dbname, username, password, host, port FROM tb_configdb ORDER BY id DESC LIMIT 1")
            row = cur.fetchone()
            if row:
                keys = ["dbname", "username", "password", "host", "port"]
                for k, val in zip(keys, row):
                    self.fields[k].delete(0, "end")
                    self.fields[k].insert(0, val)
            cur.close()
            conn.close()
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur lors du chargement : {e}")

    def save_config(self):
        values = {k: self.fields[k].get() for k in self.fields}

        try:
            conn = self.connect_local()
            cur = conn.cursor()
            cur.execute("DELETE FROM tb_configdb")  # Toujours 1 seule ligne
            cur.execute("""
                INSERT INTO tb_configdb (dbname, username, password, host, port)
                VALUES (%s, %s, %s, %s, %s)
            """, (
                values["dbname"],
                values["username"],
                values["password"],
                values["host"],
                values["port"]
            ))
            conn.commit()
            cur.close()
            conn.close()
            messagebox.showinfo("Succès", "Configuration enregistrée avec succès.")
            self.destroy()
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur d'enregistrement : {e}")
