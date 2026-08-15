# ⚡ RÉSUMÉ VISUEL - Encaissement & Décaissement

**Référence rapide - 2 pages**

---

## 📥 ENCAISSEMENT (Argent ENTRANT)

### Où ?
```
Menu Caisse → [+ Encaissement]
```

### Quoi remplir ?
```
┌────────────────────────────┐
│ Catégorie : [Vente▼]      │
│ Montant :   [1.234.567]    │
│ Description: [Texte...]    │
│ [Enregistrer]              │
└────────────────────────────┘
```

### Données insérées
```
Référence   : "ENC - 20260815143022"  (auto)
Montant     : 1.234.567 Ar
Catégorie   : Vente
Utilisateur : Jean Dupont            (auto)
Date/Heure  : 15/08/2026 14:30:22    (auto)
Ticket PDF  : Généré automatiquement
```

### Résultat
```
✅ Enregistrement réussi
✅ Ticket PDF ouvert
✅ Solde caisse +1.234.567 Ar
✅ Formulaire réinitialisé
```

### Montant : Comment saisir ?
```
✅ BON   : 1000, 1.500, 1.234.567
❌ MAUVAIS : 1,5 (virgule), 1 234 (espace)

💡 TIP: Tapez les chiffres, les points s'ajoutent seul
```

---

## 📤 DÉCAISSEMENT (Argent SORTANT)

### Où ?
```
Menu Caisse → [- Décaissement]
```

### Créer un NOUVEAU décaissement
```
┌────────────────────────────────┐
│ LISTE (haut)                   │
│ ┌──────────────────────────┐  │
│ │ ID | Date | Réf | Montant│  │
│ │  1 | 14/08| DEC1| 50.000 │  │
│ └──────────────────────────┘  │
│                                │
│ FORMULAIRE (bas)               │
│ ┌──────────────────────────┐  │
│ │ [Nouveau] → Formulaire   │  │
│ │ Catégorie: [Dépenses▼]   │  │
│ │ Montant:   [85.000]      │  │
│ │ Descrip.:  [Fourni...]   │  │
│ │ [Enregistrer]            │  │
│ └──────────────────────────┘  │
└────────────────────────────────┘

✅ Résultat : Nouveau décaissement ajouté
```

### Modifier un décaissement EXISTANT
```
ÉTAPE 1 : Sélectionner
└─ Cliquer sur la ligne
   ├─ Champs se remplissent
   └─ Champs VERROUILLÉS ❌

ÉTAPE 2 : Autorisation
└─ Cliquer [Saisir le code]
   ├─ Saisir le code
   └─ [Valider]

ÉTAPE 3 : Déboguer
└─ Champs déverrouillés ✅
   ├─ Montant modifiable
   ├─ Description modifiable
   └─ Catégorie modifiable

ÉTAPE 4 : Enregistrer
└─ Modifier les valeurs
   ├─ [Modifier]
   └─ ✅ Mise à jour en base
```

### Qui donne le code ?
```
Administrateur de l'application
(demander par mail ou en personne)
```

---

## 💰 SOLDE CAISSE

### Formule
```
SOLDE = Encaissements - Décaissements

Exemple :
  Encaissements : 5.000.000 Ar
  Décaissements : 1.500.000 Ar
  ─────────────────────────────
  Solde         = 3.500.000 Ar ✅
```

### Affichage
```
Page Caisse      : "Solde: 3.500.000 Ar"
Page d'Accueil   : Widget du solde
Temps réel       : Mis à jour à chaque opération
```

### Important
```
❌ Caisse (id_banque = NULL)      → Affecte le solde
✅ Bancaire (id_banque = <ID>)    → N'affecte PAS le solde
```

---

## 🏦 CAISSE vs BANCAIRE

| Aspect | Caisse | Bancaire |
|--------|--------|----------|
| **Menu** | Caisse | Banque |
| **Montant** | Espèces | Virement/Chèque |
| **Solde caisse** | ✅ OUI | ❌ NON |
| **Ticket PDF** | ✅ OUI | ❌ NON |

---

## ⚠️ ERREURS COURANTES

### ❌ "Champs vides"
```
✓ Catégorie remplie ?
✓ Montant saisi ?
✓ Description écrite ?
→ Remplir et réessayer
```

