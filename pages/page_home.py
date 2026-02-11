import customtkinter as ctk
import psycopg2
from tkinter import messagebox, filedialog 
from datetime import date # Pour la date du jour pour les absences
import json
import os
import sys

# Ensure the parent directory is in the Python path for absolute imports
current_dir = os.path.dirname(os.path.abspath(__file__))
parent_dir = os.path.dirname(current_dir)
if parent_dir not in sys.path:
    sys.path.insert(0, parent_dir)

class DatabaseManager:
    def __init__(self):
        self.db_params = self._load_db_config()
        self.conn = None
        self.cursor = None

    def _load_db_config(self):
        """Loads database configuration from 'config.json'."""
        try:
            # Assurez-vous que le chemin vers config.json est correct
            config_path = os.path.join(parent_dir, 'config.json')
            with open(config_path, 'r', encoding='utf-8') as f:
                config = json.load(f)
                return config['database']
        except FileNotFoundError:
            print("Error: 'config.json' not found.")
            return None
        except KeyError:
            print("Error: 'database' key is missing in 'config.json'.")
            return None
        except json.JSONDecodeError as e:
            print(f"Error: Invalid JSON in 'config.json': {e}")
            return None
        except UnicodeDecodeError as e:
            print(f"Error: Encoding problem in 'config.json': {e}")
            return None

    def connect(self):
        """Establishes a new database connection."""
        if self.db_params is None:
            print("Cannot connect: Database configuration is missing.")
            return False

        try:
            self.conn = psycopg2.connect(
                host=self.db_params['host'],
                user=self.db_params['user'],
                password=self.db_params['password'],
                database=self.db_params['database'],
                port=self.db_params['port']
            )
            self.cursor = self.conn.cursor()
            print("Connection to the database successful!")
            return True
        except psycopg2.OperationalError as e:
            print(f"Error connecting to the database: {e}")
            self.conn = None
            self.cursor = None
            return False

    def get_connection(self):
        """Returns the database connection if connected, otherwise attempts to connect."""
        if self.conn is None or self.conn.closed:
            if self.connect():
                return self.conn
            else:
                return None
        return self.conn

class StatCard(ctk.CTkFrame):
    def __init__(self, master, title, value, icon="📊", **kwargs):
        # Séparer les kwargs de CTkFrame des autres
        frame_kwargs = {}
        for key in ['fg_color', 'corner_radius', 'width', 'height']:
            if key in kwargs:
                frame_kwargs[key] = kwargs.pop(key)
        
        # Valeurs par défaut pour fg_color et corner_radius si non spécifiées
        if 'fg_color' not in frame_kwargs:
            frame_kwargs['fg_color'] = "white"
        if 'corner_radius' not in frame_kwargs: # Correction de la faute de frappe ici
            frame_kwargs['corner_radius'] = 12
            
        super().__init__(master, **frame_kwargs, **kwargs)

        # Vérification et conversion des paramètres
        title = str(title) if title is not None else "N/A"
        value = str(value) if value is not None else "0"
        icon = str(icon) if icon is not None else "📊"

        self.icon_label = ctk.CTkLabel(self, text=icon, font=("Arial", 24))
        self.icon_label.pack(pady=(10, 5))

        self.title_label = ctk.CTkLabel(self, text=title, font=("Arial", 14, "bold"), text_color="#2c3e50")
        self.title_label.pack()

        self.value_label = ctk.CTkLabel(self, text=value, font=("Arial", 20, "bold"), text_color="#108cff")
        self.value_label.pack(pady=(5, 10))
# --- Fonctions de récupération des données de la base de données ---

def get_db_connection():
    """Établit et retourne une connexion à la base de données PostgreSQL."""
    db_manager = DatabaseManager()
    conn = db_manager.get_connection()

    if conn is None:
        messagebox.showerror("Erreur de connexion", "Impossible de se connecter à la base de données.")
        return None  # Ajoutez cette ligne
    
    return conn  # Ajoutez cette ligne
        

