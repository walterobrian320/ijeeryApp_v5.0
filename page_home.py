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
        

def get_total_eleves():
    """
    Récupère le total des étudiants pour la dernière année scolaire.
    """
    conn = get_db_connection()
    if conn:
        try:
            cursor = conn.cursor()
            
            # --- Étape 1: Trouver la dernière année scolaire ---
            cursor.execute("SELECT id FROM tb_anneescolaire ORDER BY designation DESC LIMIT 1")
            last_annee_scolaire_id = cursor.fetchone()
            
            if last_annee_scolaire_id:
                annee_id = last_annee_scolaire_id[0]
                # --- Étape 2: Compter les étudiants pour cette année ---
                # PostgreSQL utilise %s pour les paramètres dans les requêtes, pas ?
                cursor.execute("SELECT COUNT(*) FROM tb_etudiant WHERE idanneescolaire = %s", (annee_id,))
                total_eleves = cursor.fetchone()[0]
                return total_eleves
            else:
                return 0 # Aucune année scolaire trouvée
        except psycopg2.Error as e:
            print(f"Erreur lors de la récupération du total des élèves: {e}")
            return 0
        finally:
            if conn:
                conn.close()
    return 0

def get_total_professeurs():
    """
    Récupère le total des professeurs avec id_fonction = 5.
    """
    conn = get_db_connection()
    if conn:
        try:
            cursor = conn.cursor()
            cursor.execute("SELECT COUNT(*) FROM tb_professeur WHERE idfonction = 5")
            total_professeurs = cursor.fetchone()[0]
            return total_professeurs
        except psycopg2.Error as e:
            print(f"Erreur lors de la récupération du total des professeurs: {e}")
            return 0
        finally:
            if conn:
                conn.close()
    return 0

def get_active_classes():
    """
    Récupère le nombre de classes actives basé sur 'designation' dans tb_serie.
    """
    conn = get_db_connection()
    if conn:
        try:
            cursor = conn.cursor()
            cursor.execute("SELECT COUNT(DISTINCT designation) FROM tb_serie")
            active_classes = cursor.fetchone()[0]
            return active_classes
        except psycopg2.Error as e:
            print(f"Erreur lors de la récupération des classes actives: {e}")
            return 0
        finally:
            if conn:
                conn.close()
    return 0

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

def get_taux_couverture_ecolage():
    """
    Calcule le taux de couverture des écolages STRICTEMENT pour l'année scolaire en cours.
    Reset automatique à 0% si aucun paiement pour l'année actuelle.
    """
    conn = get_db_connection()
    if conn:
        try:
            cursor = conn.cursor()

            # 1. Obtenir l'année scolaire en cours
            cursor.execute("SELECT id, designation FROM tb_anneescolaire ORDER BY designation DESC LIMIT 1")
            derniere_annee = cursor.fetchone()
            
            if not derniere_annee:
                return "0%"

            annee_id, annee_designation = derniere_annee

            # 2. VÉRIFICATION STRICTE : Y a-t-il des paiements pour cette année précise ?
            cursor.execute("""
                SELECT COUNT(*), COALESCE(SUM(mtpaye), 0) 
                FROM tb_pmtecolage 
                WHERE designationannee = %s
            """, (annee_designation,))
            
            result_paiements = cursor.fetchone()
            nb_paiements = result_paiements[0]
            total_paye = result_paiements[1]

            # SI AUCUN PAIEMENT POUR CETTE ANNÉE -> 0% (peu importe le reste)
            if nb_paiements == 0:
                return "0%"

            # 3. Calculer le total attendu pour l'année scolaire en cours
            cursor.execute("""
                SELECT COUNT(*), COALESCE(SUM(ecolage), 0) 
                FROM tb_etudiant 
                WHERE idanneescolaire = %s
            """, (annee_id,))
            
            result_etudiants = cursor.fetchone()
            nb_etudiants = result_etudiants[0]
            somme_ecolage_mensuel = result_etudiants[1]
            
            # Si aucun étudiant inscrit
            if nb_etudiants == 0:
                return "0%"

            # 4. Calculer le taux uniquement s'il y a des paiements ET des étudiants
            NOMBRE_MOIS_ANNEE_SCOLAIRE = 10
            total_attendu = somme_ecolage_mensuel * NOMBRE_MOIS_ANNEE_SCOLAIRE

            if total_attendu > 0 and total_paye > 0:
                taux = (total_paye / total_attendu) * 100
                return f"{taux:.1f}%"
            else:
                return "0%"

        except psycopg2.Error as e:
            print(f"Erreur lors du calcul du taux de couverture: {e}")
            return "0%"
        except Exception as e:
            print(f"Erreur générale: {e}")
            return "0%"
        finally:
            if conn:
                conn.close()
    return "0%"


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
                    SELECT idtypeoperation, mtpaye FROM tb_pmtcom WHERE id_banque IS NULL
                    UNION ALL 
                    SELECT idtypeoperation, mtpaye FROM tb_encaissement WHERE id_banque IS NULL
                    UNION ALL 
                    SELECT idtypeoperation, mtpaye FROM tb_decaissement WHERE id_banque IS NULL
                    UNION ALL 
                    SELECT idtypeoperation, mtpaye FROM tb_avancepers WHERE id_banque IS NULL
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

