# ❓ FAQ - Encaissement et Décaissement

**iJeery V5.0** - Questions Fréquemment Posées

---

## 📥 QUESTIONS SUR L'ENCAISSEMENT

### Q1 : Où puis-je accéder à l'encaissement ?

**R :** Menu Principal → **Caisse** → **[+ Encaissement]**

```
Chemins possibles :
├─ Menu Caisse
│  └─ [+ Encaissement]           ← Encaissement CAISSE
└─ Menu Banque
   └─ [Sélectionner banque]
      └─ [+ Encaissement]         ← Encaissement BANCAIRE
```

---

### Q2 : Quels champs sont obligatoires pour un encaissement ?

**R :** **3 champs obligatoires** :

| Champ | Type | Contrainte |
|-------|------|-----------|
| Catégorie | Liste déroulante | Doit être sélectionnée |
| Montant | Nombre | Format français (ex: 1.234.567) |
| Description | Texte | Max 500 caractères, non vide |

---

### Q3 : Comment saisir correctement le montant ?

**R :** Utilisez le **format français avec points** pour les séparateurs de milliers :

**✅ CORRECT** :
- `1000` (mille)
- `1.500` (mille cinq cents)
- `1.234.567` (un million deux cent trente-quatre mille cinq cent soixante-sept)

