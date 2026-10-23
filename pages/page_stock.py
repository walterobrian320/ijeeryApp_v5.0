import customtkinter as ctk
import tkinter as tk
from tkinter import ttk, messagebox
import psycopg2
import json
from datetime import datetime
import threading
from tkinter import ttk
import os
from resource_utils import get_config_path, safe_file_read
from log_utils import AppLogger, resolve_connected_user_id
from stock_manager_update_latest import StockManagerUpdateLatest
from stock_service import (
    format_stock_exact,
    stock_est_fractionnaire,
    stock_valeur_affichable,
)
from db import ensure_connection, get_connection, load_db_config

# ── Thème iJeery ──────────────────────────────────────────────────────────────
try:
    from app_theme import Colors, Fonts, styled, Theme
    _T = True
except ImportError:
    _T = False


class _C:
    MIDNIGHT       = "#2C3E50"
    BG_PAGE        = "#ECF0F1"
    BG_CARD        = "#FFFFFF"
    BG_HEADER      = "#2C3E50"
    BG_INPUT       = "#F4F6F8"
    PRIMARY        = "#3498DB"
    PRIMARY_HOVER  = "#2980B9"
    SUCCESS        = "#2ECC71"
    SUCCESS_DARK   = "#27AE60"
    DANGER         = "#E74C3C"
    DANGER_DARK    = "#C0392B"
    WARNING        = "#F39C12"
    WARNING_LIGHT  = "#FEF9E7"
    WARNING_TEXT   = "#9A6A00"
    INFO           = "#1ABC9C"
    INFO_DARK      = "#16A085"
    TEXT_PRIMARY   = "#2C3E50"
    TEXT_SECONDARY = "#5D6D7E"
    TEXT_MUTED     = "#95A5A6"
    BORDER         = "#D5D8DC"
    DIVIDER        = "#E8EAED"


C = Colors if _T else _C
_SEUIL_STOCK_NUL = 1e-9


# ── Style Treeview ────────────────────────────────────────────────────────────
def _apply_tree_style():
    s = ttk.Style()
    try:
        s.theme_use("clam")
    except Exception:
        pass
    s.configure("Stock.Treeview",
                 background=C.BG_CARD, foreground=C.TEXT_PRIMARY,
                 fieldbackground=C.BG_CARD, rowheight=24,
                 font=("Roboto" if _T else "Segoe UI", 10),
                 borderwidth=0)
    s.configure("Stock.Treeview.Heading",
                 background=C.BG_HEADER, foreground="#FFFFFF",
                 font=("Roboto" if _T else "Segoe UI", 10, "bold"),
                 relief="flat", padding=(6, 4))
    s.map("Stock.Treeview",
          background=[("selected", C.PRIMARY)],
          foreground=[("selected", "#FFFFFF")])


# ── Importations des classes externes ─────────────────────────────────────────
from pages.page_inventaire import PageInventaire
from pages.page_inventaireJour import PageInventaireJour


# ====================================================================
# PageStock
# ====================================================================

