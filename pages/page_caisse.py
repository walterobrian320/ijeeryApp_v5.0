import customtkinter as ctk
import tkinter as tk
from tkinter import ttk
from tkcalendar import DateEntry
from tkinter import messagebox
import psycopg2
from datetime import datetime
import json
import os
from resource_utils import get_config_path, safe_file_read
from settings_utils import open_file_if_enabled, load_settings, save_settings
from log_utils import resolve_connected_user_id

# Imports ReportLab pour le PDF
from reportlab.lib import colors
from reportlab.lib.pagesizes import A4, landscape
from reportlab.platypus import SimpleDocTemplate, Table, TableStyle, Paragraph, Spacer
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle

# ── Thème iJeery ──────────────────────────────────────────────────────────────
try:
    from app_theme import Colors, Fonts, styled, Theme
    _T = True
except ImportError:
    _T = False


class _C:
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
    INFO_DARK      = "#16A085"
    INFO           = "#1ABC9C"
    TEXT_PRIMARY   = "#2C3E50"
    TEXT_SECONDARY = "#5D6D7E"
    TEXT_MUTED     = "#95A5A6"
    BORDER         = "#D5D8DC"
    DIVIDER        = "#E8EAED"


C = Colors if _T else _C

parent_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


def _apply_tree_style():
    s = ttk.Style()
    try:
        s.theme_use("clam")
    except Exception:
        pass
    s.configure("Caisse.Treeview",
                 background=C.BG_CARD, foreground=C.TEXT_PRIMARY,
                 fieldbackground=C.BG_CARD, rowheight=22,
                 font=("Roboto" if _T else "Segoe UI", 9),
                 borderwidth=0)
    s.configure("Caisse.Treeview.Heading",
                 background=C.BG_HEADER, foreground="#FFFFFF",
                 font=("Roboto" if _T else "Segoe UI", 9, "bold"),
                 relief="flat", padding=(4, 3))
    s.map("Caisse.Treeview",
          background=[("selected", C.PRIMARY)],
          foreground=[("selected", "#FFFFFF")])


def _f(size=10, weight="normal"):
    return ctk.CTkFont(
        family="Roboto" if _T else "Segoe UI",
        size=size, weight=weight)


# ====================================================================
# PageCaisse
# ====================================================================

