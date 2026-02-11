import customtkinter as ctk
from page_login import LoginWindow # Importation absolue pour page_login.py

if __name__ == "__main__":
    # Configure le mode d'apparence de CustomTkinter (Light, Dark, System)
    ctk.set_appearance_mode("light")
    ctk.set_default_color_theme("blue")

    # Crée et lance la page de connexion
    login_app = LoginWindow()

    login_app.mainloop()

    # Le code après login_app.mainloop() ne s'exécutera que si la fenêtre de login est fermée.
    # Si la connexion est réussie et que PageLogin.login() appelle app_main.mainloop(),
    # alors cette partie du code ne sera atteinte que si l'application principale (app_main)
    # se ferme complètement.