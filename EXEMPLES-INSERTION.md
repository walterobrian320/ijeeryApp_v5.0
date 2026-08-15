# 💡 EXEMPLES CONCRETS D'INSERTION

**iJeery V5.0** - Encaissement et Décaissement

---

## 📥 EXEMPLE 1 : ENCAISSEMENT SIMPLE

### Scénario
Un client paie une facture de **2.500.000 Ar** pour l'achat de 10 articles informatiques.

### Étapes dans l'application

```
1. Ouvrir Menu Caisse → [+ Encaissement]

2. Saisir le formulaire :
   ┌────────────────────────────────┐
   │ Catégorie : Vente              │  (sélectionner dans la liste)
   │ Montant :   2.500.000          │  (format français, points uniquement)
   │ Description: Facture n°45321   │  (texte libre)
   │ Opérateur:  Jean Dupont        │  (auto-rempli)
   │                                │
   │ [Enregistrer]                  │
   └────────────────────────────────┘

3. Cliquer [Enregistrer]

4. Résultat :
   ✓ Message : "Encaissement enregistré avec succès !"
   ✓ Ticket PDF généré et ouvert automatiquement
   ✓ Formulaire réinitialisé
```

### Données insérées en base de données

```sql
-- Insertion en base de données
INSERT INTO tb_encaissement 
(refpmt, idcc, mtpaye, observation, idtypeoperation, datepmt, iduser, idmode, id_banque)
VALUES
(
  'ENC - 20260815143022',     -- refpmt : Référence auto-générée
  2,                          -- idcc : ID catégorie "Vente"
  2500000,                    -- mtpaye : Montant 2.500.000 Ar
  'Facture n°45321',          -- observation : Description saisie
  1,                          -- idtypeoperation : 1 = ENC (Encaissement)
  '2026-08-15 14:30:22',      -- datepmt : Date/heure actuelle
  5,                          -- iduser : ID de Jean Dupont
  1,                          -- idmode : 1 = Espèces (défaut)
  NULL                        -- id_banque : NULL = Caisse (pas bancaire)
);
```

### Ticket PDF généré

```
╔════════════════════════════════════════╗
║                                        ║
║      SOCIÉTÉ IJERRY MADAGASCAR         ║
║   123 Rue de l'Innovation, Antananarivo│
║        Tél: +261 20 XX XXX XX         ║
║                                        ║
╠════════════════════════════════════════╣
║     TICKET D'ENCAISSEMENT              ║
╠════════════════════════════════════════╣
║                                        ║
║ Date: 15/08/2026 14:30                 ║
║ Réf: ENC - 20260815143022              ║
║ Opérateur: Jean Dupont                 ║
║                                        ║
╠════════════════════════════════════════╣
║ Catégorie:                             ║
║   Vente                                ║
║                                        ║
║ Description:                           ║
║   Facture n°45321                      ║
║                                        ║
╠════════════════════════════════════════╣
║                                        ║
║ MONTANT: 2.500.000 Ar                  ║
║                                        ║
╠════════════════════════════════════════╣
║                                        ║
║    Merci de votre confiance             ║
║    Document non contractuel             ║
║                                        ║
╚════════════════════════════════════════╝
```

### Fichier généré
```
Location: C:\Users\Jean\tickets_caisse\ticket_ENC-20260815143022.pdf
```

---

## 📤 EXEMPLE 2 : DÉCAISSEMENT NOUVEAU

### Scénario
L'entreprise achète des fournitures de bureau pour **85.000 Ar**.

### Étapes dans l'application

```
1. Ouvrir Menu Caisse → [- Décaissement]

2. Interface affichée :
   ┌────────────────────────────────────────────┐
   │ LISTE DES DÉCAISSEMENTS                    │
   │ Recherche: [              ]                │
   ├────────────────────────────────────────────┤
   │ ID | Date | Réf | Catégorie | Montant    │
   │  1 | 14/08| DEC1| Dépenses  | 50.000     │
   │  2 | 13/08| DEC2| Salaire   | 100.000    │
   │                                            │
   ├────────────────────────────────────────────┤
   │ NOUVEAU DÉCAISSEMENT / MODIFICATION        │
   ├────────────────────────────────────────────┤
   │ Catégorie : [Dépenses      ]  [+]         │
   │ Montant :   [85.000        ]              │
   │ Descrip. :  [Fournitures bureau]          │
   │                                            │
   │ [Enregistrer] [Nouveau] [Fermer]          │
   └────────────────────────────────────────────┘

3. Cliquer [Enregistrer]

4. Résultat :
   ✓ Nouveau décaissement ajouté à la liste (ligne 3)
   ✓ Formulaire réinitialisé
   ✓ Message de confirmation
```