class PageStock(ctk.CTkFrame):

    def __init__(self, master, db_conn=None, session_data=None, iduser=None):
        super().__init__(master, fg_color=C.BG_PAGE)
        self._db_conn_shared = db_conn
        self._session_data = session_data or {}
        self.iduser = (
            iduser
            if iduser is not None
            else resolve_connected_user_id(master=master, session_data=session_data)
        )
        self.idfonction = self._session_data.get('fonction_id')

        self.magasins            = []
        self.colonnes_dynamiques = []
        self.all_data            = []
        self._stock_tooltips_by_item = {}
        self._stock_tooltip_after = None
        self._stock_tooltip_window = None
        self._stock_tooltip_key = None

        self.grid_columnconfigure(0, weight=1)
        self.grid_rowconfigure(2, weight=1)

        _apply_tree_style()
        self.setup_ui()
        self.charger_magasins()
        self.charger_stocks()
        self._logger = AppLogger(conn=db_conn, session_data=session_data or {"user_id": self.iduser}, fallback_user_id=self.iduser)

    # ── helper font ──────────────────────────────────────────────────────────
    def _f(self, size=11, weight="normal"):
        return ctk.CTkFont(
            family="Roboto" if _T else "Segoe UI",
            size=size, weight=weight)

    # ====================================================================
    # setup_ui — REFONTE DESIGN UNIQUEMENT
    # ====================================================================

    def setup_ui(self):
        # ── En-tête ───────────────────────────────────────────────────────
        hdr = ctk.CTkFrame(self, fg_color=C.BG_HEADER, corner_radius=0)
        hdr.grid(row=0, column=0, sticky="ew")

        bar = ctk.CTkFrame(hdr, fg_color="transparent")
        bar.pack(fill="x", padx=16, pady=10)

        ctk.CTkLabel(
            bar, text="Gestion des Stocks",
            font=self._f(18, "bold"), text_color="#FFFFFF",
        ).pack(side="left")

        link_font = self._f(11)
        if _T:
            link_font = ctk.CTkFont(
                family=getattr(Fonts, "_family", "Segoe UI"),
                size=11, underline=True,
            )
        color_param = getattr(C, "PRIMARY_LIGHT", C.PRIMARY)

        try:
            from pages.menu_auth_utils import (
                CLE_PARAM_STOCK,
                est_lien_param_autorise,
                resolve_session_data,
            )
        except ImportError:
            from menu_auth_utils import (
                CLE_PARAM_STOCK,
                est_lien_param_autorise,
                resolve_session_data,
            )

        self.lbl_parametres = ctk.CTkLabel(
            bar, text="⚙  Paramètres",
            font=link_font, text_color=color_param, cursor="hand2",
        )
        if est_lien_param_autorise(resolve_session_data(self), CLE_PARAM_STOCK):
            self.lbl_parametres.pack(side="right")
        self.lbl_parametres.bind("<Button-1>", lambda _e: self._ouvrir_parametres())

        # ── Barre filtres + actions ────────────────────────────────────────
        panel = ctk.CTkFrame(self, fg_color=C.BG_CARD, corner_radius=8)
        panel.grid(row=1, column=0, sticky="ew", padx=12, pady=6)

        inner = ctk.CTkFrame(panel, fg_color="transparent")
        inner.pack(fill="x", padx=10, pady=8)

        # Recherche
        ctk.CTkLabel(
            inner, text="🔍", font=self._f(13), text_color=C.TEXT_MUTED
        ).pack(side="left", padx=(0, 4))

        self.entry_recherche = ctk.CTkEntry(
            inner,
            placeholder_text="Code, désignation…",
            width=280, height=30,
            fg_color=C.BG_INPUT, border_color=C.BORDER,
            text_color=C.TEXT_PRIMARY, font=self._f(10))
        self.entry_recherche.pack(side="left", padx=(0, 6))
        self.entry_recherche.bind('<KeyRelease>', lambda e: self.filtrer_stocks())

        ctk.CTkButton(
            inner, text="Réinitialiser",
            command=self.reinitialiser_filtre,
            fg_color="transparent", hover_color=C.DIVIDER,
            text_color=C.TEXT_SECONDARY,
            border_width=1, border_color=C.BORDER,
            height=30, width=110, font=self._f(10)
        ).pack(side="left", padx=(0, 4))

        # Boutons actions (côté droit)
        self.btn_verif_inventaire = ctk.CTkButton(
            inner, text="✅  Vérification inventaire",
            command=self.ouvrir_fenetre_verification_inventaire,
            fg_color=C.SUCCESS, hover_color=C.SUCCESS_DARK,
            text_color="#FFFFFF",
            height=30, width=190, font=self._f(10, "bold"))
        self.btn_verif_inventaire.pack(side="right", padx=(6, 0))

        self.btn_export = ctk.CTkButton(
            inner, text="📊  Export Excel",
            command=self.exporter_stocks,
            fg_color=C.INFO_DARK, hover_color=C.INFO,
            text_color="#FFFFFF",
            height=30, width=140, font=self._f(10, "bold"))
        self.btn_export.pack(side="right", padx=(0, 6))

        # ── Zone Treeview ─────────────────────────────────────────────────
        self.tree_frame_inner = ctk.CTkFrame(
            self, fg_color=C.BG_CARD, corner_radius=8)
        self.tree_frame_inner.grid(
            row=2, column=0, sticky="nsew", padx=12, pady=(0, 4))
        self.tree_frame_inner.grid_rowconfigure(0, weight=1)
        self.tree_frame_inner.grid_columnconfigure(0, weight=1)
        self.tree = None

        # ── Footer ────────────────────────────────────────────────────────
        footer = ctk.CTkFrame(self, fg_color="transparent")
        footer.grid(row=3, column=0, sticky="ew", padx=12, pady=(2, 8))

        self.label_total_articles = ctk.CTkLabel(
            footer, text="Total articles : 0",
            font=self._f(10, "bold"), text_color=C.PRIMARY)
        self.label_total_articles.pack(side="left")

        ctk.CTkLabel(
            footer,
            text="⚠ Fond rouge clair : stock négatif",
            font=self._f(9),
            text_color=C.DANGER_DARK,
        ).pack(side="left", padx=(12, 0))
        ctk.CTkLabel(
            footer,
            text="⚠ Unité de base : partie entière affichée; survolez le symbole pour le solde exact.",
            font=self._f(9),
            text_color=C.WARNING_TEXT,
        ).pack(side="left", padx=(12, 0))

        self.label_derniere_maj = ctk.CTkLabel(
            footer, text="",
            font=self._f(9), text_color=C.TEXT_MUTED)
        self.label_derniere_maj.pack(side="right")

    # ====================================================================
    # LOGIQUE MÉTIER — inchangée
    # ====================================================================

    def _ouvrir_parametres(self):
        try:
            from pages.menu_auth_utils import (
                CLE_PARAM_STOCK,
                est_lien_param_autorise,
                resolve_session_data,
            )
        except ImportError:
            from menu_auth_utils import (
                CLE_PARAM_STOCK,
                est_lien_param_autorise,
                resolve_session_data,
            )
        if not est_lien_param_autorise(resolve_session_data(self), CLE_PARAM_STOCK):
            messagebox.showwarning(
                "Accès refusé",
                "Votre fonction utilisateur n'est pas autorisée à ouvrir "
                "les paramètres du stock article.",
            )
            return
        try:
            from pages.window_parametres_stock import ParametresStockWindow
        except ImportError:
            from window_parametres_stock import ParametresStockWindow
        ParametresStockWindow(
            self,
            db_conn=self._db_conn_shared,
            id_user=self.iduser,
        )

    def connect_db(self):
        """Connexion à la base de données PostgreSQL via module db."""
        try:
            conn = self._db_conn_shared or get_connection()
            return ensure_connection(conn)
        except Exception as err:
            messagebox.showerror("Erreur de connexion", f"Erreur : {err}")
            return None

    def formater_nombre(self, nombre):
        """Formate les nombres pour l'affichage.

        Standard:
        - 2 chiffres après virgule
        - mais si la partie décimale vaut ,00 => afficher uniquement l'entier
        - séparateur de milliers: '.'
        - séparateur décimal: ','
        """
        try:
            x = float(nombre or 0.0)

            # Afficher sans décimales si entier (ou quasi-entier)
            if abs(x - round(x)) < 1e-9:
                return f"{int(round(x)):,}".replace(",", ".")

            return (
                f"{x:,.2f}"
                .replace(",", " ")
                .replace(".", ",")
                .replace(" ", ".")
            )
        except Exception:
            return "0"

    def creer_treeview(self):
        """Initialise le tableau avec colonnes larges et barres de défilement"""
        self._masquer_stock_tooltip()
        self._stock_tooltips_by_item.clear()
        if self.tree:
            self.tree.destroy()

        colonnes_fixes    = ("Code", "Désignation", "Unité", "Prix")
        colonnes_magasins = [mag[1] for mag in self.magasins]
        self.colonnes_dynamiques = colonnes_fixes + tuple(colonnes_magasins) + ("Total",)

        self.tree = ttk.Treeview(
            self.tree_frame_inner,
            columns=self.colonnes_dynamiques,
            show="headings",
            style="Stock.Treeview",
            selectmode="browse")

        self.tree.tag_configure("even", background=C.BG_CARD,   foreground=C.TEXT_PRIMARY)
        self.tree.tag_configure("odd",  background="#F0F4F8",   foreground=C.TEXT_PRIMARY)
        self.tree.tag_configure("stock_zero_even", background=C.BG_CARD, foreground="#E74C3C")
        self.tree.tag_configure("stock_zero_odd",  background="#F0F4F8", foreground="#E74C3C")
        negative_font = ("Roboto" if _T else "Segoe UI", 10, "bold")
        self.tree.tag_configure(
            "stock_negative_even",
            background="#FCE8E6",
            foreground=C.DANGER_DARK,
            font=negative_font,
        )
        self.tree.tag_configure(
            "stock_negative_odd",
            background="#F8DEDC",
            foreground=C.DANGER_DARK,
            font=negative_font,
        )

        self.tree.bind("<Double-1>", self.ouvrir_inventaire_double_clic)
        self.tree.bind("<Motion>", self._on_stock_tree_motion)
        self.tree.bind("<Leave>", lambda _event: self._masquer_stock_tooltip())

        vsb = ctk.CTkScrollbar(self.tree_frame_inner, orientation="vertical",   command=self.tree.yview)
        hsb = ctk.CTkScrollbar(self.tree_frame_inner, orientation="horizontal",  command=self.tree.xview)
        self.tree.configure(yscrollcommand=vsb.set, xscrollcommand=hsb.set)

        self.tree.grid(row=0, column=0, sticky="nsew", padx=(6, 0), pady=(6, 0))
        vsb.grid(row=0, column=1, sticky="ns",  pady=(6, 0))
        hsb.grid(row=1, column=0, sticky="ew",  padx=(6, 0))

        for col in self.colonnes_dynamiques:
            if col == "Désignation":
                self.tree.column(col, width=350, anchor="w",      minwidth=200)
            elif col == "Code":
                self.tree.column(col, width=150, anchor="center")
            elif col == "Prix":
                self.tree.column(col, width=120, anchor="e")
            else:
                self.tree.column(col, width=110, anchor="center")
        from treeview_sort_utils import attach_tree_sort
        _st = {"Prix": "fr_float"} if "Prix" in self.colonnes_dynamiques else {}
        attach_tree_sort(
            self.tree, list(self.colonnes_dynamiques),
            column_types=_st, configure_columns=False,
        )

    def charger_stocks_avec_progression(self):
        """Charge les stocks avec une fenêtre de progression"""
        progress_window = ctk.CTkToplevel(self.root)
        progress_window.title("Chargement en cours...")
        progress_window.geometry("400x150")
        progress_window.transient(self.root)
        progress_window.grab_set()
        progress_window.update_idletasks()
        x = (progress_window.winfo_screenwidth()  // 2) - 200
        y = (progress_window.winfo_screenheight() // 2) - 75
        progress_window.geometry(f"400x150+{x}+{y}")
        label = ctk.CTkLabel(progress_window, text="Chargement des stocks...", font=self._f(12))
        label.pack(pady=20)
        progress_bar = ttk.Progressbar(progress_window, mode='indeterminate', length=300)
        progress_bar.pack(pady=10)
        progress_bar.start(10)
        ctk.CTkLabel(progress_window, text="Veuillez patienter...", font=self._f(9)).pack(pady=10)

        def charger_en_arriere_plan():
            try:
                self.charger_stocks()
                progress_window.after(0, progress_window.destroy)
            except Exception as e:
                progress_window.after(0, progress_window.destroy)
                messagebox.showerror("Erreur", f"Erreur lors du chargement: {str(e)}")

        threading.Thread(target=charger_en_arriere_plan, daemon=True).start()

    def charger_stocks(self):
        """Charge en 2 phases: articles/unites puis stocks calculés."""
        self.creer_treeview()
        self._charger_articles_unites_initiaux()
        threading.Thread(target=self._charger_stocks_calcules_async, daemon=True).start()

    def _charger_articles_unites_initiaux(self):
        """Affiche immédiatement les articles/unités avec stocks à 0."""
        conn = self.connect_db()
        if not conn:
            return
        try:
            cursor = conn.cursor()
            cursor.execute("""
                SELECT
                    u.codearticle,
                    a.designation,
                    u.designationunite,
                    COALESCE(dp.prix, 0) AS prix
                FROM tb_unite u
                INNER JOIN tb_article a ON u.idarticle = a.idarticle
                LEFT JOIN (
                    SELECT idunite, prix
                    FROM (
                        SELECT idunite, prix,
                               ROW_NUMBER() OVER (
                                   PARTITION BY idunite
                                   ORDER BY dateregistre DESC
                               ) AS rn
                        FROM tb_prix
                        WHERE deleted = 0
                    ) x
                    WHERE x.rn = 1
                ) dp ON dp.idunite = u.idunite
                WHERE a.deleted = 0 AND COALESCE(u.deleted, 0) = 0
                ORDER BY a.designation ASC, u.codearticle ASC
            """)
            base_rows = cursor.fetchall()
            self.all_data = []
            for code, designation, unite, prix in base_rows:
                valeurs = [code, designation, unite, self.formater_nombre(prix)]
                for _idmag, _nom_mag in self.magasins:
                    valeurs.append(self.formater_nombre(0))
                valeurs.append(self.formater_nombre(0))
                self.all_data.append((valeurs, 0.0, False, {}))
            self.recharger_treeview()
            self.label_derniere_maj.configure(
                text="Chargement des stocks en cours…")
        except Exception as e:
            messagebox.showerror("Erreur de chargement", f"Détails : {str(e)}")
        finally:
            cursor.close()
            conn.close()

    def _charger_stocks_calcules_async(self):
        """Calcule les stocks en arrière-plan et applique le résultat sur l'UI."""
        try:
            all_data_calculee = self._calculer_all_data_stocks()
            self.after(0, lambda: self._appliquer_all_data_calculee(all_data_calculee))
        except Exception as e:
            self.after(0, lambda: messagebox.showerror("Erreur de chargement", f"Détails : {str(e)}"))

    def _calculer_all_data_stocks(self):
        """
        Calcule les stocks via `StockManagerUpdateLatest` (logique métier unique),
        puis convertit le stock de l'unité de base vers chaque unité affichée.

        Stratégie performance:
        - 1 requête pour la liste des unités (articles + prix)
        - 1 requête centrale pour les facteurs de conversion de toutes les unités
        - N requêtes (N = nb magasins) pour le stock base par article via le moteur central
        """
        conn = self.connect_db()
        if not conn:
            return []

        sm = None
        cursor = None
        try:
            # 1) Charger toutes les unités à afficher + dernier prix (par idunite)
            cursor = conn.cursor()
            cursor.execute("""
                WITH dernier_prix AS (
                    SELECT idunite, prix
                    FROM (
                        SELECT idunite, prix,
                               ROW_NUMBER() OVER (
                                   PARTITION BY idunite
                                   ORDER BY dateregistre DESC
                               ) AS rn
                        FROM tb_prix
                        WHERE deleted = 0
                    ) p
                    WHERE p.rn = 1
                )
                SELECT
                    u.codearticle,
                    a.designation,
                    u.designationunite,
                    COALESCE(dp.prix, 0) AS prix,
                    u.idarticle,
                    u.idunite
                FROM tb_unite u
                INNER JOIN tb_article a ON u.idarticle = a.idarticle
                LEFT JOIN dernier_prix dp ON dp.idunite = u.idunite
                WHERE a.deleted = 0 AND COALESCE(u.deleted, 0) = 0
                ORDER BY a.designation ASC, u.codearticle ASC
            """)
            unite_rows = cursor.fetchall()

            # 2) Facteurs et soldes issus du même moteur que les snapshots.
            db_config = load_db_config()
            if not db_config:
                raise FileNotFoundError("Configuration de la base de données introuvable.")

            sm = StockManagerUpdateLatest(
                host=db_config['host'],
                port=db_config['port'],
                dbname=db_config['database'],
                user=db_config['user'],
                password=db_config['password'],
            )

            unites = sm.get_unites_tous_articles()
            facteurs = {
                int(ligne["idunite"]): float(ligne["facteur_vers_base"])
                for ligne in unites
            }
            niveaux = {
                int(ligne["idunite"]): int(ligne["niveau"])
                for ligne in unites
            }

            # 3) Calcul des stocks en unité de base par article et par magasin via le moteur central
            stock_base_par_article_mag: dict[int, dict[int, float]] = {}
            for idmag, _nom_mag in self.magasins:
                lignes = sm.get_stock_tous_articles(idmagasin=int(idmag), date_fin=None)
                stock_base_par_article_mag[int(idmag)] = {
                    int(l['idarticle']): float(l.get('stock_en_base', 0) or 0)
                    for l in lignes
                }

            # 4) Construire all_data (1 ligne par unité)
            all_data = []
            for code, desig, unite, prix, idarticle, idunite in unite_rows:
                facteur = facteurs.get(int(idunite))
                niveau = niveaux.get(int(idunite))
                if facteur is None or facteur <= 0:
                    raise ValueError(
                        f"Facteur de conversion absent ou invalide pour l'unité {idunite}."
                    )
                if niveau is None:
                    raise ValueError(f"Niveau absent pour l'unité {idunite}.")
                unite_de_base = niveau == 0

                valeurs = [
                    code,
                    desig,
                    unite,
                    self.formater_nombre(prix),
                ]

                total = 0.0
                stock_negatif = False
                tooltips = {}
                for index_mag, (idmag, _nom_mag) in enumerate(self.magasins):
                    stock_base = stock_base_par_article_mag.get(int(idmag), {}).get(int(idarticle), 0.0)
                    stock_unite = stock_base / facteur
                    stock_unite = float(stock_unite or 0.0)
                    if stock_unite < -_SEUIL_STOCK_NUL:
                        stock_negatif = True
                    valeur_affichable = stock_valeur_affichable(
                        stock_unite,
                        unite_de_base=unite_de_base,
                    )
                    texte_stock = self.formater_nombre(valeur_affichable)
                    if unite_de_base and stock_est_fractionnaire(stock_unite):
                        if valeur_affichable == 0 and stock_unite < 0:
                            texte_stock = "-0"
                        texte_stock += " ⚠"
                        tooltips[4 + index_mag] = (
                            f"Stock réel : {format_stock_exact(stock_unite)} {unite}. "
                            "La partie entière est affichée."
                        )
                    valeurs.append(texte_stock)
                    total += stock_unite

                total_affichable = stock_valeur_affichable(
                    total,
                    unite_de_base=unite_de_base,
                )
                texte_total = self.formater_nombre(total_affichable)
                if unite_de_base and stock_est_fractionnaire(total):
                    if total_affichable == 0 and total < 0:
                        texte_total = "-0"
                    texte_total += " ⚠"
                    tooltips[4 + len(self.magasins)] = (
                        f"Stock réel total : {format_stock_exact(total)} {unite}. "
                        "La partie entière est affichée."
                    )
                valeurs.append(texte_total)
                all_data.append((valeurs, total, stock_negatif, tooltips))

            return all_data

        except Exception as e:
            print(f"ERREUR DÉTAILLÉE (StockManagerUpdateLatest): {e}")
            raise
        finally:
            try:
                if sm:
                    sm.fermer_connexion()
            except Exception:
                pass
            try:
                if cursor:
                    cursor.close()
            except Exception:
                pass
            try:
                conn.close()
            except Exception:
                pass

    def _appliquer_all_data_calculee(self, all_data_calculee):
        """Applique les stocks calculés et rafraîchit le Treeview."""
        self.all_data = all_data_calculee
        if self.entry_recherche.get().strip():
            self.filtrer_stocks()
        else:
            self.recharger_treeview()
        self.label_total_articles.configure(text=f"Total articles : {len(self.all_data)}")
        self.label_derniere_maj.configure(
            text=f"Actualisé : {datetime.now().strftime('%d/%m/%Y %H:%M:%S')}")

    def calculer_stock_article(self, idarticle, idunite_cible, idmag=None):
        """
        Calcul de stock via StockManagerUpdateLatest (utilisé pour la sync vers tb_stock).
        Retourne le stock dans l'unité cible, en appliquant la conversion depuis l'unité de base.
        """
        sm = None
        try:
            db_config = load_db_config()
            if not db_config:
                return []

            sm = StockManagerUpdateLatest(
                host=db_config['host'],
                port=db_config['port'],
                dbname=db_config['database'],
                user=db_config['user'],
                password=db_config['password'],
            )

            idmagasin = int(idmag) if idmag else 0
            stock_base = sm.get_stock_article_base(
                idarticle=int(idarticle),
                idmagasin=idmagasin,
                date_fin=None,
            )
            base_val = float(stock_base.get('stock_en_base', 0.0) or 0.0)
            facteur = float(sm.get_facteur_conversion(int(idunite_cible)) or 1.0)
            stock_unite = (base_val / facteur) if facteur else 0.0
            return float(stock_unite or 0.0)
        except Exception as e:
            print(f"Erreur calcul stock StockManagerUpdateLatest : {e}")
            return 0.0
        finally:
            try:
                if sm:
                    sm.fermer_connexion()
            except Exception:
                pass

    def charger_magasins(self):
        """Charge la liste des magasins depuis la base de données"""
        conn = self.connect_db()
        if not conn:
            return
        try:
            cursor = conn.cursor()
            cursor.execute("""
                SELECT idmag, designationmag FROM tb_magasin
                WHERE deleted = 0 ORDER BY designationmag
            """)
            self.magasins = cursor.fetchall()
        except Exception as e:
            messagebox.showerror("Erreur", f"Impossible de charger les magasins : {str(e)}")
        finally:
            cursor.close()
            conn.close()

    def ouvrir_inventaire_double_clic(self, event):
        """Ouvre la fenêtre d'inventaire lors d'un double-clic sur une ligne"""
        try:
            from pages.stock_config import est_fonction_autorisee_inventaire
        except ImportError:
            from stock_config import est_fonction_autorisee_inventaire
        if not est_fonction_autorisee_inventaire(self.idfonction):
            fonction_nom = self._session_data.get("fonction_name") or "—"
            messagebox.showwarning(
                "Accès refusé",
                "Votre fonction utilisateur n'est pas autorisée à ouvrir "
                "l'inventaire article depuis le stock (double-clic).\n\n"
                f"Fonction : {fonction_nom}\n\n"
                "Contactez un administrateur (Paramètres — Gestion des stocks).",
            )
            return

        selection = self.tree.selection()
        if not selection:
            return
        item         = self.tree.item(selection[0])
        code_article = str(item['values'][0]).zfill(10)
        conn = self.connect_db()
        if not conn:
            return
        try:
            cursor = conn.cursor()
            cursor.execute("""
                SELECT u.idarticle, u.idunite, a.designation
                FROM tb_unite u INNER JOIN tb_article a ON u.idarticle = a.idarticle
                WHERE u.codearticle = %s LIMIT 1
            """, (str(code_article),))
            result = cursor.fetchone()
            if not result:
                messagebox.showwarning("Erreur", f"Article {code_article} introuvable")
                return
            idarticle, idunite, designation = result
            article_data = {
                'code': code_article,
                'designation': designation,
                'idarticle': idarticle,
                'idunite': idunite
            }
            try:
                self._logger.log(
                    action="Vérification inventaire spécifique",
                    element=f"{designation}",
                    details=f"Ouverture inventaire spécifique (code={code_article})",
                    value=f"idarticle={idarticle}, idunite={idunite}",
                )
            except Exception:
                pass
            PageInventaire(self, article_data, self.iduser)
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur lors de l'ouverture : {str(e)}")
        finally:
            cursor.close()
            conn.close()

    def filtrer_stocks(self):
        """Filtre les données selon le critère de recherche"""
        for item in self.tree.get_children():
            self.tree.delete(item)
        search_term = self.entry_recherche.get().lower().strip()
        if not search_term:
            self.recharger_treeview()
            return
        filtered_data = [
            (valeurs, total, stock_negatif, tooltips)
            for valeurs, total, stock_negatif, tooltips in self.all_data
            if search_term in f"{valeurs[0]} {valeurs[1]} {valeurs[2]} {valeurs[3]}".lower()
        ]
        self._masquer_stock_tooltip()
        self._stock_tooltips_by_item.clear()
        if filtered_data:
            for idx, (valeurs, total, stock_negatif, tooltips) in enumerate(filtered_data):
                tag = self._tag_ligne_stock(idx, total, stock_negatif)
                item = self.tree.insert("", "end", values=valeurs, tags=(tag,))
                if tooltips:
                    self._stock_tooltips_by_item[item] = tooltips
            self.label_total_articles.configure(text=f"Total articles : {len(filtered_data)}")
        else:
            empty = ["", "Aucun résultat trouvé", "", ""] + [""] * (len(self.colonnes_dynamiques) - 4)
            self.tree.insert('', 'end', values=empty)
            self.label_total_articles.configure(text="Total articles : 0")

    def reinitialiser_filtre(self):
        """Réinitialise le filtre et recharge toutes les données"""
        self.entry_recherche.delete(0, 'end')
        self.recharger_treeview()

    @staticmethod
    def _tag_ligne_stock(index, total, stock_negatif=False):
        zebra = "even" if index % 2 == 0 else "odd"
        if stock_negatif or float(total) < -_SEUIL_STOCK_NUL:
            return f"stock_negative_{zebra}"
        if abs(float(total)) <= _SEUIL_STOCK_NUL:
            return f"stock_zero_{zebra}"
        return zebra

    def recharger_treeview(self):
        """Recharge le Treeview avec toutes les données stockées"""
        self._masquer_stock_tooltip()
        self._stock_tooltips_by_item.clear()
        for item in self.tree.get_children():
            self.tree.delete(item)
        if self.all_data:
            for idx, (valeurs, total, stock_negatif, tooltips) in enumerate(self.all_data):
                tag = self._tag_ligne_stock(idx, total, stock_negatif)
                item = self.tree.insert("", "end", values=valeurs, tags=(tag,))
                if tooltips:
                    self._stock_tooltips_by_item[item] = tooltips
            self.label_total_articles.configure(text=f"Total articles : {len(self.all_data)}")
        else:
            empty = ["", "Aucun article trouvé", "", ""] + [""] * (len(self.colonnes_dynamiques) - 4)
            self.tree.insert('', 'end', values=empty)
            self.label_total_articles.configure(text="Total articles : 0")

    def _on_stock_tree_motion(self, event):
        item = self.tree.identify_row(event.y)
        column = self.tree.identify_column(event.x)
        if not item or not column.startswith("#"):
            self._masquer_stock_tooltip()
            return

        tooltip = self._stock_tooltips_by_item.get(item, {}).get(int(column[1:]) - 1)
        if not tooltip:
            self._masquer_stock_tooltip()
            return

        key = (item, column)
        if key == self._stock_tooltip_key:
            return
        self._masquer_stock_tooltip()
        self._stock_tooltip_key = key
        self._stock_tooltip_after = self.after(
            450,
            lambda: self._afficher_stock_tooltip(
                key, tooltip, event.x_root + 12, event.y_root + 12,
            ),
        )

    def _afficher_stock_tooltip(self, key, texte, x, y):
        self._stock_tooltip_after = None
        if key != self._stock_tooltip_key:
            return
        self._stock_tooltip_window = tk.Toplevel(self)
        self._stock_tooltip_window.wm_overrideredirect(True)
        self._stock_tooltip_window.wm_geometry(f"+{x}+{y}")
        tk.Label(
            self._stock_tooltip_window,
            text=texte,
            justify="left",
            wraplength=340,
            background="#FFF8D8",
            foreground=C.TEXT_PRIMARY,
            relief="solid",
            borderwidth=1,
            padx=8,
            pady=5,
        ).pack()

    def _masquer_stock_tooltip(self):
        if self._stock_tooltip_after is not None:
            self.after_cancel(self._stock_tooltip_after)
            self._stock_tooltip_after = None
        self._stock_tooltip_key = None
        if self._stock_tooltip_window is not None:
            self._stock_tooltip_window.destroy()
            self._stock_tooltip_window = None

    def exporter_stocks(self):
        """Exporte les stocks vers un fichier CSV"""
        try:
            from tkinter import filedialog
            import csv
            fichier = filedialog.asksaveasfilename(
                defaultextension=".csv",
                filetypes=[("CSV files", "*.csv"), ("All files", "*.*")],
                initialfile=f"stocks_{datetime.now().strftime('%Y%m%d_%H%M%S')}.csv")
            if not fichier:
                return
            with open(fichier, 'w', newline='', encoding='utf-8-sig') as f:
                writer = csv.writer(f, delimiter=';')
                writer.writerow(self.colonnes_dynamiques)
                for item in self.tree.get_children():
                    writer.writerow(self.tree.item(item)['values'])
            messagebox.showinfo("Succès", f"Stocks exportés vers :\n{fichier}")
            try:
                self._logger.log(
                    action="Export",
                    element="Stock Article",
                    details=f"Export stocks (CSV), lignes={len(self.tree.get_children())}, fichier={os.path.basename(fichier)}",
                    value=fichier,
                )
            except Exception:
                pass
        except Exception as e:
            messagebox.showerror("Erreur", f"Erreur lors de l'export: {str(e)}")

    def mettre_a_jour_tb_stock(self):
        conn = self.connect_db()
        if not conn:
            return
        try:
            cursor = conn.cursor()
            cursor.execute("""
                SELECT a.idarticle, u.idunite, u.codearticle, u.designationunite, a.designation
                FROM tb_article a INNER JOIN tb_unite u ON a.idarticle = u.idarticle
                WHERE a.deleted = 0 ORDER BY a.designation ASC, u.codearticle ASC
            """)
            articles = cursor.fetchall()
            compteur_maj = compteur_ins = compteur_total = 0
            for idarticle, idunite, code_art, unite_desig, art_desig in articles:
                for idmag, nom_mag in self.magasins:
                    compteur_total += 1
                    stock_calcule  = self.calculer_stock_article(idarticle, idunite, idmag)
                    cursor.execute("SELECT qtstock FROM tb_stock WHERE codearticle = %s AND idmag = %s",
                                   (str(code_art), idmag))
                    resultat = cursor.fetchone()
                    if resultat:
                        if abs(float(resultat[0] or 0) - float(stock_calcule)) > 0.001:
                            cursor.execute("UPDATE tb_stock SET qtstock = %s WHERE codearticle = %s AND idmag = %s",
                                           (stock_calcule, str(code_art), idmag))
                            compteur_maj += 1
                    else:
                        cursor.execute("INSERT INTO tb_stock (codearticle, idmag, qtstock, qtalert, deleted) VALUES (%s, %s, %s, 0, 0)",
                                       (str(code_art), idmag, stock_calcule))
                        compteur_ins += 1
                    if (compteur_maj + compteur_ins) % 100 == 0:
                        conn.commit()
            conn.commit()
            messagebox.showinfo("Synchronisation réussie",
                                f"✅ {compteur_maj} mises à jour, {compteur_ins} créations, {compteur_total} lignes traitées.")
        except Exception as e:
            conn.rollback()
            messagebox.showerror("Erreur de synchronisation", str(e))
            import traceback; traceback.print_exc()
        finally:
            cursor.close()
            conn.close()

    def ouvrir_fenetre_verification_inventaire(self):
        """Ouvre la fenêtre d'inventaire du jour en mode vérification."""
        win = ctk.CTkToplevel(self)
        win.title("Vérification inventaire du jour")
        win.geometry("1200x720")
        if _T:
            Theme.apply_toplevel(win)
        win.attributes('-topmost', True)
        win.focus_set()
        page = PageInventaireJour(
            win,
            db_conn=None,
            session_data={"user_id": self.iduser},
            mode="verification",
        )
        page.pack(fill="both", expand=True, padx=10, pady=10)
        try:
            self._logger.log(
                action="Vérification inventaire du jour",
                element="Inventaire du Jour",
                details="Ouverture mode vérification inventaire du jour",
                value="mode=verification",
            )
        except Exception:
            pass


# ── Test standalone ───────────────────────────────────────────────────────────
if __name__ == "__main__":
    ctk.set_appearance_mode("light")
    ctk.set_default_color_theme("blue")
    app = ctk.CTk()
    app.title("iJeery — Gestion des Stocks")
    app.geometry("1100x750")
    if _T:
        Theme.apply(app)
    app.grid_rowconfigure(0, weight=1)
    app.grid_columnconfigure(0, weight=1)
    PageStock(app, iduser=1).grid(row=0, column=0, sticky="nsew")
    app.mainloop()