### ❌ "Montant invalide"
```
Mauvais : "1,5" (virgule) ou "1 234" (espace)
Correct : "1.234.567" (points UNIQUEMENT)
→ Reformater et réessayer
```

### ❌ "Code d'autorisation refusé"
```
✓ Code fourni par l'admin ?
✓ Pas de typo ?
✓ Code non expiré ?
→ Demander un nouveau code à l'admin
```

### ❌ "Connexion échouée"
```
✓ Serveur BD en marche ?
✓ Config.json correct ?
✓ Utilisateur/mdp correct ?
→ Redémarrer l'application
```

---

## 🎯 CHECKLIST RAPIDE

### Avant créer un ENCAISSEMENT ✅
- [ ] Menu Caisse → [+ Encaissement]
- [ ] Catégorie sélectionnée
- [ ] Montant saisi (format: 1.234.567)
- [ ] Description écrite
- [ ] [Enregistrer]
- [ ] Ticket PDF généré

### Avant créer un DÉCAISSEMENT ✅
- [ ] Menu Caisse → [- Décaissement]
- [ ] [Nouveau]
- [ ] Catégorie sélectionnée
- [ ] Montant saisi
- [ ] Description écrite
- [ ] [Enregistrer]

### Avant MODIFIER un DÉCAISSEMENT ✅
- [ ] Ligne sélectionnée
- [ ] Code d'autorisation obtenu
- [ ] [Saisir le code]
- [ ] Code saisi
- [ ] Champs déverrouillés
- [ ] Valeurs modifiées
- [ ] [Modifier]

---

## 📱 INTERFACE RAPIDE

### Page Caisse
```
┌─────────────────────────────────┐
│ Gestion de la Caisse            │
├─────────────────────────────────┤
│ Solde caisse: 3.500.000 Ar      │
├─────────────────────────────────┤
│ [+ Encaissement] [- Décaissement]
├─────────────────────────────────┤
│ État de caisse (tableau)        │
│ Encaissement | Décaissement     │
└─────────────────────────────────┘
```

### Page Encaissement
```
┌─────────────────────────────────┐
│ NOUVEL ENCAISSEMENT             │
├─────────────────────────────────┤
│ Catégorie: [Vente▼]             │
│ Montant:   [1.234.567]          │
│ Description: [Texte...]         │
│ Opérateur: Jean Dupont          │
│                                 │
│ [Enregistrer] [Annuler]         │
└─────────────────────────────────┘
```

### Page Décaissement
```
┌──────────────────────────────────┐
│ LISTE DES DÉCAISSEMENTS          │
│ Recherche: [________]            │
│ ┌────────────────────────────┐   │
│ │ ID  Date  Réf   Montant   │   │
│ │ 1   14/08 DEC1  50.000    │   │
│ └────────────────────────────┘   │
├──────────────────────────────────┤
│ NOUVEAU / MODIFICATION           │
│ Catégorie: [▼]                   │
│ Montant:   [85.000]              │
│ [Enc] [Mod] [Nouveau] [Fermer]  │
└──────────────────────────────────┘
```

---

## 📊 TABLES BASE DE DONNÉES

### tb_encaissement
```
id        │ refpmt           │ idcc │ mtpaye    │ observation
──────────┼──────────────────┼──────┼───────────┼──────────────
1         │ ENC-20260815...  │ 2    │ 2500000   │ Facture n°...
```

### tb_decaissement
```
id        │ refpmt           │ idcc │ mtpaye   │ observation
──────────┼──────────────────┼──────┼──────────┼──────────────
1         │ DEC-20260815...  │ 4    │ 85000    │ Fournitures...
```

---

## 🔍 VÉRIFIER LES DONNÉES

### En base de données
```sql
-- Encaissements
SELECT * FROM tb_encaissement ORDER BY datepmt DESC;

-- Décaissements
SELECT * FROM tb_decaissement ORDER BY datepmt DESC;

-- Solde caisse
SELECT SUM(CASE WHEN idtypeoperation=1 THEN mtpaye ELSE 0 END) as ENC,
       SUM(CASE WHEN idtypeoperation=2 THEN mtpaye ELSE 0 END) as DEC
FROM tb_encaissement WHERE id_banque IS NULL
UNION ALL
SELECT SUM(CASE WHEN idtypeoperation=1 THEN mtpaye ELSE 0 END),
       SUM(CASE WHEN idtypeoperation=2 THEN mtpaye ELSE 0 END)
FROM tb_decaissement WHERE id_banque IS NULL;
```