class PageCaisse(ctk.CTkFrame):

    def __init__(self, master, username=None):
        super().__init__(master, fg_color=C.BG_PAGE)

        # ── Utilisateur connecté (transmis depuis le login) ───────────────────
        self.current_username = username or "Système"
        self.current_user_id = resolve_connected_user_id(
            master=self.master,
            session_data=getattr(self.master, "session_data", None),
            default=None,
        )

        # ── État interne (identique à l'original) ─────────────────────────────
        self.modes_paiement_dict = {"Tous": None}
        self.donnees_pour_pdf    = []
        self.total_enc_periode   = 0
        self.total_dec_periode   = 0
        self.show_cumul          = False
        self.montants_docs       = {}
        self.montants_modes      = {}
        self.cadres_docs         = {}
        self.cadres_modes        = {}
        self.frames_docs         = {}
        self.frames_modes        = {}
        self.filtre_doc_actif    = None
        self.filtre_mode_actif   = None
        self.couleurs_docs       = {}
        self.couleurs_modes      = {}
        self._traitement_filtre_en_cours = False
        self._filtre_doc_en_attente      = None
        self._filtre_mode_en_attente     = None
        self.mode_ui_to_bd = {
            "Espèces": None, "Crédit": None, "Chèque": None,
            "Virement": None, "Autres": None, "Mvola": None,
            "Airtel Money": None, "Orange Money": None,
        }
        self.mode_bd_to_id   = {}
        self.donnees_tableau = []
        self._display_row_metadata = []
        self._tree_row_metadata = {}

        self.conn = self.connect_db()
        if self.conn:
            self.cursor = self.conn.cursor()
        else:
            messagebox.showerror("Erreur", "Connexion impossible.")
            return

        # L'identifiant de session est la source de vérité.  Le nom affiché dans
        # l'audit doit donc être celui de cet utilisateur, et non celui transmis
        # éventuellement par une page parente.
        try:
            if self.current_user_id is not None:
                self.cursor.execute(
                    "SELECT username FROM tb_users WHERE iduser = %s LIMIT 1",
                    (self.current_user_id,),
                )
            else:
                self.cursor.execute(
                    "SELECT iduser, username FROM tb_users "
                    "WHERE LOWER(TRIM(username)) = LOWER(TRIM(%s)) LIMIT 1",
                    (self.current_username,),
                )
            row = self.cursor.fetchone()
            if row:
                if self.current_user_id is None:
                    self.current_user_id, self.current_username = row
                elif row[0]:
                    self.current_username = row[0]
        except psycopg2.Error:
            self.conn.rollback()

        _apply_tree_style()

        self.grid_columnconfigure(0, weight=1)
        self.grid_rowconfigure(3, weight=1)   # treeview row

        self._build_header()
        self._build_badges()
        self._build_filters()
        self._build_treeview()
        self._build_table_actions()
        self._build_footer()

        self.charger_modes_paiement()
        self.appliquer_filtres()

    # ── helper font ──────────────────────────────────────────────────────────
    # ====================================================================
    # CONSTRUCTION UI — REFONTE DESIGN
    # ====================================================================

    def _build_header(self):
        hdr = ctk.CTkFrame(self, fg_color=C.BG_HEADER, corner_radius=0)
        hdr.grid(row=0, column=0, sticky="ew")

        bar = ctk.CTkFrame(hdr, fg_color="transparent")
        bar.pack(fill="x", padx=16, pady=10)

        ctk.CTkLabel(
            bar, text="Gestion de la Caisse",
            font=_f(18, "bold"), text_color="#FFFFFF"
        ).pack(side="left")

        link_font = ctk.CTkFont(family="Segoe UI", size=11, underline=True)
        self.lbl_parametres = ctk.CTkLabel(
            bar,
            text="⚙ Paramètres",
            font=link_font,
            text_color="#DDEEFF",
            cursor="hand2",
        )
        self.lbl_parametres.pack(side="right")
        self.lbl_parametres.bind("<Button-1>", lambda _e: self._ouvrir_parametres_caisse())

    def _get_user_settings_key(self):
        if self.current_user_id is not None:
            return str(self.current_user_id)
        if self.current_username and self.current_username != "Système":
            return str(self.current_username)
        return "default"

    def _load_user_caisse_settings(self):
        settings = load_settings()
        user_settings = settings.get("User_Settings", {})
        if not isinstance(user_settings, dict):
            return {}
        key = self._get_user_settings_key()
        user_cfg = user_settings.get(key, {})
        if not isinstance(user_cfg, dict):
            return {}
        return user_cfg

    def _save_user_caisse_settings(self, **kwargs):
        settings = load_settings()
        user_settings = settings.get("User_Settings", {})
        if not isinstance(user_settings, dict):
            user_settings = {}
        key = self._get_user_settings_key()
        user_cfg = user_settings.get(key, {})
        if not isinstance(user_cfg, dict):
            user_cfg = {}
        user_cfg.update(kwargs)
        user_settings[key] = user_cfg
        settings["User_Settings"] = user_settings
        save_settings(settings)

    def _ouvrir_parametres_caisse(self):
        dialog = ctk.CTkToplevel(self)
        dialog.title("Paramètres de caisse")
        dialog.geometry("420x260")
        dialog.transient(self)
        dialog.grab_set()
        dialog.resizable(False, False)

        ctk.CTkLabel(
            dialog,
            text="Paramètres de gestion de caisse",
            font=_f(16, "bold"),
            text_color=C.TEXT_PRIMARY,
        ).pack(padx=18, pady=(16, 8))

        settings = self._load_user_caisse_settings()
        var_enc = ctk.BooleanVar(value=bool(settings.get("Caisse_FermerAuto_Encaissement", False)))
        var_dec = ctk.BooleanVar(value=bool(settings.get("Caisse_FermerAuto_Decaissement", False)))

        frame = ctk.CTkFrame(dialog, fg_color="transparent")
        frame.pack(fill="both", expand=True, padx=18, pady=(0, 8))

        ctk.CTkSwitch(
            frame,
            text="Encaissement : fermer automatiquement après mouvement",
            variable=var_enc,
            onvalue=True,
            offvalue=False,
            font=_f(11),
            text_color=C.TEXT_PRIMARY,
        ).pack(anchor="w", pady=(0, 8))

        ctk.CTkSwitch(
            frame,
            text="Décaissement : fermer automatiquement après mouvement",
            variable=var_dec,
            onvalue=True,
            offvalue=False,
            font=_f(11),
            text_color=C.TEXT_PRIMARY,
        ).pack(anchor="w", pady=(0, 8))

        def sauver():
            self._save_user_caisse_settings(
                Caisse_FermerAuto_Encaissement=bool(var_enc.get()),
                Caisse_FermerAuto_Decaissement=bool(var_dec.get()),
            )
            messagebox.showinfo("Paramètres", "Paramètres caisse enregistrés.", parent=dialog)
            dialog.destroy()

        btns = ctk.CTkFrame(dialog, fg_color="transparent")
        btns.pack(padx=18, pady=(0, 18))
        ctk.CTkButton(btns, text="Enregistrer", width=120, command=sauver).pack(side="left", padx=(0, 8))
        ctk.CTkButton(btns, text="Fermer", width=120, fg_color="#B0B0B0", hover_color="#8A8A8A", command=dialog.destroy).pack(side="left")

    def _build_badges(self):
        """Deux rangées de badges cliquables (documents + modes de paiement)."""
        card = ctk.CTkFrame(self, fg_color=C.BG_CARD, corner_radius=8)
        card.grid(row=1, column=0, sticky="ew", padx=12, pady=(6, 2))

        # ── Rangée Documents ──────────────────────────────────────────────────
        row_docs = ctk.CTkFrame(card, fg_color="transparent")
        row_docs.pack(fill="x", padx=8, pady=(8, 2))

        ctk.CTkLabel(
            row_docs, text="TYPES",
            font=_f(8, "bold"), text_color=C.TEXT_MUTED, width=42, anchor="w"
        ).pack(side="left", padx=(0, 4))

        docs_config = [
            ("Client",         "#7CB342"),
            ("Avoir",          "#F9A825"),
            ("Fournisseur",    "#1E88E5"),
            ("Personnel",      "#757575"),
            ("Dépenses",       "#E53935"),
            ("Encaissement",   "#43A047"),
            ("Paiement Crédit","#039BE5"),
        ]
        for doc, color in docs_config:
            self.creer_cadre_doc(row_docs, doc, color)

        # ── Rangée Modes ─────────────────────────────────────────────────────
        row_modes = ctk.CTkFrame(card, fg_color="transparent")
        row_modes.pack(fill="x", padx=8, pady=(2, 8))

        ctk.CTkLabel(
            row_modes, text="MODES",
            font=_f(8, "bold"), text_color=C.TEXT_MUTED, width=42, anchor="w"
        ).pack(side="left", padx=(0, 4))

        modes_config = [
            ("Espèces",      "#E65100"),
            ("Crédit",       "#1976D2"),
            ("Chèque",       "#0277BD"),
            ("Virement",     "#7B1FA2"),
            ("Autres",       "#C62828"),
            ("Mvola",        "#F57F17"),
            ("Airtel Money", "#827717"),
            ("Orange Money", "#00838F"),
        ]
        for mode, color in modes_config:
            self.creer_cadre_mode(row_modes, mode, color)

    def _build_filters(self):
        """Barre de filtres : dates, boutons, checkbox, recherche."""
        panel = ctk.CTkFrame(self, fg_color=C.BG_CARD, corner_radius=8)
        panel.grid(row=2, column=0, sticky="ew", padx=12, pady=(2, 4))

        inner = ctk.CTkFrame(panel, fg_color="transparent")
        inner.pack(fill="x", padx=10, pady=7)

        # Dates
        ctk.CTkLabel(inner, text="Du :", font=_f(10),
                     text_color=C.TEXT_SECONDARY).pack(side="left", padx=(0, 2))
        self.entry_debut = DateEntry(inner, width=10, background=C.BG_HEADER,
                                     foreground="white", borderwidth=1,
                                     date_pattern="dd/mm/yyyy",
                                     font=("Segoe UI", 9))
        self.entry_debut.pack(side="left", padx=(0, 6))

        ctk.CTkLabel(inner, text="Au :", font=_f(10),
                     text_color=C.TEXT_SECONDARY).pack(side="left", padx=(0, 2))
        self.entry_fin = DateEntry(inner, width=10, background=C.BG_HEADER,
                                   foreground="white", borderwidth=1,
                                   date_pattern="dd/mm/yyyy",
                                   font=("Segoe UI", 9))
        self.entry_fin.pack(side="left", padx=(0, 8))

        ctk.CTkButton(
            inner, text="Valider",
            command=self._apply_filters_with_log,
            fg_color=C.SUCCESS_DARK, hover_color=C.SUCCESS,
            text_color="#FFFFFF", height=28, width=80, font=_f(10, "bold")
        ).pack(side="left", padx=(0, 4))

        ctk.CTkButton(
            inner, text="🖨️  PDF",
            command=self.generer_pdf,
            fg_color=C.INFO_DARK, hover_color=C.INFO,
            text_color="#FFFFFF", height=28, width=90, font=_f(10, "bold")
        ).pack(side="left", padx=(0, 12))

        # Checkbox Cumul
        self.check_cumul = ctk.CTkCheckBox(
            inner, text="Afficher Cumul",
            font=_f(10), text_color=C.TEXT_SECONDARY,
            checkbox_width=18, checkbox_height=18,
            command=self.toggle_cumul)
        self.check_cumul.pack(side="left", padx=(0, 16))

        # Séparateur
        ctk.CTkFrame(inner, width=1, height=22,
                     fg_color=C.BORDER).pack(side="left", padx=(0, 12))

        # Recherche
        ctk.CTkLabel(inner, text="🔍", font=_f(12),
                     text_color=C.TEXT_MUTED).pack(side="left", padx=(0, 4))
        self.entry_recherche = ctk.CTkEntry(
            inner,
            placeholder_text="Rechercher dans le tableau…",
            height=28, fg_color=C.BG_INPUT,
            border_color=C.BORDER, text_color=C.TEXT_PRIMARY, font=_f(10))
        self.entry_recherche.pack(side="left", fill="x", expand=True, padx=(0, 4))
        self.entry_recherche.bind("<KeyRelease>", self.filtrer_tableau_recherche)

    def _build_treeview(self):
        tbl = ctk.CTkFrame(self, fg_color=C.BG_CARD, corner_radius=8)
        tbl.grid(row=3, column=0, sticky="nsew", padx=12, pady=(0, 4))
        tbl.grid_rowconfigure(0, weight=1)
        tbl.grid_columnconfigure(0, weight=1)

        self.colonnes = ("Date", "Référence", "Description",
                         "Encaissement", "Décaissement", "Cumul",
                         "Mode", "Utilisateur")

        self.tree = ttk.Treeview(tbl, columns=self.colonnes,
                                 show="headings", style="Caisse.Treeview")

        self.tree.tag_configure("odd",  background=C.BG_CARD)
        self.tree.tag_configure("even", background="#F0F4F8")

        col_cfg = {
            "Date":          (140, "center"),
            "Référence":     (110, "center"),
            "Description":   (250, "w"),
            "Encaissement":  (110, "e"),
            "Décaissement":  (110, "e"),
            "Cumul":         (0,   "e"),
            "Mode":          (110, "center"),
            "Utilisateur":   (100, "center"),
        }
        for col, (w, anc) in col_cfg.items():
            self.tree.heading(col, text=col)
            stretch = (col == "Description")
            self.tree.column(col, width=w, anchor=anc,
                             stretch=stretch,
                             minwidth=0 if w == 0 else 40)

        sy = ctk.CTkScrollbar(tbl, orientation="vertical",  command=self.tree.yview)
        sx = ctk.CTkScrollbar(tbl, orientation="horizontal", command=self.tree.xview)
        self.tree.configure(yscrollcommand=sy.set, xscrollcommand=sx.set)

        self.tree.grid(row=0, column=0, sticky="nsew", padx=(6, 0), pady=(6, 0))
        sy.grid(row=0, column=1, sticky="ns",  pady=(6, 0))
        sx.grid(row=1, column=0, sticky="ew",  padx=(6, 0))

        self.tree.bind("<Button-3>", self._on_tree_right_click)

    def _build_table_actions(self):
        panel = ctk.CTkFrame(self, fg_color="transparent")
        panel.grid(row=4, column=0, sticky="ew", padx=12, pady=(2, 8))

        actions = ctk.CTkFrame(panel, fg_color="transparent")
        actions.pack(side="right")

        self.btn_encaissement = ctk.CTkButton(
            actions, text="＋  Encaissement",
            command=self.open_page_encaissement,
            fg_color=C.SUCCESS_DARK, hover_color=C.SUCCESS,
            text_color="#FFFFFF", height=34, width=160, font=_f(10, "bold"))
        self.btn_encaissement.pack(side="left", padx=(0, 8))

        self.btn_decaissement = ctk.CTkButton(
            actions, text="－  Décaissement",
            command=self.open_page_decaissement,
            fg_color=C.DANGER, hover_color=C.DANGER_DARK,
            text_color="#FFFFFF", height=34, width=160, font=_f(10, "bold"))
        self.btn_decaissement.pack(side="left")

    def _build_footer(self):
        pass

    # ====================================================================
    # BADGES (cadres cliquables) — design épuré
    # ====================================================================

    def creer_cadre_doc(self, parent, nom, couleur):
        """Crée un badge cliquable pour un type de document."""
        frame = ctk.CTkFrame(parent, fg_color=couleur, corner_radius=6,
                             width=128, height=50)
        frame.pack(side="left", padx=2, pady=1)
        frame.pack_propagate(False)

        label_nom = ctk.CTkLabel(
            frame, text=nom.upper(),
            font=_f(10, "normal"), text_color="#FFFFFF")
        label_nom.pack(pady=(5, 0))

        label_montant = ctk.CTkLabel(
            frame, text="0",
            font=_f(11, "bold"), text_color="#FFFFFF")
        label_montant.pack()

        self.cadres_docs[nom]  = label_montant
        self.frames_docs[nom]  = (frame, couleur, label_nom, label_montant)
        self.couleurs_docs[nom] = couleur

        def on_click(event=None, doc_nom=nom):
            self._traiter_clic_doc(doc_nom)

        def on_enter(event=None):
            if self.filtre_doc_actif != nom:
                frame.configure(fg_color=self._assombrir_couleur(couleur, 0.8))

        def on_leave(event=None):
            if self.filtre_doc_actif == nom:
                frame.configure(fg_color="#1a1a1a",
                                border_width=2, border_color="#FFD700")
            else:
                frame.configure(fg_color=couleur, border_width=0)

        for w in (frame, label_nom, label_montant):
            w.bind("<Button-1>", on_click)
            w.bind("<Enter>",    on_enter)
            w.bind("<Leave>",    on_leave)

    def creer_cadre_mode(self, parent, nom, couleur):
        """Crée un badge cliquable pour un mode de paiement."""
        frame = ctk.CTkFrame(parent, fg_color=couleur, corner_radius=6,
                             width=118, height=50)
        frame.pack(side="left", padx=2, pady=1)
        frame.pack_propagate(False)

        label_nom = ctk.CTkLabel(
            frame, text=nom.upper(),
            font=_f(10, "normal"), text_color="#FFFFFF")
        label_nom.pack(pady=(5, 0))

        label_montant = ctk.CTkLabel(
            frame, text="0",
            font=_f(11, "bold"), text_color="#FFFFFF")
        label_montant.pack()

        self.cadres_modes[nom]  = label_montant
        self.frames_modes[nom]  = (frame, couleur, label_nom, label_montant)
        self.couleurs_modes[nom] = couleur

        def on_click(event=None, mode_nom=nom):
            self._traiter_clic_mode(mode_nom)

        def on_enter(event=None):
            if self.filtre_mode_actif != nom:
                frame.configure(fg_color=self._assombrir_couleur(couleur, 0.8))

        def on_leave(event=None):
            if self.filtre_mode_actif == nom:
                frame.configure(fg_color="#1a1a1a",
                                border_width=2, border_color="#FFD700")
            else:
                frame.configure(fg_color=couleur, border_width=0)

        for w in (frame, label_nom, label_montant):
            w.bind("<Button-1>", on_click)
            w.bind("<Enter>",    on_enter)
            w.bind("<Leave>",    on_leave)

    # ====================================================================
    # LOGIQUE MÉTIER — inchangée
    # ====================================================================

    def filtrer_par_doc(self, doc):
        if self.filtre_doc_actif == doc:
            self.filtre_doc_actif = None
        else:
            self.filtre_doc_actif = doc
        self._mettre_a_jour_etat_cadres()
        self.appliquer_filtres()

    def _traiter_clic_doc(self, doc):
        if self._traitement_filtre_en_cours:
            self._filtre_doc_en_attente = doc
            return
        self._traitement_filtre_en_cours = True
        self.after(0, self._executer_clic_doc, doc)

    def _executer_clic_doc(self, doc):
        try:
            self.filtrer_par_doc(doc)
        finally:
            self._traitement_filtre_en_cours = False
            if self._filtre_doc_en_attente is not None:
                en_attente = self._filtre_doc_en_attente
                self._filtre_doc_en_attente = None
                self._traiter_clic_doc(en_attente)
            elif self._filtre_mode_en_attente is not None:
                en_attente = self._filtre_mode_en_attente
                self._filtre_mode_en_attente = None
                self._traiter_clic_mode(en_attente)

    def _traiter_clic_mode(self, mode):
        if self._traitement_filtre_en_cours:
            self._filtre_mode_en_attente = mode
            return
        self._traitement_filtre_en_cours = True
        self.after(0, self._executer_clic_mode, mode)

    def _executer_clic_mode(self, mode):
        try:
            self.filtrer_par_mode(mode)
        finally:
            self._traitement_filtre_en_cours = False
            if self._filtre_mode_en_attente is not None:
                en_attente = self._filtre_mode_en_attente
                self._filtre_mode_en_attente = None
                self._traiter_clic_mode(en_attente)
            elif self._filtre_doc_en_attente is not None:
                en_attente = self._filtre_doc_en_attente
                self._filtre_doc_en_attente = None
                self._traiter_clic_doc(en_attente)

    def filtrer_par_mode(self, mode):
        if self.filtre_mode_actif == mode:
            self.filtre_mode_actif = None
        else:
            self.filtre_mode_actif = mode
        self._mettre_a_jour_etat_cadres()
        self.appliquer_filtres()

    def _assombrir_couleur(self, couleur_hex, facteur=0.7):
        couleur_hex = couleur_hex.lstrip('#')
        r, g, b = tuple(int(couleur_hex[i:i+2], 16) for i in (0, 2, 4))
        r, g, b = int(r * facteur), int(g * facteur), int(b * facteur)
        return f'#{r:02x}{g:02x}{b:02x}'

    def _mettre_a_jour_etat_cadres(self):
        for nom, (frame, couleur_orig, label_nom, label_montant) in self.frames_docs.items():
            if self.filtre_doc_actif == nom:
                frame.configure(fg_color="#1a1a1a",
                                border_width=2, border_color="#FFD700")
            else:
                frame.configure(fg_color=couleur_orig, border_width=0)
        for nom, (frame, couleur_orig, label_nom, label_montant) in self.frames_modes.items():
            if self.filtre_mode_actif == nom:
                frame.configure(fg_color="#1a1a1a",
                                border_width=2, border_color="#FFD700")
            else:
                frame.configure(fg_color=couleur_orig, border_width=0)
        self.update_idletasks()

    def filtrer_tableau_recherche(self, event=None):
        recherche = self.entry_recherche.get().strip().lower()
        for item in self.tree.get_children():
            self.tree.delete(item)
        self._tree_row_metadata = {}
        if not recherche:
            for i, row in enumerate(self.donnees_tableau):
                tag = 'even' if (i % 2) else 'odd'
                try:
                    iid = self.tree.insert("", "end", values=row, tags=(tag,))
                except TypeError:
                    iid = self.tree.insert("", "end", values=row)
                meta = self._display_row_metadata[i] if i < len(self._display_row_metadata) else None
                if meta:
                    self._tree_row_metadata[iid] = meta
            return

        lignes_filtrees = []
        metas_filtrees = []
        for row, meta in zip(self.donnees_tableau, self._display_row_metadata):
            if any(recherche in str(cell).lower() for cell in row):
                lignes_filtrees.append(row)
                metas_filtrees.append(meta)

        for i, row in enumerate(lignes_filtrees):
            tag = 'even' if (i % 2) else 'odd'
            try:
                iid = self.tree.insert("", "end", values=row, tags=(tag,))
            except TypeError:
                iid = self.tree.insert("", "end", values=row)
            meta = metas_filtrees[i]
            if meta:
                self._tree_row_metadata[iid] = meta

    def toggle_cumul(self):
        self.show_cumul = self.check_cumul.get() == 1
        if self.show_cumul:
            self.tree.column("Cumul", anchor="e", width=110, stretch=True)
        else:
            self.tree.column("Cumul", anchor="e", width=0, stretch=False)
        self.appliquer_filtres()

    def connect_db(self):
        try:
            config_path = get_config_path('config.json')
            if not os.path.exists(config_path):
                config_path = 'config.json'
            if not os.path.exists(config_path):
                messagebox.showerror("Erreur", "Fichier config.json manquant.")
                return None
            from pages.db_helper import connect_page_db
            return connect_page_db()
        except Exception as err:
            messagebox.showerror("Erreur de connexion", f"Détails : {err}")
            return None

    def format_montant(self, v):
        return f"{v:,.0f}".replace(",", " ").replace(".", ",").replace(" ", ".")

    def format_montant_court(self, v):
        return self.format_montant(v)

    def charger_modes_paiement(self):
        try:
            self.cursor.execute(
                "SELECT idmode, modedepaiement FROM tb_modepaiement ORDER BY modedepaiement")
            rows = self.cursor.fetchall()
            for r in rows:
                idmode, modedepaiement = r
                self.mode_bd_to_id[modedepaiement] = idmode
            alias_mapping = {
                "Espèces":      ["Espèces", "Espece"],
                "Crédit":       ["Crédit", "Credit"],
                "Chèque":       ["Chèque", "Cheque", "Chèque bancaire"],
                "Virement":     ["Virement", "Virement bancaire"],
                "Autres":       ["Autres"],
                "Mvola":        ["Mvola", "MVOLA"],
                "Airtel Money": ["Airtel Money", "Airtel money"],
                "Orange Money": ["Orange Money", "Orange money"],
            }
            for nom_ui, alias_list in alias_mapping.items():
                for alias in alias_list:
                    for nom_bd, idmode in self.mode_bd_to_id.items():
                        if nom_bd.lower().strip() == alias.lower().strip():
                            self.mode_ui_to_bd[nom_ui] = nom_bd
                            self.modes_paiement_dict[nom_ui] = idmode
                            break
                    else:
                        continue
                    break
        except Exception as e:
            print(f"Erreur lors du chargement des modes: {e}")

    def calculer_montants_categories(self, date_d, date_f):
        d_str, f_str = date_d.strftime('%Y-%m-%d'), date_f.strftime('%Y-%m-%d')
        self.montants_docs = {
            "Client": 0, "Avoir": 0, "Fournisseur": 0, "Personnel": 0,
            "Dépenses": 0, "Encaissement": 0, "Paiement Crédit": 0}
        self.montants_modes = {}
        try:
            for table, key in [
                ("tb_pmtfacture",  "Client"),
                ("tb_pmtavoir",    "Avoir"),
                ("tb_pmtcom",      "Fournisseur"),
                ("tb_pmtcredit",   "Paiement Crédit"),
                ("tb_decaissement","Dépenses"),
                ("tb_encaissement","Encaissement"),
            ]:
                ref_col = "refavoir" if table == "tb_pmtavoir" else "refpmt"
                self.cursor.execute(f"""
                    SELECT SUM(CASE WHEN idtypeoperation=1 THEN mtpaye ELSE -mtpaye END)
                    FROM {table}
                    WHERE datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
                """, [d_str, f_str])
                result = self.cursor.fetchone()
                self.montants_docs[key] = float(result[0]) if result and result[0] else 0

            self.cursor.execute("""
                SELECT SUM(CASE WHEN idtypeoperation=1 THEN mtpaye ELSE -mtpaye END)
                FROM (
                    SELECT idtypeoperation, mtpaye FROM tb_avancepers WHERE datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
                    UNION ALL
                    SELECT idtypeoperation, mtpaye FROM tb_avancespecpers WHERE datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
                    UNION ALL
                    SELECT idtypeoperation, mtpaye FROM tb_pmtsalaire WHERE datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
                ) as pers
            """, [d_str, f_str, d_str, f_str, d_str, f_str])
            result = self.cursor.fetchone()
            self.montants_docs["Personnel"] = float(result[0]) if result and result[0] else 0

            # Inclure aussi les transferts caisse<->banque : ils doivent impacter la card "Espèces".
            params = [d_str, f_str] * 10
            self.cursor.execute("""
                SELECT COALESCE(t2.modedepaiement, 'Inconnu'),
                       SUM(CASE WHEN t1.idtypeoperation=1 THEN t1.mtpaye ELSE -t1.mtpaye END)
                FROM (
                    SELECT idmode, mtpaye, idtypeoperation FROM tb_pmtfacture WHERE datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
                    UNION ALL SELECT idmode, mtpaye, idtypeoperation FROM tb_pmtcom WHERE datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
                    UNION ALL SELECT idmode, mtpaye, idtypeoperation FROM tb_encaissement WHERE datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
                    UNION ALL SELECT idmode, mtpaye, idtypeoperation FROM tb_decaissement WHERE datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
                    UNION ALL SELECT idmode, mtpaye, idtypeoperation FROM tb_avancepers WHERE datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
                    UNION ALL SELECT idmode, mtpaye, idtypeoperation FROM tb_avancespecpers WHERE datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
                    UNION ALL SELECT idmode, mtpaye, idtypeoperation FROM tb_pmtsalaire WHERE datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
                    UNION ALL SELECT idmode, mtpaye, idtypeoperation FROM tb_pmtavoir WHERE datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
                    UNION ALL SELECT idmode, mtpaye, idtypeoperation FROM tb_pmtcredit WHERE datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
                    UNION ALL SELECT idmode, mtpaye, idtypeoperation FROM tb_transfertcaisse WHERE datepmt::date BETWEEN %s AND %s
                ) t1
                LEFT JOIN tb_modepaiement t2 ON t1.idmode = t2.idmode
                GROUP BY t2.modedepaiement
            """, params)
            for row in self.cursor.fetchall():
                mode, solde = row
                self.montants_modes[mode] = float(solde) if solde else 0

            self.mettre_a_jour_cadres()
        except Exception as e:
            print(f"Erreur calcul montants: {e}")

    def mettre_a_jour_cadres(self):
        for doc, label in self.cadres_docs.items():
            label.configure(text=self.format_montant_court(
                self.montants_docs.get(doc, 0)))
        for mode_ui, label in self.cadres_modes.items():
            mode_bd = self.mode_ui_to_bd.get(mode_ui)
            montant = self.montants_modes.get(mode_bd, 0) if mode_bd else 0
            label.configure(text=self.format_montant_court(montant))

    def appliquer_filtres(self, _=None):
        mode_nom_ui = self.filtre_mode_actif
        mode_id     = None
        if mode_nom_ui:
            mode_bd = self.mode_ui_to_bd.get(mode_nom_ui)
            if mode_bd:
                mode_id = self.mode_bd_to_id.get(mode_bd)
        type_doc = self.filtre_doc_actif if self.filtre_doc_actif else "Tous"
        date_d   = self.entry_debut.get_date()
        date_f   = self.entry_fin.get_date()
        self.calculer_montants_categories(date_d, date_f)
        self.charger_donnees(date_d, date_f, mode_id, type_doc)

    def _apply_filters_with_log(self):
        try:
            type_doc = self.filtre_doc_actif if self.filtre_doc_actif else "Tous"
            mode_ui = self.filtre_mode_actif if self.filtre_mode_actif else "Tous"
            d = self.entry_debut.get_date()
            f = self.entry_fin.get_date()
            self._logger.log(
                action="Consultation caisse",
                element="Caisse",
                details=f"Filtre caisse (du={d}, au={f}, doc={type_doc}, mode={mode_ui})",
                value="filtre",
            )
        except Exception:
            pass
        self.appliquer_filtres()

    def charger_donnees(self, date_d, date_f, mode_id=None, type_doc="Tous"):
        if not self.conn: return
        d_str, f_str = date_d.strftime('%Y-%m-%d'), date_f.strftime('%Y-%m-%d')
        for item in self.tree.get_children(): self.tree.delete(item)
        all_ops  = []
        sql_mode = ""
        mode_params = []
        if mode_id is not None:
            sql_mode    = " AND t1.idmode = %s"
            mode_params = [mode_id]

        def exec_query(query, params, source_table=None, modifiable=False):
            try:
                self.cursor.execute(query, params)
                rows = self.cursor.fetchall()
                for row in rows:
                    record_id = row[0]
                    data = row[1:]
                    all_ops.append({
                        "data": data,
                        "source_table": source_table,
                        "record_id": record_id,
                        "modifiable": modifiable,
                    })
            except psycopg2.Error as e:
                print(f"Erreur query: {e}")
                self.conn.rollback()

        if type_doc in ["Tous", "Client"]:
            exec_query(f"SELECT t1.id, t1.datepmt, t1.refpmt, t1.observation, t1.mtpaye, t1.idtypeoperation, COALESCE(t2.modedepaiement,'Inconnu'), COALESCE(t3.username,'Système') FROM tb_pmtfacture t1 LEFT JOIN tb_modepaiement t2 ON t1.idmode=t2.idmode LEFT JOIN tb_users t3 ON t1.iduser=t3.iduser WHERE t1.datepmt::date BETWEEN %s AND %s AND t1.id_banque IS NULL{sql_mode}", [d_str, f_str]+mode_params, source_table="tb_pmtfacture", modifiable=False)
        if type_doc in ["Tous", "Paiement Crédit"]:
            exec_query(f"SELECT t1.id, t1.datepmt, t1.refpmt, t1.observation, t1.mtpaye, t1.idtypeoperation, COALESCE(t2.modedepaiement,'Inconnu'), COALESCE(t3.username,'Système') FROM tb_pmtcredit t1 LEFT JOIN tb_modepaiement t2 ON t1.idmode=t2.idmode LEFT JOIN tb_users t3 ON t1.iduser=t3.iduser WHERE t1.datepmt::date BETWEEN %s AND %s AND t1.id_banque IS NULL{sql_mode}", [d_str, f_str]+mode_params, source_table="tb_pmtcredit", modifiable=False)
        if type_doc in ["Tous", "Avoir"]:
            exec_query(f"SELECT t1.id, t1.datepmt, t1.refavoir, t1.observation, t1.mtpaye, t1.idtypeoperation, COALESCE(t2.modedepaiement,'Inconnu'), COALESCE(t3.username,'Système') FROM tb_pmtavoir t1 LEFT JOIN tb_modepaiement t2 ON t1.idmode=t2.idmode LEFT JOIN tb_users t3 ON t1.iduser=t3.iduser WHERE t1.datepmt::date BETWEEN %s AND %s AND t1.id_banque IS NULL{sql_mode}", [d_str, f_str]+mode_params, source_table="tb_pmtavoir", modifiable=False)
        if type_doc in ["Tous", "Fournisseur"]:
            exec_query(f"SELECT t1.id, t1.datepmt, t1.refpmt, t1.observation, t1.mtpaye, t1.idtypeoperation, COALESCE(t2.modedepaiement,'Inconnu'), COALESCE(t3.username,'Système') FROM tb_pmtcom t1 LEFT JOIN tb_modepaiement t2 ON t1.idmode=t2.idmode LEFT JOIN tb_users t3 ON t1.iduser=t3.iduser WHERE t1.datepmt::date BETWEEN %s AND %s AND t1.id_banque IS NULL{sql_mode}", [d_str, f_str]+mode_params, source_table="tb_pmtcom", modifiable=False)
        if type_doc in ["Tous", "Encaissement"]:
            exec_query(f"SELECT t1.id, t1.datepmt, t1.refpmt, t1.observation, t1.mtpaye, t1.idtypeoperation, COALESCE(t2.modedepaiement,'Inconnu'), COALESCE(t3.username,'Système') FROM tb_encaissement t1 LEFT JOIN tb_modepaiement t2 ON t1.idmode=t2.idmode LEFT JOIN tb_users t3 ON t1.iduser=t3.iduser WHERE t1.datepmt::date BETWEEN %s AND %s AND t1.id_banque IS NULL{sql_mode}", [d_str, f_str]+mode_params, source_table="tb_encaissement", modifiable=True)
        if type_doc in ["Tous", "Dépenses"]:
            exec_query(f"SELECT t1.id, t1.datepmt, t1.refpmt, t1.observation, t1.mtpaye, t1.idtypeoperation, COALESCE(t2.modedepaiement,'Inconnu'), COALESCE(t3.username,'Système') FROM tb_decaissement t1 LEFT JOIN tb_modepaiement t2 ON t1.idmode=t2.idmode LEFT JOIN tb_users t3 ON t1.iduser=t3.iduser WHERE t1.datepmt::date BETWEEN %s AND %s AND t1.id_banque IS NULL{sql_mode}", [d_str, f_str]+mode_params, source_table="tb_decaissement", modifiable=True)
        if type_doc in ["Tous", "Personnel"]:
            for tbl in ("tb_avancepers", "tb_avancespecpers", "tb_pmtsalaire"):
                exec_query(f"SELECT t1.id, t1.datepmt, t1.refpmt, t1.observation, t1.mtpaye, t1.idtypeoperation, COALESCE(t2.modedepaiement,'Inconnu'), COALESCE(t3.username,'Système') FROM {tbl} t1 LEFT JOIN tb_modepaiement t2 ON t1.idmode=t2.idmode LEFT JOIN tb_users t3 ON t1.iduser=t3.iduser WHERE t1.datepmt::date BETWEEN %s AND %s AND t1.id_banque IS NULL{sql_mode}", [d_str, f_str]+mode_params, source_table=tbl, modifiable=False)
        if (not mode_id or mode_id == 1) and type_doc == "Tous":
            exec_query("SELECT t1.id, t1.datepmt, t1.refpmt, t1.observation, t1.mtpaye, t1.idtypeoperation, COALESCE(t2.modedepaiement,'Espèces'), COALESCE(t3.username,'admin') FROM tb_transfertcaisse t1 LEFT JOIN tb_modepaiement t2 ON t1.idmode=t2.idmode LEFT JOIN tb_users t3 ON t1.iduser=t3.iduser WHERE t1.datepmt::date BETWEEN %s AND %s", [d_str, f_str], source_table="tb_transfertcaisse", modifiable=False)

        def get_datetime(op):
            dt = op["data"][0]
            return dt if isinstance(dt, datetime) else datetime.combine(dt, datetime.min.time())

        all_ops.sort(key=get_datetime, reverse=True)
        self.donnees_pour_pdf    = []
        self.donnees_tableau     = []
        self._display_row_metadata = []
        self._tree_row_metadata  = {}
        self.total_enc_periode   = 0
        self.total_dec_periode   = 0

        all_ops_asc  = list(reversed(all_ops))
        cumuls_dict  = {}
        cumul_courant = 0
        for idx, r in enumerate(all_ops_asc):
            data = r["data"]
            enc = float(data[3]) if data[4] == 1 else 0
            dec = float(data[3]) if data[4] == 2 else 0
            cumul_courant += enc - dec
            cumuls_dict[idx] = cumul_courant

        try:
            for i, op in enumerate(all_ops):
                data = op["data"]
                dt, ref, obs, mt, typ, mod, usr = data
                enc = float(mt) if typ == 1 else 0
                dec = float(mt) if typ == 2 else 0
                self.total_enc_periode += enc
                self.total_dec_periode += dec
                cumul_idx   = len(all_ops) - 1 - i
                cumul_val   = cumuls_dict.get(cumul_idx, 0)
                date_str    = dt.strftime("%d/%m/%Y %H:%M:%S") if isinstance(dt, datetime) else dt.strftime("%d/%m/%Y 00:00:00")
                cumul_str   = self.format_montant(cumul_val) if self.show_cumul else ""
                vals = (date_str, str(ref), str(obs),
                        self.format_montant(enc) if enc else "",
                        self.format_montant(dec) if dec else "",
                        cumul_str, mod, usr)
                tag = 'even' if (i % 2) else 'odd'
                try:
                    iid = self.tree.insert("", "end", values=vals, tags=(tag,))
                except TypeError:
                    iid = self.tree.insert("", "end", values=vals)
                meta = {
                    "source_table": op.get("source_table"),
                    "record_id": op.get("record_id"),
                    "modifiable": bool(op.get("modifiable")),
                    "description": str(obs),
                    "reference": str(ref),
                }
                self._tree_row_metadata[iid] = meta
                self._display_row_metadata.append(meta)
                self.donnees_pour_pdf.append(list(vals))
                self.donnees_tableau.append(vals)

            self.update_solde_global()
        except Exception as e:
            print(f"Erreur lors du chargement des données: {e}")

    def _on_tree_right_click(self, event):
        item = self.tree.identify_row(event.y)
        if not item:
            return
        self.tree.selection_set(item)
        meta = self._tree_row_metadata.get(item)
        if not meta or not meta.get("modifiable"):
            return

        menu = tk.Menu(self, tearoff=0)
        menu.add_command(
            label="Modifier la description",
            command=lambda iid=item: self._ouvrir_dialogue_modification(iid)
        )
        menu.post(event.x_root, event.y_root)

    def _ouvrir_dialogue_modification(self, iid):
        meta = self._tree_row_metadata.get(iid)
        if not meta or not meta.get("modifiable"):
            return

        values = list(self.tree.item(iid, "values") or [])
        if len(values) < 3:
            return

        dialog = ctk.CTkToplevel(self.winfo_toplevel())
        dialog.title("Modifier la description")
        dialog.transient(self.winfo_toplevel())
        dialog.grab_set()
        dialog.geometry("420x260")
        dialog.resizable(False, False)

        parent = self.winfo_toplevel()
        parent.update_idletasks()
        x = max(0, parent.winfo_rootx() + (parent.winfo_width() // 2) - 210)
        y = max(0, parent.winfo_rooty() + (parent.winfo_height() // 2) - 130)
        dialog.geometry(f"420x260+{x}+{y}")

        ctk.CTkLabel(dialog, text="Modification de description", font=_f(14, "bold"),
                     text_color=C.TEXT_PRIMARY).pack(padx=16, pady=(16, 6))
        ctk.CTkLabel(dialog, text="Type : " + ("Encaissement" if meta.get("source_table") == "tb_encaissement" else "Décaissement"),
                     font=_f(10), text_color=C.TEXT_SECONDARY).pack(anchor="w", padx=20, pady=(4, 2))
        ctk.CTkLabel(dialog, text="Référence : " + str(values[1]), font=_f(10),
                     text_color=C.TEXT_SECONDARY).pack(anchor="w", padx=20, pady=(0, 8))

        ctk.CTkLabel(dialog, text="Nouvelle description", font=_f(10),
                     text_color=C.TEXT_PRIMARY).pack(anchor="w", padx=20, pady=(0, 2))
        desc_var = tk.StringVar(value=meta.get("description") or "")
        desc_entry = ctk.CTkEntry(dialog, textvariable=desc_var, width=360)
        desc_entry.pack(padx=20, pady=(0, 8))

        ctk.CTkLabel(dialog, text=f"Mot de passe de {self.current_username}", font=_f(10),
                     text_color=C.TEXT_PRIMARY).pack(anchor="w", padx=20, pady=(0, 2))
        pwd_var = tk.StringVar(value="")
        pwd_entry = ctk.CTkEntry(dialog, textvariable=pwd_var, width=360, show="*")
        pwd_entry.pack(padx=20, pady=(0, 12))

        def save_action(event=None):
            self._enregistrer_description(dialog, iid, desc_var.get(), pwd_var.get())

        ctk.CTkButton(dialog, text="Enregistrer", command=save_action,
                      fg_color=C.SUCCESS_DARK, hover_color=C.SUCCESS,
                      text_color="#FFFFFF", width=140, height=32).pack(side="left", padx=(20, 8), pady=(0, 16))
        ctk.CTkButton(dialog, text="Annuler", command=dialog.destroy,
                      fg_color=C.BORDER, hover_color=C.TEXT_MUTED,
                      text_color=C.TEXT_PRIMARY, width=140, height=32).pack(side="left", padx=(0, 20), pady=(0, 16))

        desc_entry.bind("<Return>", save_action)
        pwd_entry.bind("<Return>", save_action)

    def _enregistrer_description(self, dialog, iid, description, password):
        meta = self._tree_row_metadata.get(iid)
        if not meta or not meta.get("modifiable"):
            return
        if not description or not description.strip():
            messagebox.showerror("Erreur", "La description ne peut pas être vide.")
            return
        if not password:
            messagebox.showerror("Erreur", "Le mot de passe est obligatoire.")
            return

        source_table = meta.get("source_table")
        record_id = meta.get("record_id")
        if source_table not in ("tb_encaissement", "tb_decaissement") or record_id is None:
            messagebox.showerror("Erreur", "Cette ligne ne peut pas être modifiée.")
            return

        timestamp = datetime.now().strftime("%d/%m/%Y à %H:%M")
        suffix = f" [modifié par {self.current_username} le {timestamp}]"
        max_len = 150 - len(suffix)
        if len(description.strip()) > max_len:
            messagebox.showerror("Erreur", f"La description ne doit pas dépasser {max_len} caractères avant le suffixe d'audit.")
            return

        final_description = f"{description.strip()}{suffix}"

        try:
            if self.current_user_id is not None:
                self.cursor.execute("""
                    SELECT iduser, password
                    FROM tb_users
                    WHERE iduser = %s
                      AND active = 1
                      AND COALESCE(deleted, 0) = 0
                    LIMIT 1
                """, (self.current_user_id,))
            else:
                self.cursor.execute("""
                    SELECT iduser, password
                    FROM tb_users
                    WHERE LOWER(TRIM(username)) = LOWER(TRIM(%s))
                      AND active = 1
                      AND COALESCE(deleted, 0) = 0
                    LIMIT 1
                """, (self.current_username,))
            user_row = self.cursor.fetchone()
        except psycopg2.Error as e:
            self.conn.rollback()
            messagebox.showerror("Erreur", f"Impossible de vérifier le mot de passe : {e}")
            return

        stored_password = user_row[1] if user_row else None
        if stored_password is None or stored_password != password:
            messagebox.showerror("Erreur", "Mot de passe incorrect.")
            return

        try:
            if source_table == "tb_encaissement":
                self.cursor.execute("UPDATE tb_encaissement SET observation = %s WHERE id = %s", (final_description, record_id))
            else:
                self.cursor.execute("UPDATE tb_decaissement SET observation = %s WHERE id = %s", (final_description, record_id))
            self.conn.commit()
        except psycopg2.Error as e:
            self.conn.rollback()
            messagebox.showerror("Erreur", f"Impossible d'enregistrer la description : {e}")
            return
        except Exception as e:
            self.conn.rollback()
            messagebox.showerror("Erreur", f"Impossible d'enregistrer la description : {e}")
            return

        dialog.destroy()
        messagebox.showinfo("Succès", "Description mise à jour.")
        self.appliquer_filtres()

    def update_solde_global(self):
        try:
            self.cursor.execute("""
                SELECT SUM(CASE WHEN idtypeoperation=1 THEN mtpaye ELSE -mtpaye END)
                FROM (
                    SELECT idtypeoperation, mtpaye FROM tb_pmtfacture WHERE id_banque IS NULL
                    UNION ALL SELECT idtypeoperation, mtpaye FROM tb_pmtcom WHERE id_banque IS NULL
                    UNION ALL SELECT idtypeoperation, mtpaye FROM tb_encaissement WHERE id_banque IS NULL
                    UNION ALL SELECT idtypeoperation, mtpaye FROM tb_decaissement WHERE id_banque IS NULL
                    UNION ALL SELECT idtypeoperation, mtpaye FROM tb_avancepers WHERE id_banque IS NULL
                    UNION ALL SELECT idtypeoperation, mtpaye FROM tb_avancespecpers WHERE id_banque IS NULL
                    UNION ALL SELECT idtypeoperation, mtpaye FROM tb_pmtsalaire WHERE id_banque IS NULL
                    UNION ALL SELECT idtypeoperation, mtpaye FROM tb_transfertcaisse
                    UNION ALL SELECT idtypeoperation, mtpaye FROM tb_pmtavoir WHERE id_banque IS NULL
                    UNION ALL SELECT idtypeoperation, mtpaye FROM tb_pmtcredit WHERE id_banque IS NULL
                ) as total
            """)
            res   = self.cursor.fetchone()
            solde = float(res[0]) if res and res[0] is not None else 0.0
        except Exception as e:
            print(f"Erreur calcul solde global: {e}")

    def generer_pdf(self):
        if not self.donnees_pour_pdf:
            messagebox.showwarning("Vide", "Aucune donnée à imprimer.")
            return
        infos_societe = {"nom": "", "adresse": "", "ville": "", "contact": ""}
        try:
            self.cursor.execute(
                "SELECT nomsociete, adressesociete, villesociete, contactsociete FROM tb_infosociete LIMIT 1")
            res = self.cursor.fetchone()
            if res:
                infos_societe = {
                    "nom": res[0], "adresse": res[1],
                    "ville": res[2], "contact": res[3]}
        except Exception as e:
            print(f"Erreur recup infos societe: {e}")

        nom_fichier = f"Etat_Caisse_{datetime.now().strftime('%Y%m%d_%H%M%S')}.pdf"
        try:
            doc = SimpleDocTemplate(nom_fichier, pagesize=landscape(A4),
                                    rightMargin=30, leftMargin=30,
                                    topMargin=30, bottomMargin=30)
            elements = []
            styles   = getSampleStyleSheet()
            style_sn = ParagraphStyle('SocieteNom', parent=styles['Normal'],
                                      fontSize=14, leading=16, fontName='Helvetica-Bold')
            style_sd = ParagraphStyle('SocieteDetails', parent=styles['Normal'],
                                      fontSize=10, leading=12)
            if infos_societe["nom"]:
                elements.append(Paragraph(infos_societe["nom"].upper(), style_sn))
                elements.append(Paragraph(infos_societe["adresse"],     style_sd))
                elements.append(Paragraph(infos_societe["ville"],       style_sd))
                elements.append(Paragraph(f"Contact : {infos_societe['contact']}", style_sd))
            elements.append(Spacer(1, 20))
            filtre_doc  = self.filtre_doc_actif  or "Tous"
            filtre_mode = self.filtre_mode_actif or "Tous"
            elements.append(Paragraph(
                f"<b>ETAT DE CAISSE - {filtre_mode} ({filtre_doc})</b>",
                styles['Title']))
            elements.append(Paragraph(
                f"Période du {self.entry_debut.get()} au {self.entry_fin.get()}",
                styles['Normal']))
            elements.append(Spacer(1, 15))
            data = [self.colonnes] + self.donnees_pour_pdf
            solde_periode = self.total_enc_periode - self.total_dec_periode
            data.append(["", "", "TOTAL CUMULÉ",
                         self.format_montant(self.total_enc_periode),
                         self.format_montant(self.total_dec_periode), "", "", ""])
            data.append(["", "", "SOLDE DE LA PÉRIODE", "",
                         self.format_montant(solde_periode), "", "", ""])
            t = Table(data, repeatRows=1,
                      colWidths=[100, 80, 200, 90, 90, 70, 70, 70])
            t.setStyle(TableStyle([
                ('BACKGROUND', (0, 0), (-1, 0), colors.grey),
                ('TEXTCOLOR',  (0, 0), (-1, 0), colors.whitesmoke),
                ('ALIGN',      (0, 0), (-1, -1), 'CENTER'),
                ('ALIGN',      (2, 0), (2, -1),  'LEFT'),
                ('FONTNAME',   (0, 0), (-1, 0),  'Helvetica-Bold'),
                ('FONTSIZE',   (0, 0), (-1, -1),  8),
                ('GRID',       (0, 0), (-1, -3),  0.5, colors.black),
                ('BACKGROUND', (0, -2), (-1, -1), colors.lightgrey),
                ('FONTNAME',   (0, -2), (-1, -1), 'Helvetica-Bold'),
                ('GRID',       (2, -2), (4, -1),  1, colors.black),
                ('ALIGN',      (3, -2), (4, -1),  'RIGHT'),
            ]))
            elements.append(t)
            elements.append(Spacer(1, 30))
            elements.append(Paragraph(
                f"Edité le : {datetime.now().strftime('%d/%m/%Y %H:%M')}",
                styles['Italic']))
            doc.build(elements)
            open_file_if_enabled(
                nom_fichier,
                operation="open",
                setting_key="Caisse_Etat_OpenA5",
                setting_default=1,
            )
            try:
                filtre_doc  = self.filtre_doc_actif  or "Tous"
                filtre_mode = self.filtre_mode_actif or "Tous"
                self._logger.log(
                    action="Impression",
                    element="État de caisse",
                    details=f"PDF état de caisse (du={self.entry_debut.get()}, au={self.entry_fin.get()}, mode={filtre_mode}, doc={filtre_doc})",
                    value=nom_fichier,
                )
            except Exception:
                pass
        except Exception as e:
            messagebox.showerror("Erreur PDF", f"Détails : {e}")

    def open_page_decaissement(self):
        try:
            from page_decaissement import PageDecaissement
        except ImportError:
            from pages.page_decaissement import PageDecaissement
        win = PageDecaissement(self.master, username=self.current_username)
        self.master.wait_window(win)
        self.appliquer_filtres()

    def open_page_encaissement(self):
        try:
            from page_encaissement import PageEncaissement
        except ImportError:
            from pages.page_encaissement import PageEncaissement
        try:
            self._logger.log(
                action="Ouverture encaissement",
                element="Encaissement",
                details="Ouverture fenêtre encaissement depuis caisse",
                value="open",
            )
        except Exception:
            pass
        win = PageEncaissement(self.master, username=self.current_username)
        self.master.wait_window(win)
        self.appliquer_filtres()


# ── Test standalone ───────────────────────────────────────────────────────────
if __name__ == "__main__":
    ctk.set_appearance_mode("light")
    ctk.set_default_color_theme("blue")
    app = ctk.CTk()
    app.title("iJeery — Gestion Caisse")
    app.geometry("1200x760")
    if _T:
        Theme.apply(app)
    app.grid_rowconfigure(0, weight=1)
    app.grid_columnconfigure(0, weight=1)
    PageCaisse(app).grid(row=0, column=0, sticky="nsew")
    app.mainloop()