### Données insérées en base de données

```sql
INSERT INTO tb_decaissement 
(refpmt, idcc, mtpaye, observation, idtypeoperation, datepmt, iduser, idmode, id_banque)
VALUES
(
  'DEC - 20260815150145',     -- refpmt : Référence auto-générée
  4,                          -- idcc : ID catégorie "Dépenses"
  85000,                      -- mtpaye : Montant 85.000 Ar
  'Fournitures bureau',       -- observation : Description
  2,                          -- idtypeoperation : 2 = DEC (Décaissement)
  '2026-08-15 15:01:45',      -- datepmt : Date/heure actuelle
  5,                          -- iduser : ID de Jean Dupont
  1,                          -- idmode : 1 = Espèces
  NULL                        -- id_banque : NULL = Caisse
);
```

### État de la base après insertion

```
Table tb_decaissement :

id  refpmt          idcc  mtpaye   observation
1   DEC - 20260814... 4   50.000   Essence
2   DEC - 20260813... 3   100.000  Salaire
3   DEC - 20260815... 4   85.000   Fournitures bureau  ← NOUVEAU
```

---

## ✏️ EXEMPLE 3 : MODIFICATION D'UN DÉCAISSEMENT

### Scénario
On doit corriger le décaissement #3 (passer 85.000 Ar à 92.000 Ar) car il y a eu une oubli de facture.

### Étapes dans l'application

```
1. Ouvrir Menu Caisse → [- Décaissement]

2. La liste s'affiche :
   ┌────────────────────────────────────────────┐
   │ LISTE DES DÉCAISSEMENTS                    │
   │ Recherche: [              ]                │
   ├────────────────────────────────────────────┤
   │ ID | Date | Réf | Catégorie | Montant    │
   │  1 | 14/08| DEC1| Dépenses  | 50.000     │
   │  2 | 13/08| DEC2| Salaire   | 100.000    │
   │  3 | 15/08| DEC3| Dépenses  | 85.000     │  ← À modifier
   │                                            │
   └────────────────────────────────────────────┘

3. CLIQUER SUR LA LIGNE #3 (celle avec 85.000)

4. Les champs se remplissent MAIS VERROUILLÉS :
   ┌────────────────────────────────────────────┐
   │ NOUVEAU DÉCAISSEMENT / MODIFICATION        │
   ├────────────────────────────────────────────┤
   │ Catégorie : [Dépenses      ]  [+]  ✗GRISÉ │
   │ Montant :   [85.000        ]         ✗GRISÉ│
   │ Descrip. :  [Fournitures bureau]  ✗GRISÉ │
   │                                            │
   │ ⚠️ TOUS LES CHAMPS SONT VERROUILLES       │
   │    Saisissez le code d'autorisation       │
   │    pour modifier.                          │
   │ [Saisir le code d'autorisation]           │
   │                                            │
   │ [Enregistrer] [Modifier] [Nouveau] [Fermer]
   └────────────────────────────────────────────┘

5. CLIQUER [Saisir le code d'autorisation]

6. Fenêtre modale apparaît :
   ┌─────────────────────────────────────────┐
   │ Modification protegee                   │
   ├─────────────────────────────────────────┤
   │ Code d'autorisation: [**********]      │
   │                                          │
   │ [Valider] [Annuler]                    │
   └─────────────────────────────────────────┘

7. SAISIR LE CODE (ex: "AUTH2026")
   Si correct : Champs se déverrouillent
   Si incorrect : "Code refuse - recommencer"

8. APRÈS DÉVERROUILLAGE :
   ┌────────────────────────────────────────────┐
   │ Catégorie : [Dépenses      ]  [+]        │
   │ Montant :   [85.000        ]         ✅LIBRE
   │ Descrip. :  [Fournitures bureau]  ✅LIBRE
   │                                            │
   │ ✅ Champs maintenant modifiables          │
   │    "Verrouiller a nouveau" au lieu de code│
   │                                            │
   │ [Enregistrer] [Modifier] [Nouveau] [Fermer]
   │               ✅ACTIVÉ                    │
   └────────────────────────────────────────────┘

9. MODIFIER LE MONTANT :
   - Sélectionner le texte "85.000"
   - Saisir "92.000"

10. CLIQUER [Modifier]

11. Résultat :
    ✓ Décaissement #3 mise à jour en base
    ✓ Liste rafraîchie : 85.000 → 92.000
    ✓ Champs reverrouillés
```