def get_total_factures_client():
    """
    Calcule le montant total général des factures effectuées à la date du jour.
    """
    conn = get_db_connection()
    if conn:
        try:
            cursor = conn.cursor()            
            
            # Requête pour sommer le montant des factures de la date du jour
            # Note : Remplacez 'date_facture' et 'montant_total' par les noms exacts 
            # de vos colonnes dans 'tb_client' ou votre table de facturation.
            query = "SELECT COALESCE(SUM(totmtvente), 0) FROM tb_vente WHERE DATE(dateregistre) = CURRENT_DATE"
            
            cursor.execute(query)
            total_factures_jour = cursor.fetchone()[0]
            
            # Retourne le montant formaté (ou brut selon votre préférence)
            return f"{total_factures_jour:,.0f} Ar".replace(",", " ")
        
        except psycopg2.Error as e:
            print(f"Erreur lors de la récupération du total des factures du jour: {e}")
            return "0 Ar"
        finally:
            if conn:
                conn.close()
    return "0 Ar"

def get_total_facture_fournisseur():
    """
    Calcule le montant total général des commandes fournisseurs à la date du jour.
    """
    conn = get_db_connection()
    if conn:
        try:
            cursor = conn.cursor()            
            
            # Requête pour sommer le montant des factures de la date du jour
            # Note : Remplacez 'date_facture' et 'montant_total' par les noms exacts 
            # de vos colonnes dans 'tb_client' ou votre table de facturation.
            query = "SELECT COALESCE(SUM(totcmd), 0) FROM tb_commande WHERE DATE(datecom) = CURRENT_DATE"
            
            cursor.execute(query)
            total_factures_jour = cursor.fetchone()[0]
            
            # Retourne le montant formaté (ou brut selon votre préférence)
            return f"{total_factures_jour:,.0f} Ar".replace(",", " ")
        
        except psycopg2.Error as e:
            print(f"Erreur lors de la récupération du total des commandes du jour: {e}")
            return "0 Ar"
        finally:
            if conn:
                conn.close()
    return "0 Ar"


def get_active_dette():
    """
    Récupère la totalité des dettes fournisseurs (solde total)
    en excluant les commandes sans Bon de Réception (N° BR / reflivfrs).
    """
    conn = get_db_connection()
    if conn:
        try:
            cursor = conn.cursor()
            # On utilise la même logique que page_FrsDette mais agrégée globalement
            # On filtre WHERE tlf.reflivfrs IS NOT NULL pour exclure les BR inexistants
            query = """
                SELECT COALESCE(SUM(solde_total), 0)
                FROM (
                    SELECT 
                        (tc.totcmd - COALESCE(SUM(tp.mtpaye), 0.00)) AS solde_total
                    FROM 
                        tb_commande tc
                    JOIN 
                        tb_livraisonfrs tlf ON tlf.idcom = tc.idcom
                    LEFT JOIN 
                        tb_pmtcom tp ON tp.refcom = tc.refcom
                    WHERE 
                        tlf.reflivfrs IS NOT NULL
                    GROUP BY 
                        tc.idcom, tc.totcmd
                ) AS calcul_solde
                WHERE solde_total > 0;
            """
            
            cursor.execute(query)
            total_dette = cursor.fetchone()[0]
            
            # Formatage type "1 250 000 Ar"
            return f"{total_dette:,.0f} Ar".replace(",", " ")
        
        except psycopg2.Error as e:
            print(f"Erreur lors de la récupération des dettes: {e}")
            return "0 Ar"
        finally:
            if conn:
                conn.close()
    return "0 Ar"
    

def get_absences_aujourdhui():
    """
    Récupère le nombre total d'absences enregistrées pour la date du jour.
    Nécessite une colonne `date_absence` dans `tb_absence`.
    """
    conn = get_db_connection()
    if conn:
        try:
            cursor = conn.cursor()
            today_str = date.today().strftime('%Y-%m-%d') # Format YYYY-MM-DD
            # Pour PostgreSQL, utilisez %s pour les paramètres et convertissez la date
            cursor.execute("SELECT COUNT(*) FROM tb_absence WHERE date = %s", (today_str,))
            absences_aujourdhui = cursor.fetchone()[0]
            return absences_aujourdhui
        except psycopg2.Error as e:
            print(f"Erreur lors de la récupération des absences d'aujourd'hui: {e}")
            return 0
        finally:
            if conn:
                conn.close()
    return 0

