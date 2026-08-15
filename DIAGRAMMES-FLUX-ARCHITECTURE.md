# 🔄 DIAGRAMMES FLUX ET ARCHITECTURE

## 1. FLUX GLOBAL DE L'APPLICATION

```
┌─────────────────────────────────────────────────────────────┐
│                    MENU PRINCIPAL                            │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  ├─► Caisse              ├─► Banque              ├─► Autres │
│      ├─ + Encaissement       ├─ Comptes               │
│      ├─ - Décaissement       ├─ + Encaissement       │
│      ├─ Solde                ├─ - Décaissement       │
│      └─ État Caisse          └─ Solde Bancaire       │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

---

## 2. ARCHITECTURE ENCAISSEMENT

```
┌──────────────────────────────────────────────────────────────┐
│          PageEncaissement (page_encaissement.py)             │
├──────────────────────────────────────────────────────────────┤
│                                                              │
│  ┌─────────────────────────────────────────────────────┐    │
│  │         FORMULAIRE ENCAISSEMENT                     │    │
│  ├─────────────────────────────────────────────────────┤    │
│  │ Catégorie: [Dropdown ▼]  [+]  ←─ tb_categoriecompte│    │
│  │ Montant:   [1.234.567  ]      ← Validation format  │    │
│  │ Descrip.:  [Texte max 500]                          │    │
│  │ Opérateur: Jean Dupont         ← Depuis session.json│    │
│  │                                                      │    │
│  │ [Enregistrer] [Annuler]                            │    │
│  └─────────────────────────────────────────────────────┘    │
│                                                              │
│           ↓ [Enregistrer]                                    │
│                                                              │
│  ┌─────────────────────────────────────────────────────┐    │
│  │  VALIDATION                                         │    │
│  ├─────────────────────────────────────────────────────┤    │
│  │ ✓ Catégorie remplie ?        → Récupérer idcc      │    │
│  │ ✓ Montant valide ?           → Nettoyer et convertir│    │
│  │ ✓ Description saisie ?       → Texte non vide      │    │
│  │ ✓ Récupérer ID utilisateur   → session.json ou DB  │    │
│  │ ✓ Récupérer type opération   → idtypeoperation = 1 │    │
│  │ ✓ Générer référence unique   → "ENC - YYYYMMDD..." │    │
│  └─────────────────────────────────────────────────────┘    │
│                                                              │
│           ↓ Toutes validations OK                           │
│                                                              │
│  ┌─────────────────────────────────────────────────────┐    │
│  │  INSERTION EN BASE DE DONNÉES                       │    │
│  ├─────────────────────────────────────────────────────┤    │
│  │ Table: tb_encaissement                              │    │
│  │ INSERT (refpmt, idcc, mtpaye, observation,         │    │
│  │         idtypeoperation, datepmt, iduser, idmode)   │    │
│  │ VALUES ("ENC - 20260815...", 3, 1500000, ...,      │    │
│  │         1, NOW(), 5, 1)                             │    │
│  │                                                      │    │
│  │ ✓ COMMIT                                            │    │
│  └─────────────────────────────────────────────────────┘    │
│                                                              │
│           ↓ Insertion réussie                               │
│                                                              │
│  ┌─────────────────────────────────────────────────────┐    │
│  │  GÉNÉRATION TICKET PDF (80mm)                       │    │
│  ├─────────────────────────────────────────────────────┤    │
│  │ Récupérer infos société → tb_infosociete           │    │
│  │ Créer PDF avec ReportLab                           │    │
│  │ ├─ En-tête société                                  │    │
│  │ ├─ Titre "TICKET D'ENCAISSEMENT"                   │    │
│  │ ├─ Détails (Date, Réf, Opérateur)                  │    │
│  │ ├─ Catégorie et Description                         │    │
│  │ └─ Montant en évidence                              │    │
│  │ Sauvegarder → ~/tickets_caisse/ticket_ENC-*.pdf    │    │
│  │ Ouvrir automatiquement (Windows: startfile)        │    │
│  └─────────────────────────────────────────────────────┘    │
│                                                              │
│           ↓ Succès !                                         │
│                                                              │
│  ┌─────────────────────────────────────────────────────┐    │
│  │  MESSAGE DE CONFIRMATION                            │    │
│  ├─────────────────────────────────────────────────────┤    │
│  │ "Encaissement enregistré avec succès !              │    │
│  │  Référence: ENC - 20260815143022                    │    │
│  │  Ticket généré: ticket_ENC-20260815143022.pdf      │    │
│  │  Emplacement: C:\Users\...\tickets_caisse"          │    │
│  │ [OK]                                                │    │
│  └─────────────────────────────────────────────────────┘    │
│                                                              │
│  ✅ Formulaire réinitialisé pour nouvelle saisie             │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

