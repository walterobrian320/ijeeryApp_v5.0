# 📊 GUIDE COMPLET : ENCAISSEMENT ET DÉCAISSEMENT

**Application iJeery V5.0** - Module Caisse

---

## 🎯 Vue d'Ensemble

Ce guide explique le fonctionnement du système **ENCAISSEMENT/DÉCAISSEMENT** :
- **ENCAISSEMENT** = Argent qui **entre** (ventes, revenus)
- **DÉCAISSEMENT** = Argent qui **sort** (dépenses, achats)

---

## 📥 ENCAISSEMENT (Argent Entrant)

### Accès
```
Menu Principal → Caisse → [+ Encaissement]
```

### Formulaire de saisie

| Champ | Obligatoire | Format | Exemple |
|-------|-------------|--------|---------|
| **Catégorie** | ✅ OUI | Liste déroulante | "Vente", "Service", "Autre Revenu" |
| **Montant** | ✅ OUI | Nombre entier | 1.500.000 (format français avec points) |
| **Description** | ✅ OUI | Texte (max 500 char) | "Vente 5 articles XYZ" |

### Étapes pour enregistrer un encaissement

1. ✅ Cliquer sur **+ Encaissement**
2. ✅ Choisir une **Catégorie** (liste déroulante)
   - Si nouvelle catégorie → Cliquer **[+]** pour l'ajouter
3. ✅ Saisir le **Montant** en Ariary
   - Format accepté : `1.234.567` (le système place automatiquement les points)
4. ✅ Écrire une **Description** (ex: "Facture n° 45321")
5. ✅ Cliquer **[Enregistrer]**

### Résultat

- ✅ Encaissement enregistré en base de données
- ✅ **Ticket PDF généré** automatiquement au format 80mm
  - Localisation : `C:\Users\[Utilisateur]\tickets_caisse\ticket_ENC-20260815143022.pdf`
  - Contient : Référence, Date, Catégorie, Montant, Opérateur
- ✅ Formulaire réinitialisé pour nouvelle saisie

---

### Données enregistrées en base

```sql
Table: tb_encaissement

Colonnes insérées:
├─ refpmt (Référence)     : "ENC - 20260815143022"    ← Auto-générée
├─ idcc (ID Catégorie)    : 3                         ← De la liste déroulante
├─ mtpaye (Montant)       : 1500000                   ← En Ariary
├─ observation (Descrip.) : "Vente 5 articles XYZ"   ← Champ texte
├─ idtypeoperation        : 1                         ← Type "ENC"
├─ datepmt (Date/Heure)   : 2026-08-15 14:30:22      ← Actuelle
├─ iduser (ID Opérateur)  : 5                         ← Utilisateur connecté
└─ idmode (Mode paiement) : 1                         ← 1=Espèces
```

---

## 📤 DÉCAISSEMENT (Argent Sortant)

### Accès
```
Menu Principal → Caisse → [- Décaissement]
```

### Écran principal

L'écran décaissement comporte 2 sections :

**1. LISTE DES DÉCAISSEMENTS** (haut)
- Affiche tous les décaissements enregistrés
- Champ de recherche pour filtrer
- Cliquer sur une ligne pour la sélectionner/modifier

**2. FORMULAIRE** (bas)
- Pour créer un nouveau décaissement
- Pour modifier un décaissement existant (après autorisation)

### Étapes pour créer un nouveau décaissement

1. ✅ Cliquer sur **- Décaissement**
2. ✅ Cliquer **[Nouveau]** (pour bien commencer avec formulaire vide)
3. ✅ Choisir une **Catégorie** (ex: "Dépenses", "Salaire")
4. ✅ Saisir le **Montant** en Ariary
5. ✅ Écrire une **Description** (ex: "Achat fournitures bureau")
6. ✅ Cliquer **[Enregistrer]**

### Résultat
- ✅ Décaissement enregistré en base
- ✅ Apparaît immédiatement dans la liste
- ✅ Peut être modifié plus tard

---

### Étapes pour modifier un décaissement

1. ✅ Cliquer sur une ligne dans la liste
   - Les champs se remplissent automatiquement
   - **Les champs sont VERROUILLÉS** (grisés)