**❌ INCORRECT** :
- `1,5` (virgule française → erreur)
- `1.5` (c'est 1 point 5, pas 1500)
- `1 000` (espaces → erreur)

**Conseil** : Le système formatte **automatiquement** votre saisie. Tapez les chiffres et les points s'ajoutent tout seuls.

---

### Q4 : Le ticket PDF n'a pas été généré. Que faire ?

**R :** Le ticket doit s'ouvrir automatiquement après enregistrement. Si ce n'est pas le cas :

1. Vérifier le dossier : `C:\Users\[VotreNom]\tickets_caisse\`
2. Le fichier y est probablement : `ticket_ENC-20260815143022.pdf`
3. Si le dossier n'existe pas → Le système le crée automatiquement à la première utilisation
4. Ouvrir manuellement avec un lecteur PDF

**Si le fichier n'existe toujours pas** :
- Vérifier les permissions d'accès (dossier créable dans `C:\Users`)
- Vérifier qu'il y a de l'espace disque disponible

---

### Q5 : Puis-je modifier un encaissement après l'avoir enregistré ?

**R :** **Non, les encaissements ne peuvent pas être modifiés.**

- L'encaissement s'enregistre directement sans verrou
- Une fois enregistré, il est définitif
- Si erreur : contacter un administrateur pour suppression/réinsertion

**Alternative** : Pour un décaissement par erreur → Créer un nouvel encaissement de correction (ex: "Correction encaissement n°X")

---

### Q6 : Qu'est-ce que la colonne "Opérateur" ?

**R :** C'est l'utilisateur **qui a créé l'encaissement**.

- **Automatiquement rempli** depuis votre session utilisateur
- Récupéré de `session.json` ou `tb_users`
- Permet de tracer qui a effectué l'opération
- Affiché sur le ticket PDF généré

---

### Q7 : Encaissement caisse vs Encaissement bancaire : quelle différence ?

**R :**

| Aspect | Caisse | Bancaire |
|--------|--------|----------|
| **Accès** | Menu Caisse | Menu Banque |
| **Affect solde caisse** | ✅ OUI | ❌ NON |
| **Affect solde bancaire** | ❌ NON | ✅ OUI |
| **Mode paiement** | Espèces | Virement, Chèque |
| **Ticket PDF** | ✅ Généré | ❌ Non généré |
| **Colonne `id_banque`** | NULL | `<ID compte>` |

**Résumé** :
- **Caisse** : Argent en espèces, augmente le solde caisse
- **Bancaire** : Virement/Chèque, reste sur le compte bancaire

---

## 📤 QUESTIONS SUR LE DÉCAISSEMENT

### Q8 : Comment créer un nouveau décaissement ?

**R :** Suivez ces étapes :

```
1. Menu Caisse → [- Décaissement]
2. Cliquer [Nouveau]                    (important : commence avec formulaire vide)
3. Remplir : Catégorie + Montant + Description
4. Cliquer [Enregistrer]
5. Décaissement ajouté à la liste
```

---

### Q9 : Comment modifier un décaissement existant ?

**R :** Processus en 5 étapes :

```
ÉTAPE 1 : Sélectionner la ligne
├─ Cliquer sur la ligne dans la liste
└─ Champs se remplissent (VERROUILLÉS)

ÉTAPE 2 : Demander déverrouillage
├─ Cliquer [Saisir le code d'autorisation]
└─ Fenêtre modale apparaît

ÉTAPE 3 : Saisir le code
├─ Code fourni par administrateur
└─ Cliquer [Valider]

ÉTAPE 4 : Vérification en base
├─ Query : SELECT FROM tb_codeautorisation WHERE code=%s
├─ Si TROUVÉ → Champs se déverrouillent ✅
└─ Si PAS TROUVÉ → Erreur, recommencer ❌

ÉTAPE 5 : Modifier et valider
├─ Modifier les valeurs
└─ Cliquer [Modifier]
```

---

### Q10 : Le système me demande un code d'autorisation. Qui peut le fournir ?

**R :** Le **code d'autorisation** est fourni par un **administrateur de l'application**.

- Administrateur gère la table `tb_codeautorisation`
- Chaque code peut être temporaire ou permanent
- Raison : Protection contre les modifications accidentelles
- Exemple de code : `AUTH2026`, `MOD-DEC-001`

**Si vous avez oublié le code** :
- Contacter votre administrateur
- Il génère un nouveau code ou vous redonne l'ancien

---

### Q11 : Que signifie "Champs verrouillés" ?

**R :** Quand vous sélectionnez une ligne pour modification :

```
AVANT saisie du code :
├─ Montant      : grisé, non modifiable ❌
├─ Catégorie    : grisé, non modifiable ❌
├─ Description  : grisé, non modifiable ❌
└─ Bannière jaune : "Verrouilles - Saisir le code"

APRÈS saisie du code CORRECT :
├─ Montant      : blanc, modifiable ✅
├─ Catégorie    : blanc, modifiable ✅
├─ Description  : blanc, modifiable ✅
└─ Bannière jaune : "Déverrouille - Cliquer Modifier"
```

**Raison** : Éviter les modifications accidentelles sur les données existantes.

---

### Q12 : Puis-je supprimer un décaissement ?

**R :** **Non, la suppression directe n'est pas disponible** dans l'interface.

**Options si vous vous êtes trompé** :
1. **Créer un décaissement de correction** (ex: montant négatif ou description "Annulation de...")
2. Ou **contacter un administrateur** pour suppression en base de données

**Raison** : Conservation de la traçabilité comptable.

---

### Q13 : Puis-je modifier un décaissement APRÈS l'avoir enregistré ?

**R :** **Oui, c'est possible AVEC le code d'autorisation.**

1. Sélectionner la ligne
2. Saisir le code d'autorisation
3. Champs se déverrouillent
4. Modifier les valeurs
5. Cliquer [Modifier]

**Important** : Cette action est tracée. L'historique des modifications n'est pas visible dans l'interface, mais en base de données, vous verrez les valeurs mises à jour.

---

## 💰 QUESTIONS SUR LE SOLDE

### Q14 : Comment est calculé le solde caisse ?

**R :** **Solde Caisse = Σ Encaissements - Σ Décaissements**

```sql
FORMULE :

Solde = (Somme tous les encaissements en caisse)
        - (Somme tous les décaissements en caisse)

Exclut les opérations bancaires (id_banque IS NULL)

EXEMPLE :
Encaissements du jour : 5.000.000 Ar
Décaissements du jour : 1.500.000 Ar
──────────────────────────────────────
Solde caisse          = 3.500.000 Ar
```

---

### Q15 : Le solde caisse est-il en temps réel ?

**R :** **Oui, mis à jour en temps réel.**

- À chaque encaissement/décaissement ajouté → Solde recalculé
- À chaque modification → Solde recalculé
- Affichage sur page **Caisse** et page **d'Accueil**

---

### Q16 : Les opérations bancaires affectent-elles le solde caisse ?

**R :** **Non, les opérations bancaires n'affectent pas le solde caisse.**

```
Caisse :    id_banque = NULL     → Affecte solde caisse
Bancaire :  id_banque = 2 (BNI)  → Affecte solde BNI SEULEMENT

Calcul du solde caisse :
SELECT ... FROM tb_encaissement WHERE id_banque IS NULL
                                   ↑
                      Exclut les opérations bancaires
```

**Exemple** :
- Encaissement caisse 1.000.000 Ar → Solde caisse +1.000.000 ✅
- Encaissement bancaire 500.000 Ar → Solde caisse inchangé ❌

---

## ⚙️ QUESTIONS TECHNIQUES

### Q17 : Où sont stockées les données ?

**R :** Dans la **base de données PostgreSQL** :

```
Table tb_encaissement
├─ refpmt : Référence unique
├─ idcc : Catégorie
├─ mtpaye : Montant
├─ observation : Description
├─ datepmt : Date/Heure
├─ iduser : Utilisateur
└─ id_banque : NULL si caisse

Table tb_decaissement
├─ Même structure que tb_encaissement
├─ idtypeoperation = 2 (DEC au lieu de ENC)
└─ Peut avoir un code d'autorisation pour modification
```

**Configurations** : Voir `config.json` pour les paramètres de connexion.

---

### Q18 : Comment fonctionne la génération du ticket PDF ?

**R :** **Processus automatique** :

```
1. Encaissement enregistré ✅
   ↓
2. Récupération des infos société (tb_infosociete)
   ├─ Nom, adresse, contact, ville
   ↓
3. Génération PDF avec ReportLab
   ├─ Dimensions : 80mm × 200mm (format ticket caisse)
   ├─ Contenu :
   │  ├─ En-tête société
   │  ├─ Titre "TICKET D'ENCAISSEMENT"
   │  ├─ Détails (Date, Référence, Opérateur)
   │  ├─ Catégorie
   │  ├─ Description
   │  └─ Montant
   ↓
4. Sauvegarde en local
   ├─ Dossier : C:\Users\[VotreNom]\tickets_caisse\
   ├─ Nom : ticket_ENC-20260815143022.pdf
   ↓
5. Ouverture automatique (Windows: os.startfile)
```

---

### Q19 : Comment les références (ENC-, DEC-) sont-elles générées ?

**R :** **Automatiquement avec le timestamp** :

```
Format : <TYPE> - <YYYYMMDDHHMMSS>

Exemple :
├─ ENC - 20260815143022 (Encaissement 15/08/2026 à 14:30:22)
├─ DEC - 20260815150145 (Décaissement 15/08/2026 à 15:01:45)
└─ Unique et non réutilisable (basé sur timestamp)

Raison : Garantir l'unicité et pouvoir tracer la date/heure
```

---

### Q20 : Où trouver les fichiers sources du code ?

**R :** Les fichiers Python responsables :

| Fichier | Rôle |
|---------|------|
| `pages/page_caisse.py` | Interface principale caisse |
| `pages/page_encaissement.py` | Formulaire nouvel encaissement |
| `pages/page_decaissement.py` | Liste + formulaire décaissement |
| `pages/page_banque.py` | Interface banque |
| `pages/page_encaissementBq.py` | Encaissement bancaire |
| `pages/page_decaissementBq.py` | Décaissement bancaire |
| `page_home.py` | Calcul solde caisse |

---

## 🚨 QUESTIONS DE DÉPANNAGE

### Q21 : Message "Champs vides" - Que faire ?

**R :** Au moins un champ obligatoire manque :

```
Vérifications :
1. ✅ Catégorie sélectionnée ? (pas juste le texte par défaut)
2. ✅ Montant saisi ? (pas zéro ou vide)
3. ✅ Description écrite ? (au moins quelques caractères)

Solution :
└─ Remplir tous les champs et réessayer
```

---

### Q22 : Message "Montant invalide" - Que faire ?

**R :** Problème de **format du montant** :

```
ERREUR COURANTE :
├─ "1,5" (virgule au lieu de point)
├─ "1 234 567" (espaces au lieu de points)
├─ "1.5,00" (mélange de points et virgules)
└─ "abc" (lettres au lieu de chiffres)

SOLUTION :
└─ Utiliser le format : 1.234.567 (points UNIQUEMENT)

CONSEIL :
└─ Le système ajoute les points automatiquement
   Tapez "1234567" → Devient "1.234.567"
```

---

### Q23 : "Connexion échouée" - Que faire ?

**R :** Problème de **connexion à la base de données** :

```
Diagnostic :
1. Vérifier config.json
   ├─ Hôte BD correct ?
   ├─ Port correct ? (défaut: 5432)
   ├─ Base de données existe ?
   ├─ Utilisateur/mot de passe corrects ?
   └─ Serveur PostgreSQL démarré ?

2. Tester la connexion
   └─ Relancer l'application

3. Vérifier les logs
   └─ app_runtime_log.py
```

**Solution typique** :
- Vérifier que le serveur PostgreSQL est en cours d'exécution
- Vérifier les identifiants dans `config.json`
- Redémarrer l'application

---

### Q24 : Le décaissement n'apparaît pas dans la liste. Pourquoi ?

**R :** Plusieurs raisons possibles :

```
Vérifications :
1. ✅ L'enregistrement a-t-il réussi ?
   └─ Message de confirmation affiché ?

2. ✅ La liste s'est-elle rafraîchie ?
   └─ Cliquer [Nouveau] ou appuyer F5 pour rafraîchir

3. ✅ La recherche filtre-t-elle trop ?
   └─ Vider le champ de recherche

4. ✅ Erreur SQL silencieuse ?
   └─ Vérifier app_runtime_log.py pour les erreurs

Solution typique :
└─ Vider recherche + Cliquer [Nouveau] + Rafraîchir
```

---

### Q25 : Le code d'autorisation est rejeté. Pourquoi ?

**R :** Le code saisi n'existe pas ou est désactivé :

```
Diagnostic :
1. Le code a-t-il été donné correctement ?
   └─ Vérifier auprès de l'administrateur

2. Le code est-il valide ?
   └─ Peut-être expiré ou désactivé

3. Y a-t-il une typo ?
   └─ Les codes sont sensibles à la casse

Vérification en base de données :
SELECT * FROM tb_codeautorisation WHERE code = 'VOTRE_CODE' AND deleted = 0;
↑
Le code doit être présent avec deleted=0
```

**Solution** :
- Contacter administrateur pour un nouveau code
- Vérifier la casse (majuscules/minuscules)
- Demander si le code est expiré

---

## 💡 CONSEILS PRATIQUES

### C1 : Meilleure pratique pour l'encaissement

```
1. Utiliser une description précise
   ❌ Mauvais : "Vente"
   ✅ Bon : "Facture n°45321 - 5 articles informatiques"

2. Catégoriser correctement
   └─ Choisir la bonne catégorie dès le départ

3. Garder le ticket PDF
   └─ Archiver pour comptabilité

4. Vérifier le solde après
   └─ S'assurer que le solde caisse s'est augmenté
```

### C2 : Meilleure pratique pour le décaissement

```
1. Demander le code AVANT de cliquer
   └─ Éviter d'attendre après sélection de ligne

2. Utiliser des descriptions claires
   ✅ "Achat fournitures bureau - 25.000 Ar"
   ✅ "Carburant essence - 15.000 Ar"

3. Vérifier les chiffres deux fois
   └─ Surtout avant de cliquer [Modifier]

4. Tracer la modification
   └─ Ajouter en description : "Correction : était 85.000, maintenant 92.000"
```

### C3 : Organisations recommandées

```
CAISSE :
├─ Encaissements : matin/début de journée
├─ Décaissements : midi/fin de journée
└─ Réconciliation : fin de journée

CATÉGORIES À CRÉER :
├─ Encaissements :
│  ├─ Vente
│  ├─ Service
│  ├─ Autre Revenu
│  └─ Correction
├─ Décaissements :
│  ├─ Dépenses
│  ├─ Salaires
│  ├─ Fournitures
│  └─ Correction
```

---

## 📞 BESOIN D'AIDE ?

Si votre question n'est pas dans la FAQ :

1. **Consulter les documents** :
   - `GUIDE-ENCAISSEMENT-DECAISSEMENT.md` (guide complet)
   - `DIAGRAMMES-FLUX-ARCHITECTURE.md` (diagrammes)
   - `EXEMPLES-INSERTION.md` (exemples concrets)

2. **Contacter support** :
   - Administrateur de l'application
   - Vérifier les logs : `app_runtime_log.py`

3. **Vérifier config** :
   - `config.json` (paramètres DB)
   - `session.json` (utilisateur courant)

---

**FAQ mise à jour le 15 Août 2026**
**iJeery V5.0**