### Vérification du code d'autorisation

```sql
-- Avant saisie du code
SELECT id FROM tb_codeautorisation 
WHERE code = 'AUTH2026' AND deleted = 0;

-- Résultat :
-- Si trouvé (1 ligne) → Code CORRECT → Déverrouiller
-- Si pas trouvé (0 ligne) → Code INCORRECT → Erreur
```

### Données mises à jour en base de données

```sql
-- AVANT modification
SELECT * FROM tb_decaissement WHERE id = 3;
-- Résultat :
-- id=3, mtpaye=85000, observation='Fournitures bureau'

-- Requête UPDATE
UPDATE tb_decaissement 
SET idcc=4, mtpaye=92000, observation='Fournitures bureau'
WHERE id = 3;

-- APRÈS modification
SELECT * FROM tb_decaissement WHERE id = 3;
-- Résultat :
-- id=3, mtpaye=92000, observation='Fournitures bureau'  ← MODIFIÉ
```

---

## 🏦 EXEMPLE 4 : ENCAISSEMENT BANCAIRE

### Scénario
Réception d'un virement de **500.000 Ar** sur le compte BNI.

### Différences avec la caisse

| Aspect | Caisse | Bancaire |
|--------|--------|----------|
| Menu | Caisse | Banque |
| Table | tb_encaissement | tb_encaissement (idem) |
| id_banque | NULL | 2 (ID de BNI) |
| Classe Python | PageEncaissement | PageEncaissementBq |

### Étapes dans l'application

```
1. Ouvrir Menu Banque → [Sélectionner BNI]

2. CLIQUER [+ Encaissement Bancaire]

3. Formulaire identique mais pour bancaire :
   ┌────────────────────────────────────────┐
   │ NOUVEL ENCAISSEMENT BANCAIRE           │
   │ Banque sélectionnée: BNI               │
   ├────────────────────────────────────────┤
   │ Catégorie : Virement                   │
   │ Montant :   500.000                    │
   │ Descrip. :  Virement client ABC Inc    │
   │                                        │
   │ [Enregistrer]                          │
   └────────────────────────────────────────┘

4. Cliquer [Enregistrer]
```

### Données insérées

```sql
INSERT INTO tb_encaissement 
(refpmt, idcc, mtpaye, observation, idtypeoperation, datepmt, iduser, idmode, id_banque)
VALUES
(
  'ENC - 20260815160230',     -- refpmt
  5,                          -- idcc : "Virement"
  500000,                     -- mtpaye
  'Virement client ABC Inc',  -- observation
  1,                          -- idtypeoperation : 1 = ENC
  '2026-08-15 16:02:30',      -- datepmt
  5,                          -- iduser
  3,                          -- idmode : 3 = Virement
  2                           -- id_banque : 2 = BNI  ← DIFFÉRENCE !
);
```

### Différence clé

```
Caisse :    id_banque = NULL  → Affecte solde caisse
Bancaire :  id_banque = 2     → Affecte solde compte BNI SEULEMENT
            
Calcul du solde caisse (page_home.py) :
SELECT ... FROM tb_encaissement WHERE id_banque IS NULL
                                              ↑
                        Exclut les opérations bancaires
```

---

## 📊 RÉSUMÉ DES FORMATS DE DONNÉES

### Format des montants