---

## 3. ARCHITECTURE DÉCAISSEMENT

```
┌──────────────────────────────────────────────────────────────┐
│         PageDecaissement (page_decaissement.py)              │
├──────────────────────────────────────────────────────────────┤
│                                                              │
│  ┌─────────────────────────────────────────────────────┐    │
│  │     LISTE DES DÉCAISSEMENTS (Treeview)              │    │
│  ├─────────────────────────────────────────────────────┤    │
│  │ 🔍 Recherche: [________________]                    │    │
│  │                                                      │    │
│  │ ID   Date    Ref    Catégorie   Montant   Operateur │    │
│  │ ───────────────────────────────────────────────────│    │
│  │ 1  15/08  DEC-001  Dépenses   50.000    Jean      │    │
│  │ 2  14/08  DEC-002  Salaire   100.000    Pierre    │    │
│  │ 3  13/08  DEC-003  Fourniture 25.000    Marie     │    │
│  │                                                      │    │
│  └─────────────────────────────────────────────────────┘    │
│           ↓                              ↓                   │
│       [Cliquer]                   [Taper recherche]         │
│           ↓                              ↓                   │
│  ┌─────────────────────────────────────────────────────┐    │
│  │     FORMULAIRE (Nouveau ou Modification)            │    │
│  ├─────────────────────────────────────────────────────┤    │
│  │ Catégorie: [Dropdown ▼]  [+]                       │    │
│  │ Montant:   [1.234.567  ]                           │    │
│  │ Descrip.:  [Achat fournitures]                     │    │
│  │                                                      │    │
│  │ [Enregistrer] [Modifier] [Nouveau] [Fermer]        │    │
│  │ Opérateur: Jean Dupont                              │    │
│  └─────────────────────────────────────────────────────┘    │
│                                                              │
│  ╔════════════ DEUX CAS ════════════╗                       │
│  ║                                  ║                       │
│  ║ CAS 1: Créer nouveau             ║ CAS 2: Modifier      │
│  ║ ──────────────────────           ║ ──────────────       │
│  ║                                  ║                       │
│  ╚════════════════════════════════════╝                     │
│                                                              │
│                                                              │
│     ┌──────────────────────────────────────────────────┐    │
│     │ CAS 1 : CRÉER NOUVEAU DÉCAISSEMENT             │    │
│     ├──────────────────────────────────────────────────┤    │
│     │                                                  │    │
│     │ 1. Cliquer [Nouveau]                            │    │
│     │    → Formulaire vide, champs déverrouillés       │    │
│     │    → Bannière d'autorisation CACHÉE              │    │
│     │                                                  │    │
│     │ 2. Remplir : Catégorie + Montant + Description  │    │
│     │                                                  │    │
│     │ 3. Cliquer [Enregistrer]                         │    │
│     │                                                  │    │
│     │ 4. VALIDATION (idem encaissement)                │    │
│     │                                                  │    │
│     │ 5. INSERT tb_decaissement                        │    │
│     │    (refpmt, idcc, mtpaye, observation,          │    │
│     │     idtypeoperation=2, datepmt, iduser, idmode) │    │
│     │                                                  │    │
│     │ ✓ Commit                                         │    │
│     │ ✓ Ligne ajoutée à la liste                      │    │
│     │ ✓ Formulaire réinitialisé                       │    │
│     │                                                  │    │
│     └──────────────────────────────────────────────────┘    │
│                                                              │
│     ┌──────────────────────────────────────────────────┐    │
│     │ CAS 2 : MODIFIER UN DÉCAISSEMENT EXISTANT       │    │
│     ├──────────────────────────────────────────────────┤    │
│     │                                                  │    │
│     │ 1. Cliquer sur une ligne dans la liste          │    │
│     │    → Champs se remplissent automatiquement       │    │
│     │    → Champs VERROUILLÉS (grisés)                │    │
│     │    → Bannière jaune : "Champs verrouilles"      │    │
│     │                                                  │    │
│     │ 2. Cliquer [Saisir le code d'autorisation]      │    │
│     │                                                  │    │
│     │ 3. ┌─────────────────────────────────────────┐  │    │
│     │    │ FENETRE MODALE DE SAISIE               │  │    │
│     │    ├─────────────────────────────────────────┤  │    │
│     │    │ Modification protegee                   │  │    │
│     │    │ Code d'autorisation: [*****]           │  │    │
│     │    │                                          │  │    │
│     │    │ [Valider] [Annuler]                     │  │    │
│     │    └─────────────────────────────────────────┘  │    │
│     │          ↓                      ↓               │    │
│     │   Code OK ?            Code invalide ?         │    │
│     │          ↓                      ↓               │    │
│     │    Vérifier BD           Erreur message        │    │
│     │ SELECT FROM              Recommencer           │    │
│     │ tb_codeautorisation                            │    │
│     │ WHERE code = %s                                │    │
│     │           ↓                                     │    │
│     │      Trouvé ?                                  │    │
│     │           ↓                                     │    │
│     │    ✓ Oui → Déverrouiller champs                │    │
│     │    ✗ Non → Erreur, recommencer                 │    │
│     │                                                  │    │
│     │ 4. Champs déverrouillés maintenant              │    │
│     │    ├─ Montant modifiable                        │    │
│     │    ├─ Catégorie modifiable                      │    │
│     │    ├─ Description modifiable                    │    │
│     │    └─ Bannière → "Verrouiller a nouveau"       │    │
│     │    └─ Bouton "Modifier" maintenant ACTIVÉ       │    │
│     │                                                  │    │
│     │ 5. Modifier les valeurs selon besoin            │    │
│     │                                                  │    │
│     │ 6. Cliquer [Modifier]                           │    │
│     │                                                  │    │
│     │ 7. UPDATE tb_decaissement                       │    │
│     │    SET idcc=?, mtpaye=?, observation=?         │    │
│     │    WHERE id=?                                  │    │
│     │                                                  │    │
│     │ ✓ Commit                                        │    │
│     │ ✓ Ligne mise à jour dans la liste               │    │
│     │                                                  │    │
│     └──────────────────────────────────────────────────┘    │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

---

## 4. FLUX DE DONNÉES

```
UTILISATEUR
    │
    ├─► PAGE_CAISSE.py
    │       │
    │       ├─► [+ Encaissement] ──► PAGE_ENCAISSEMENT.py
    │       │       │
    │       │       ├─ Récupère : Catégories
    │       │       │            (tb_categoriecompte)
    │       │       │
    │       │       ├─ Crée : Formulaire saisie
    │       │       │
    │       │       └─► [Enregistrer]
    │       │           │
    │       │           ├─ Valide les données
    │       │           │
    │       │           ├─ INSERT tb_encaissement
    │       │           │  │ refpmt = "ENC - " + timestamp
    │       │           │  │ idcc = catégorie saisie
    │       │           │  │ mtpaye = montant validé
    │       │           │  │ observation = description
    │       │           │  │ idtypeoperation = 1 (ENC)
    │       │           │  │ datepmt = NOW()
    │       │           │  │ iduser = utilisateur
    │       │           │  │ idmode = 1 (Espèces)
    │       │           │  └─ id_banque = NULL (caisse)
    │       │           │
    │       │           └─► Ticket PDF généré
    │       │               └─ ~/tickets_caisse/ticket_*.pdf
    │       │
    │       └─► [- Décaissement] ──► PAGE_DECAISSEMENT.py
    │               │
    │               ├─ Charge : Liste décaissements
    │               │          (SELECT * FROM tb_decaissement)
    │               │
    │               ├─ Crée : Tableau + Formulaire
    │               │
    │               └─ Gère deux modes :
    │                   ├─ [Nouveau]
    │                   │  └─► Formulaire vide
    │                   │      └─ [Enregistrer]
    │                   │         └─ INSERT tb_decaissement
    │                   │
    │                   └─ [Modifier sur ligne sélectionnée]
    │                      └─► Demander code autorisation
    │                          └─ [Code saisi]
    │                             ├─ Vérifier : tb_codeautorisation
    │                             ├─ Code OK ? → Déverrouiller
    │                             └─ [Modifier]
    │                                └─ UPDATE tb_decaissement
    │
    └─► PAGE_BANQUE.py
            │
            ├─► [+ Encaissement Bancaire]
            │   └─► PAGE_ENCAISSEMENTBQ.py
            │       └─ Même logique, mais :
            │          id_banque = <bank_id> (au lieu de NULL)
            │
            └─► [- Décaissement Bancaire]
                └─► PAGE_DECAISSEMENTBQ.py
                    └─ Même logique, mais :
                       id_banque = <bank_id> (au lieu de NULL)