def get_derniers_evenements():
    """
    Récupère les 4 derniers événements enregistrés dans la table tb_evenement, triés par date décroissante.
    """
    conn = get_db_connection()
    if conn:
        try:
            cursor = conn.cursor()
            cursor.execute("SELECT evenements, date FROM tb_evenement ORDER BY date DESC LIMIT 4")
            resultats = cursor.fetchall()
            evenements = []
            for evenement, date_event in resultats:
                # Vérification si la date est None
                if date_event:
                    date_str = date_event.strftime('%d/%m/%Y')
                else:
                    date_str = "Date non définie"
                evenements.append(f"📅 {evenement} - {date_str}")
            return evenements
        except psycopg2.Error as e:
            print(f"Erreur lors de la récupération des événements: {e}")
            return []
        finally:
            if conn:
                conn.close()
    return []

def get_credit():
    """
    Calcule la totalité des crédits clients (solde total restant à payer)
    uniquement pour les ventes avec le mode de paiement "Crédit".
    """
    conn = get_db_connection()
    if conn:
        try:
            cursor = conn.cursor()
            # Requête modifiée pour filtrer uniquement les ventes en "Crédit"
            # en joignant avec tb_modepaiement
            query = """
                SELECT COALESCE(SUM(solde), 0)
                FROM (
                    SELECT 
                        tv.totmtvente - COALESCE(SUM(tp.mtpaye), 0.00) AS solde
                    FROM 
                        tb_vente tv
                    INNER JOIN 
                        tb_modepaiement tmp ON tv.idmode = tmp.idmode
                    LEFT JOIN 
                        tb_pmtcredit tp ON tv.refvente = tp.refvente
                    WHERE 
                        tmp.modedepaiement = 'Crédit'
                    GROUP BY 
                        tv.refvente, tv.totmtvente
                    HAVING 
                        (tv.totmtvente - COALESCE(SUM(tp.mtpaye), 0.00)) > 0
                ) AS credits_actifs;
            """
            
            cursor.execute(query)
            total_solde = cursor.fetchone()[0]
            
            # Formatage avec séparateur de milliers (espace) et suffixe "Ar"
            return f"{total_solde:,.0f} Ar".replace(",", " ")
        
        except psycopg2.Error as e:
            print(f"Erreur lors du calcul du crédit total: {e}")
            return "0 Ar"
        finally:
            if conn:
                conn.close()
    return "0 Ar"
    


def get_solde_caisse():
    """
    Calcule le solde de caisse en temps réel en additionnant tous les encaissements
    et en soustrayant tous les décaissements.
    """
    conn = get_db_connection()
    if conn:
        try:
            cursor = conn.cursor()
            cursor.execute("""
                WITH toutes_operations_caisse AS (
                    SELECT idtypeoperation, mtpaye FROM tb_pmtfacture WHERE id_banque IS NULL
                    UNION ALL
                    SELECT idtypeoperation, mtpaye FROM tb_pmtcredit WHERE id_banque IS NULL
                    UNION ALL 
                    SELECT idtypeoperation, mtpaye FROM tb_pmtcom WHERE id_banque IS NULL
                    UNION ALL 
                    SELECT idtypeoperation, mtpaye FROM tb_encaissement WHERE id_banque IS NULL
                    UNION ALL 
                    SELECT idtypeoperation, mtpaye FROM tb_decaissement WHERE id_banque IS NULL
                    UNION ALL 
                    SELECT idtypeoperation, mtpaye FROM tb_avancepers WHERE id_banque IS NULL
                    UNION ALL 
                    SELECT idtypeoperation, mtpaye FROM tb_avancespecpers WHERE id_banque IS NULL
                    UNION ALL 
                    SELECT idtypeoperation, mtpaye FROM tb_pmtsalaire WHERE id_banque IS NULL
                    UNION ALL 
                    SELECT idtypeoperation, mtpaye FROM tb_transfertcaisse
                    UNION ALL 
                    SELECT idtypeoperation, mtpaye FROM tb_pmtavoir WHERE id_banque IS NULL
                )
                SELECT COALESCE(SUM(CASE WHEN idtypeoperation = 1 THEN mtpaye ELSE 0 END), 0) - 
                       COALESCE(SUM(CASE WHEN idtypeoperation = 2 THEN mtpaye ELSE 0 END), 0) 
                FROM toutes_operations_caisse;
            """) 
            solde = cursor.fetchone()[0] or 0
            # Formater le montant avec des séparateurs de milliers et décimales
            return f"{solde:,.2f}".replace(",", " ").replace(".", ",") + " Ar"
        except psycopg2.Error as e:
            print(f"Erreur lors du calcul du solde de caisse: {e}")
            return "0 Ar"
        finally:
            if conn:
                conn.close()
    return "0 Ar"