```
Entrée utilisateur : 1.234.567 (format français)
                       ↓ (traitement)
Conversion Python   : float(str.replace('.', ''))
                       ↓
Résultat            : 1234567.0
                       ↓ (stockage)
Base de données     : 1234567 (NUMERIC 15,2)
```

### Exemple en détail

```python
# Utilisateur saisit : "2.500.000"

# Pas de validation de décimales
# (car format français utilise ',' pour décimales, pas '.')
# Ici, on n'accepte que les POINTS pour séparateurs

# Traitement
montant_str = "2.500.000"
montant_float = float(montant_str.replace('.', ''))
# montant_float = 2500000.0

# En base de données
# NUMERIC(15,2) peut stocker : 9999999999999.99
# Notre 2500000 s'insère sans problème
```

### Exemple avec validation d'erreur

```python
# ❌ INCORRECT : "2,5" (virgule française)
montant_str = "2,5"
montant_float = float(montant_str.replace('.', ''))
# ERROR: ValueError: could not convert string to float: '2,5'

# ❌ INCORRECT : "2.5.0.0.0" (points mal placés)
montant_str = "2.5.0.0.0"
montant_float = float(montant_str.replace('.', ''))
# Result: 250000.0 (mauvais)

# ✅ CORRECT : "2.500.000"
montant_str = "2.500.000"
montant_float = float(montant_str.replace('.', ''))
# Result: 2500000.0 (bon)
```

---

## 🔍 VÉRIFICATION DES DONNÉES

### Vérifier un encaissement inséré

```sql
SELECT * FROM tb_encaissement WHERE refpmt = 'ENC - 20260815143022';

-- Résultat :
id  │ refpmt              │ idcc │ mtpaye  │ observation      │ idtypeoperation │ datepmt              │ iduser │ idmode │ id_banque
────┼─────────────────────┼──────┼─────────┼──────────────────┼─────────────────┼──────────────────────┼────────┼────────┼──────────
1   │ ENC - 20260815143022│ 2    │ 2500000 │ Facture n°45321  │ 1               │ 2026-08-15 14:30:22  │ 5      │ 1      │ (null)
```

### Vérifier un décaissement inséré

```sql
SELECT d.id, d.refpmt, cc.categoriecompte, d.mtpaye, d.observation, u.username
FROM tb_decaissement d
LEFT JOIN tb_categoriecompte cc ON d.idcc = cc.idcc
LEFT JOIN tb_users u ON d.iduser = u.iduser
WHERE d.refpmt = 'DEC - 20260815150145';

-- Résultat :
id  │ refpmt              │ categoriecompte │ mtpaye │ observation        │ username
────┼─────────────────────┼─────────────────┼────────┼────────────────────┼──────────
3   │ DEC - 20260815150145│ Dépenses        │ 85000  │ Fournitures bureau │ Jean Dupont
```

### Vérifier le solde caisse

```sql
-- Encaissements caisse
SELECT SUM(mtpaye) FROM tb_encaissement WHERE id_banque IS NULL;
-- Résultat : 2500000

-- Décaissements caisse
SELECT SUM(mtpaye) FROM tb_decaissement WHERE id_banque IS NULL;
-- Résultat : 85000 (puis 92000 après correction)

-- Solde
-- 2500000 - 85000 = 2415000 Ar
-- 2500000 - 92000 = 2408000 Ar (après correction)
```

---

## 🎯 CHECKLIST AVANT INSERTION

### Avant créer un encaissement

- ✅ Catégorie sélectionnée dans la liste
- ✅ Montant saisi en format français (ex: "1.234.567")
- ✅ Description non vide (max 500 caractères)
- ✅ Utilisateur connecté (apparaît automatiquement)
- ✅ Cliquer [Enregistrer]

### Avant créer un décaissement

- ✅ Catégorie sélectionnée
- ✅ Montant au format français
- ✅ Description complète
- ✅ Cliquer [Enregistrer]

### Avant modifier un décaissement

- ✅ Ligne sélectionnée dans la liste
- ✅ Champs vérifiés et verrouillés
- ✅ Code d'autorisation obtenu auprès de l'admin
- ✅ Saisir le code → Les champs se déverrouillent
- ✅ Modifier les valeurs nécessaires
- ✅ Cliquer [Modifier]

---

**Exemples créés le 15 Août 2026**