def get_taux_couverture_droit():
    """
    Calcule le taux de couverture des droits en comparant les paiements effectués
    avec le total des droits à payer pour l'année scolaire en cours.
    """
    conn = get_db_connection()
    if conn:
        try:
            cursor = conn.cursor()
            
            # Obtenir la dernière année scolaire
            cursor.execute("SELECT id, designation FROM tb_anneescolaire ORDER BY designation DESC LIMIT 1")
            derniere_annee = cursor.fetchone()
            
            if derniere_annee:
                annee_id, annee_designation = derniere_annee
                
                # Total des droits à payer
                cursor.execute("SELECT COALESCE(SUM(droit), 0) FROM tb_etudiant WHERE idanneescolaire = %s", (annee_id,))
                total_droits = cursor.fetchone()[0]
                
                # Total des paiements effectués
                cursor.execute("""
                    SELECT COALESCE(SUM(mtpaye), 0) 
                    FROM tb_pmtdroit 
                    WHERE designationannee = CAST(%s AS VARCHAR)
                """, (annee_id,))
                total_paye = cursor.fetchone()[0]
                
                if total_droits > 0:
                    taux = (total_paye / total_droits) * 100
                    return f"{taux:.1f}%"
            return "0%"
            
        except psycopg2.Error as e:
            print(f"Erreur lors du calcul du taux de couverture des droits: {e}")
            return "0%"
        finally:
            if conn:
                conn.close()
    return "0%"