def get_appro():
    """
    Calcule le nombre de Bons de Réception (BR) effectués à la date du jour.
    """
    conn = get_db_connection()
    if conn:
        try:
            cursor = conn.cursor()
            # Compte le nombre de références de livraison uniques pour aujourd'hui
            query = "SELECT COUNT(DISTINCT reflivfrs) FROM tb_livraisonfrs WHERE DATE(dateregistre) = CURRENT_DATE"
            
            cursor.execute(query)
            nb_br = cursor.fetchone()[0]
            
            return f"{nb_br} BR"
            
        except psycopg2.Error as e:
            print(f"Erreur lors du calcul du nombre de BR du jour: {e}")
            return "0 BR"
        finally:
            if conn:
                conn.close()
    return "0 BR"
    

def get_encaissement_aujourdhui():
    """
    Calcule le total des encaissements pour la journée en cours
    à partir de la table tb_encaissement (idtypeoperation = 1).
    """
    conn = get_db_connection()
    if conn:
        try:
            cursor = conn.cursor()
            # On somme mtpaye pour aujourd'hui avec idtypeoperation = 1 (Encaissement)
            query = """
                SELECT COALESCE(SUM(mtpaye), 0) 
                FROM tb_encaissement 
                WHERE DATE(datepmt) = CURRENT_DATE 
                AND idtypeoperation = 1
            """
            cursor.execute(query)
            montant = cursor.fetchone()[0] or 0
            
            # Retourne le montant formaté sans décimales avec "Ar"
            return f"{montant:,.0f} Ar".replace(",", " ")
            
        except psycopg2.Error as e:
            print(f"Erreur lors du calcul des encaissements du jour: {e}")
            return "0 Ar"
        finally:
            if conn:
                conn.close()
    return "0 Ar"
    

def get_decaissement_aujourdhui():
    """
    Calcule le total des décaissements pour la journée en cours.
    """
    conn = get_db_connection()
    if conn:
        try:
            cursor = conn.cursor()
            # On somme mtpaye pour aujourd'hui avec idtypeoperation = 2 (Decaissement)
            query = """
                SELECT COALESCE(SUM(mtpaye), 0) 
                FROM tb_decaissement 
                WHERE DATE(datepmt) = CURRENT_DATE 
                AND idtypeoperation = 2
            """
            cursor.execute(query)
            montant = cursor.fetchone()[0] or 0
            
            # Retourne le montant formaté sans décimales avec "Ar"
            return f"{montant:,.0f} Ar".replace(",", " ")
            
        except psycopg2.Error as e:
            print(f"Erreur lors du calcul des decaissements du jour: {e}")
            return "0 Ar"
        finally:
            if conn:
                conn.close()
    return "0 Ar"