---

## 💡 ASTUCES

### 1. Format montant
```
Taper : 1234567
Devient : 1.234.567  (auto-formatage)
```

### 2. Recherche décaissement
```
Champ recherche : [________]
Cherche dans :
├─ Référence (DEC-...)
├─ Catégorie (Dépenses)
├─ Description (Fournitures)
└─ Opérateur (Jean)
```

### 3. Filtrer par date
```
Les décaissements s'affichent dans l'ordre :
Plus récents en premier
```

### 4. Ticket PDF
```
Localisation : C:\Users\[Vous]\tickets_caisse\
Nommage : ticket_ENC-20260815143022.pdf
Contenu : Date, Référence, Catégorie, Montant, Opérateur
```

---

## 📞 AIDE RAPIDE

### J'ai une question
→ Voir [FAQ-ENCAISSEMENT-DECAISSEMENT.md](./FAQ-ENCAISSEMENT-DECAISSEMENT.md)

### Je veux un exemple concret
→ Voir [EXEMPLES-INSERTION.md](./EXEMPLES-INSERTION.md)

### Je cherche la doc complète
→ Voir [GUIDE-ENCAISSEMENT-DECAISSEMENT.md](./GUIDE-ENCAISSEMENT-DECAISSEMENT.md)

### Je veux comprendre l'architecture
→ Voir [DIAGRAMMES-FLUX-ARCHITECTURE.md](./DIAGRAMMES-FLUX-ARCHITECTURE.md)

### Navigation complète
→ Voir [INDEX-DOCUMENTATION.md](./INDEX-DOCUMENTATION.md)

---

## ⏱️ TEMPS ESTIMÉ

| Tâche | Temps |
|-------|-------|
| Créer un encaissement | 2 min |
| Créer un décaissement | 2 min |
| Modifier un décaissement | 5 min |
| Vérifier le solde | 1 min |

---

## 🎯 FLUX COMPLET

```
┌──────────────────────────────────────────────────────────┐
│                    MENU PRINCIPAL                        │
├──────────────────────────────────────────────────────────┤
│                                                          │
├─ CAISSE                                                 │
│  ├─ [+ Encaissement]    → Formulaire → [Enregistrer]   │
│  │                      → Ticket PDF généré ✅          │
│  │                      → Solde +$                      │
│  │                                                      │
│  ├─ [- Décaissement]    → Liste + Formulaire           │
│  │  ├─ [Nouveau]        → [Enregistrer]                │
│  │  │                   → Solde -$                     │
│  │  │                                                  │
│  │  └─ [Modifier]       → Saisir code                  │
│  │                      → Déverrouiller                │
│  │                      → [Modifier]                   │
│  │                                                      │
│  └─ Solde Caisse        → Affichage temps réel         │
│                                                          │
├─ BANQUE                                                 │
│  ├─ [Sélectionner banque]                              │
│  ├─ [+ Encaissement BQ]  → Identique à caisse           │
│  ├─ [- Décaissement BQ]  → Identique à caisse           │
│  └─ Solde Bancaire       → Affichage temps réel         │
│                                                          │
└──────────────────────────────────────────────────────────┘
```

---

## 📋 RÉSUMÉ EN 30 SECONDES

```
ENCAISSEMENT :
→ Menu Caisse → [+ Encaissement]
→ Remplir 3 champs (Catégorie, Montant, Description)
→ [Enregistrer] → Ticket généré ✅

DÉCAISSEMENT :
→ Menu Caisse → [- Décaissement]
→ [Nouveau] → Remplir 3 champs
→ [Enregistrer] ✅
→ Pour modifier : saisir code d'autorisation

SOLDE :
→ SOLDE = Encaissements - Décaissements
→ Affichage temps réel sur Page Caisse

IMPORTANT :
→ Format montant : 1.234.567 (points uniquement)
→ Décaissement en modification : code d'autorisation requis
→ Caisse vs Bancaire : Affecte seulement le solde caisse
```

---

**Dernière mise à jour : 15 Août 2026**  
**iJeery V5.0 - Module Caisse**  
**Résumé rapide à imprimer ou garder à proximité**