2. ✅ Cliquer **[Saisir le code d'autorisation]** (bannière jaune)
3. ✅ Saisir le code fourni par un administrateur
   - Validation contre la table `tb_codeautorisation`
4. ✅ Les champs se déverrouillent maintenant
5. ✅ Modifier les valeurs (montant, catégorie, description)
6. ✅ Cliquer **[Modifier]** pour valider

### Protection contre les modifications accidentelles

```
⚠️ SYSTÈME DE VERROU

État initial (ligne sélectionnée) :
├─ Tous les champs sont grisés (non modifiables)
├─ Bannière jaune : "Tous les champs sont verrouilles"
└─ Bouton : "Saisir le code d'autorisation"

Après saisie du code correct :
├─ Champs déverrouillés (blancs, modifiables)
├─ Bannière jaune → "Verrouiller a nouveau"
└─ Bouton "Modifier" activé
```

---

### Données enregistrées en base

```sql
Table: tb_decaissement

Colonnes insérées:
├─ refpmt (Référence)     : "DEC - 20260815143022"    ← Auto-générée
├─ idcc (ID Catégorie)    : 4                         ← De la liste déroulante
├─ mtpaye (Montant)       : 50000                     ← En Ariary
├─ observation (Descrip.) : "Achat fournitures"      ← Champ texte
├─ idtypeoperation        : 2                         ← Type "DEC"
├─ datepmt (Date/Heure)   : 2026-08-15 14:30:22      ← Actuelle
├─ iduser (ID Opérateur)  : 5                         ← Utilisateur connecté
└─ idmode (Mode paiement) : 1                         ← 1=Espèces
```

---

## 💰 SOLDE DE CAISSE

### Calcul
```
SOLDE CAISSE = Σ ENCAISSEMENTS - Σ DÉCAISSEMENTS
               (uniquement caisse, pas bancaire)
```

### Affichage
- **Page Caisse** : Affichage temps réel du solde
- **Page d'Accueil** : Widget avec solde actualisé

### Exemple
```
Encaissements du jour : 5.000.000 Ar
Décaissements du jour : 1.500.000 Ar
─────────────────────────────────────
SOLDE FINAL          : 3.500.000 Ar ✅
```

---

## 🏦 ENCAISSEMENT / DÉCAISSEMENT BANCAIRE

### Différence avec la caisse

Les opérations bancaires fonctionnent **de la même manière** que la caisse, mais :
- ✅ Associées à un **compte bancaire** spécifique
- ✅ Accessibles via **Menu Banque** (pas Menu Caisse)
- ✅ N'affectent **pas** le solde caisse
- ✅ Affectent le solde du compte bancaire

### Accès
```
Menu Principal → Banque → [Sélectionner une banque]
                          → [+ Encaissement] ou [- Décaissement]
```

### Différences de table
```
Caisse    : id_banque = NULL
Bancaire  : id_banque = <ID du compte>
```

---

## 📋 TABLEAU RÉCAPITULATIF

### Champs obligatoires

| Opération | Catégorie | Montant | Description |
|-----------|-----------|---------|-------------|
| Encaissement | ✅ OUI | ✅ OUI | ✅ OUI |
| Décaissement | ✅ OUI | ✅ OUI | ✅ OUI |

### Formats de saisie

| Champ | Format | Exemple | Rejet |
|-------|--------|---------|-------|
| Montant | Entier | 1.234.567 | 1,5 ou 1.5 |
| Description | Texte max 500 | "Vente facture #45" | Vide |
| Catégorie | Liste | "Vente" | Vide |

### Données automatiques (ne pas saisir)

| Données | Valeur | Origine |
|---------|--------|---------|
| Référence | "ENC - 20260815143022" | Système (timestamp) |
| Date/Heure | Actuelle | Horloge serveur |
| Opérateur | Jean Dupont | Session utilisateur |
| Type opération | 1 (ENC) ou 2 (DEC) | Fixe selon le type |
| Mode paiement | 1 (Espèces) | Fixe |

---

## ⚠️ CAS D'ERREUR COURANTS

### ❌ "Champs vides"
**Cause** : Une valeur obligatoire manque (Catégorie, Montant ou Description)
**Solution** : Remplir tous les champs

### ❌ "Le montant doit être un nombre valide"
**Cause** : Format invalide (ex: "1,5" au lieu de "1.5")
**Solution** : Utiliser le format français : `1.234.567` (points uniquement)

### ❌ "Utilisateur introuvable"
**Cause** : L'utilisateur connecté n'est pas dans `tb_users`
**Solution** : Ajouter l'utilisateur dans la gestion des utilisateurs

### ❌ "Code d'autorisation invalide"
**Cause** : Code saisi ≠ Code en base
**Solution** : Vérifier le code auprès d'un administrateur

### ❌ "Connexion échouée"
**Cause** : Base de données indisponible
**Solution** : Vérifier la configuration DB dans `config.json`

---

## 🔧 FICHIERS SOURCES

| Fichier | Rôle |
|---------|------|
| `pages/page_caisse.py` | Interface principale (encaissement/décaissement caisse) |
| `pages/page_encaissement.py` | Formulaire nouvel encaissement |
| `pages/page_decaissement.py` | Liste + formulaire décaissement |
| `pages/page_banque.py` | Interface banque |
| `pages/page_encaissementBq.py` | Encaissement bancaire |
| `pages/page_decaissementBq.py` | Décaissement bancaire |
| `page_home.py` | Calcul du solde caisse |

---

## 📞 RÉSUMÉ RAPIDE

### Créer un ENCAISSEMENT
```
Caisse → [+ Encaissement]
  ↓
Catégorie + Montant + Description
  ↓
[Enregistrer]
  ↓
Ticket PDF généré ✅
```

### Créer un DÉCAISSEMENT
```
Caisse → [- Décaissement]
  ↓
[Nouveau]
  ↓
Catégorie + Montant + Description
  ↓
[Enregistrer]
  ↓
Apparaît dans la liste ✅
```

### Modifier un DÉCAISSEMENT
```
Caisse → [- Décaissement]
  ↓
Cliquer sur la ligne
  ↓
[Saisir le code d'autorisation]
  ↓
Code → [Valider]
  ↓
Modifier les champs
  ↓
[Modifier] ✅
```

---

## 📞 SUPPORT

Pour toute question :
- Consulter les logs dans `app_runtime_log.py`
- Vérifier la configuration dans `config.json`
- Contacter l'administrateur pour les codes d'autorisation

---

**Dernière mise à jour** : 15 Août 2026
**Version** : iJeery V5.0