def get_encaissement_aujourdhui():
    """
    Calcule le total des encaissements pour la journée en cours.
    """
    conn = get_db_connection()
    if conn:
        try:
            cursor = conn.cursor()
            cursor.execute("""
                SELECT COALESCE(SUM(mtpaye), 0)
                FROM (
                    SELECT mtpaye, datepmt FROM tb_pmtecolage WHERE typeoperation ILIKE 'recette'
                    UNION ALL
                    SELECT mtpaye, datepmt FROM tb_pmtdroit WHERE typeoperation ILIKE 'recette'
                    UNION ALL
                    SELECT mtpaye, datepmt FROM tb_encaissement WHERE typeoperation ILIKE 'recette'
                    UNION ALL
                    SELECT mtpaye, datepmt FROM tb_decaissement WHERE typeoperation ILIKE 'recette'
                    UNION ALL
                    SELECT mtpaye, datepmt FROM tb_transfertcaisse WHERE typeoperation ILIKE 'recette'
                ) AS toutes_operations
                WHERE DATE(datepmt) = CURRENT_DATE
            """)
            montant = cursor.fetchone()[0] or 0
            return f"{montant:,.0f} Ar"
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
            cursor.execute("""
                SELECT COALESCE(SUM(mtpaye), 0)
                FROM (
                    SELECT mtpaye, datepmt FROM tb_pmtecolage WHERE typeoperation ILIKE 'depense'
                    UNION ALL
                    SELECT mtpaye, datepmt FROM tb_pmtdroit WHERE typeoperation ILIKE 'depense'
                    UNION ALL
                    SELECT mtpaye, datepmt FROM tb_encaissement WHERE typeoperation ILIKE 'depense'
                    UNION ALL
                    SELECT mtpaye, datepmt FROM tb_decaissement WHERE typeoperation ILIKE 'depense'
                    UNION ALL
                    SELECT mtpaye, datepmt FROM tb_pmtsalaire WHERE typeoperation ILIKE 'depense'
                    UNION ALL
                    SELECT mtpaye, datepmt FROM tb_transfertbanque WHERE typeoperation ILIKE 'depense'
                    UNION ALL
                    SELECT mtpaye, datepmt FROM tb_avanceprof WHERE typeoperation ILIKE 'depense'
                    UNION ALL
                    SELECT mtpaye, datepmt FROM tb_avancespecprof WHERE typeoperation ILIKE 'depense'
                ) AS toutes_operations
                WHERE DATE(datepmt) = CURRENT_DATE
            """)
            montant = cursor.fetchone()[0] or 0
            return f"{montant:,.0f} Ar"
        except psycopg2.Error as e:
            print(f"Erreur lors du calcul des décaissements du jour: {e}")
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
    title = ctk.CTkLabel(frame, text="Tableau de Bord - ibosy", font=("Arial", 26, "bold"), text_color="#2c3e50")
    title.pack(pady=20)

    # === Statistiques principales ===
    stats_frame = ctk.CTkFrame(frame, fg_color="transparent")
    stats_frame.pack(pady=10, padx=20, fill="x")

    # Récupération des données dynamiques avec gestion d'erreur
    try:
        total_eleves = get_total_eleves()
        total_enseignants = get_total_professeurs()
        classes_actives = get_active_classes()
        absences_aujourdhui = get_absences_aujourdhui()
        taux_couverture = get_taux_couverture_ecolage()
        solde_caisse = get_solde_caisse()
        taux_couverture_droit = get_taux_couverture_droit()
        encaissement_jour = get_encaissement_aujourdhui()
        decaissement_jour = get_decaissement_aujourdhui()
        
        print("Données récupérées avec succès")
        
    except Exception as e:
        print(f"Erreur lors de la récupération des données: {e}")
        # Valeurs par défaut en cas d'erreur
        total_eleves = 0
        total_enseignants = 0
        classes_actives = 0
        absences_aujourdhui = 0
        taux_couverture = "0%"
        solde_caisse = "0 Ar"
        taux_couverture_droit = "0%"
        encaissement_jour = "0 Ar"
        decaissement_jour = "0 Ar"

    # Créer les cartes individuellement pour éviter les erreurs
    try:
        # Première ligne
        card1 = StatCard(stats_frame, "Total des Élèves", str(total_eleves), "👨‍🎓")
        card1.grid(row=0, column=0, padx=10, pady=10, sticky="nsew")
        
        card2 = StatCard(stats_frame, "Total Enseignants", str(total_enseignants), "👩‍🏫")
        card2.grid(row=0, column=1, padx=10, pady=10, sticky="nsew")
        
        card3 = StatCard(stats_frame, "Classes Actives", str(classes_actives), "🏫")
        card3.grid(row=0, column=2, padx=10, pady=10, sticky="nsew")
        
        # Deuxième ligne
        card4 = StatCard(stats_frame, "Absences Aujourd'hui", str(absences_aujourdhui), "📅")
        card4.grid(row=1, column=0, padx=10, pady=10, sticky="nsew")
        
        card5 = StatCard(stats_frame, "Solde en Caisse", str(solde_caisse), "🏦")
        card5.grid(row=1, column=1, padx=10, pady=10, sticky="nsew")
        
        card6 = StatCard(stats_frame, "Taux Couverture Droit", str(taux_couverture_droit), "📚")
        card6.grid(row=1, column=2, padx=10, pady=10, sticky="nsew")
        
        # Troisième ligne
        card7 = StatCard(stats_frame, "Taux Couverture Écolage", str(taux_couverture), "💰")
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