# --- page_home modifiée ---
def page_home(master, **kwargs):
    """
    Fonction pour créer la page d'accueil du tableau de bord.
    
    Args:
        master: Le widget parent
        **kwargs: Arguments supplémentaires (ignorés pour compatibilité)
    """
    # Ignorer les arguments supplémentaires comme db_conn, session_data
    db_conn = kwargs.get('db_conn', None)
    session_data = kwargs.get('session_data', None)
    
    frame = ctk.CTkFrame(master, fg_color="transparent")

    # === Titre ===
    title = ctk.CTkLabel(frame, text="Tableau de Bord - iJeery", font=("Arial", 26, "bold"), text_color="#2c3e50")
    title.pack(pady=20)

    # === Statistiques principales ===
    stats_frame = ctk.CTkFrame(frame, fg_color="transparent")
    stats_frame.pack(pady=10, padx=20, fill="x")

    # Récupération des données dynamiques avec gestion d'erreur
    try:
        facture_client = get_total_factures_client()
        facture_fournisseur = get_total_facture_fournisseur()
        dettes_actives = get_active_dette()
        absences_aujourdhui = get_absences_aujourdhui()
        credit = get_credit()
        solde_caisse = get_solde_caisse()
        taux_couverture_droit = get_appro()
        encaissement_jour = get_encaissement_aujourdhui()
        decaissement_jour = get_decaissement_aujourdhui()
        
        print("Données récupérées avec succès")
        
    except Exception as e:
        print(f"Erreur lors de la récupération des données: {e}")
        # Valeurs par défaut en cas d'erreur
        facture_client = 0
        facture_fournisseur = 0
        dettes_actives = 0
        absences_aujourdhui = 0
        credit = "0%"
        solde_caisse = "0 Ar"
        taux_couverture_droit = "0%"
        encaissement_jour = "0 Ar"
        decaissement_jour = "0 Ar"

    # Créer les cartes individuellement pour éviter les erreurs
    try:
        # Première ligne
        card1 = StatCard(stats_frame, "Total Client", str(facture_client), "👨‍🎓")
        card1.grid(row=0, column=0, padx=10, pady=10, sticky="nsew")
        
        card2 = StatCard(stats_frame, "Total Fournisseur", str(facture_fournisseur), "👩‍🏫")
        card2.grid(row=0, column=1, padx=10, pady=10, sticky="nsew")
        
        card3 = StatCard(stats_frame, "Dettes à payer", str(dettes_actives), "🏫")
        card3.grid(row=0, column=2, padx=10, pady=10, sticky="nsew")
        
        # Deuxième ligne
        card4 = StatCard(stats_frame, "Absences Aujourd'hui", str(absences_aujourdhui), "📅")
        card4.grid(row=1, column=0, padx=10, pady=10, sticky="nsew")
        
        card5 = StatCard(stats_frame, "Solde en Caisse", str(solde_caisse), "🏦")
        card5.grid(row=1, column=1, padx=10, pady=10, sticky="nsew")
        
        card6 = StatCard(stats_frame, "Crédit", str(credit), "📚")
        card6.grid(row=1, column=2, padx=10, pady=10, sticky="nsew")
        
        # Troisième ligne
        card7 = StatCard(stats_frame, "Approvisionnement", str(taux_couverture_droit), "💰")
        card7.grid(row=2, column=0, padx=10, pady=10, sticky="nsew")
        
        card8 = StatCard(stats_frame, "Encaissement Aujourd'hui", str(encaissement_jour), "⬆️")
        card8.grid(row=2, column=1, padx=10, pady=10, sticky="nsew")
        
        card9 = StatCard(stats_frame, "Décaissement Aujourd'hui", str(decaissement_jour), "⬇️")
        card9.grid(row=2, column=2, padx=10, pady=10, sticky="nsew")
        
        print("Toutes les cartes créées avec succès")
        
    except Exception as e:
        print(f"Erreur lors de la création des cartes: {e}")
        import traceback
        traceback.print_exc()

    # Configuration des colonnes
    for i in range(3):
        stats_frame.grid_columnconfigure(i, weight=1)

    # === Dernières Notifications ou Événements ===
    events_frame = ctk.CTkFrame(frame, fg_color="white", corner_radius=12)
    events_frame.pack(pady=20, padx=20, fill="both", expand=True)

    events_title = ctk.CTkLabel(events_frame, text="📌 Derniers événements", font=("Arial", 18, "bold"),
                                 text_color="#2c3e50")
    events_title.pack(pady=(15, 5))

    # Récupération des événements depuis la base de données
    try:
        events = get_derniers_evenements()
    except Exception as e:
        print(f"Erreur lors de la récupération des événements: {e}")
        events = []
    
    # Si aucun événement n'est trouvé, afficher un message par défaut
    if not events:
        events = ["Aucun événement récent à afficher"]

    for event in events:
        event_label = ctk.CTkLabel(events_frame, text=event, font=("Arial", 14), anchor="w", justify="left")
        event_label.pack(fill="x", padx=20, pady=2)

    return frame

# Option 2: Version alternative avec signature spécifique
def page_home_alt(master, db_conn=None, session_data=None):
    """
    Version alternative avec arguments explicites
    """
    # Utiliser db_conn et session_data si nécessaire
    # Pour l'instant, on les ignore car les fonctions utilisent leur propre connexion
    
    return page_home(master)  # Appeler la version originale