```

---

## 5. TABLES DE BASE DE DONNÉES

```
┌─────────────────────────────────────────────────────────────┐
│                  BASE DE DONNÉES                            │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│  ┌──────────────────────────────────────────────────────┐  │
│  │ tb_encaissement                                      │  │
│  ├──────────────────────────────────────────────────────┤  │
│  │ PK │ id                   INTEGER                    │  │
│  │    │ refpmt               VARCHAR (ENC-...)         │  │
│  │    │ idcc          ──┐    INTEGER                    │  │
│  │    │ mtpaye             NUMERIC (15,2)              │  │
│  │    │ observation        VARCHAR (500)               │  │
│  │    │ idtypeoperation ──┐ INTEGER (=1 pour ENC)     │  │
│  │    │ datepmt            TIMESTAMP                   │  │
│  │    │ iduser        ──┐  INTEGER                     │  │
│  │    │ idmode            INTEGER (1=Espèces)         │  │
│  │    │ id_banque         INTEGER NULL (caisse)        │  │
│  └──────────────────────────────────────────────────────┘  │
│        ↑                   ↑                   ↑              │
│        └───────────────────┼───────────────────┘              │
│                            │                                 │
│  ┌──────────────────────────┼──────────────────────────┐   │
│  │ tb_categoriecompte       │                          │   │
│  ├──────────────────────────┼──────────────────────────┤   │
│  │ PK │ idcc          <─────┘   INTEGER                │   │
│  │    │ categoriecompte     VARCHAR                    │   │
│  │    │ description         VARCHAR                    │   │
│  └──────────────────────────────────────────────────────┘  │
│                                                             │
│  ┌──────────────────────────────────────────────────────┐  │
│  │ tb_typeoperation                                     │  │
│  ├──────────────────────────────────────────────────────┤  │
│  │ PK │ idtypeoperation <──────────┐  INTEGER (1=ENC)  │  │
│  │    │ typeoperation              VARCHAR (ENC, DEC)  │  │
│  └──────────────────────────────────────────────────────┘  │
│                                                             │
│  ┌──────────────────────────────────────────────────────┐  │
│  │ tb_users                                             │  │
│  ├──────────────────────────────────────────────────────┤  │
│  │ PK │ iduser           <─────────┐  INTEGER          │  │
│  │    │ username                      VARCHAR          │  │
│  │    │ password                      VARCHAR (hash)   │  │
│  │    │ email                         VARCHAR          │  │
│  │    │ ... autres colonnes ...                        │  │
│  └──────────────────────────────────────────────────────┘  │
│                                                             │
│  ┌──────────────────────────────────────────────────────┐  │
│  │ tb_decaissement                                      │  │
│  ├──────────────────────────────────────────────────────┤  │
│  │ (Même structure que tb_encaissement)                │  │
│  │ Sauf : idtypeoperation = 2 (DEC au lieu de ENC)   │  │
│  │        Pour modification : vérifie tb_codeautorisation│  │
│  └──────────────────────────────────────────────────────┘  │
│                                                             │
│  ┌──────────────────────────────────────────────────────┐  │
│  │ tb_codeautorisation                                  │  │
│  ├──────────────────────────────────────────────────────┤  │
│  │ PK │ id               INTEGER                       │  │
│  │    │ code             VARCHAR                       │  │
│  │    │ deleted          INTEGER (0=actif, 1=supprimé)│  │
│  │    │ created_at       TIMESTAMP                    │  │
│  └──────────────────────────────────────────────────────┘  │
│                                                             │
│  ┌──────────────────────────────────────────────────────┐  │
│  │ tb_infosociete                                       │  │
│  ├──────────────────────────────────────────────────────┤  │
│  │ PK │ id               INTEGER                       │  │
│  │    │ nomsociete       VARCHAR                       │  │
│  │    │ adressesociete   VARCHAR                       │  │
│  │    │ contactsociete   VARCHAR                       │  │
│  │    │ villesociete     VARCHAR                       │  │
│  └──────────────────────────────────────────────────────┘  │
│                                                             │
│  ┌──────────────────────────────────────────────────────┐  │
│  │ tb_banque                                            │  │
│  ├──────────────────────────────────────────────────────┤  │
│  │ PK │ id_banque        INTEGER                       │  │
│  │    │ nombanque        VARCHAR                       │  │
│  │    │ adressebanque    VARCHAR                       │  │
│  │    │ compte           VARCHAR                       │  │
│  └──────────────────────────────────────────────────────┘  │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

---

## 6. CALCUL SOLDE CAISSE

```
SELECT (Encaissements) - (Décaissements)
FROM (
    SELECT idtypeoperation, mtpaye FROM tb_pmtfacture   WHERE id_banque IS NULL
    UNION ALL
    SELECT idtypeoperation, mtpaye FROM tb_pmtcom        WHERE id_banque IS NULL
    UNION ALL
    SELECT idtypeoperation, mtpaye FROM tb_encaissement  WHERE id_banque IS NULL
    UNION ALL
    SELECT idtypeoperation, mtpaye FROM tb_decaissement  WHERE id_banque IS NULL
    UNION ALL
    SELECT idtypeoperation, mtpaye FROM tb_avancepers    WHERE id_banque IS NULL
)

Calcul :
├─ Encaissements (idtypeoperation = 1) = A
├─ Décaissements (idtypeoperation = 2) = B
└─ SOLDE = A - B
```

---

**Diagrammes créés le 15 Août 2026**
