# Instructions de traitement du fichier de stock legacy

## Objectif

Traiter un nouveau fichier de stock exporté depuis l’ancienne application, au même format que le fichier Stock_20260804090245.xls, pour générer un nouveau script SQL d’insertion des stocks initiaux dans la nouvelle base.

Le traitement doit être identique à celui déjà appliqué pour les stocks du fichier actuel, avec pour seul changement les quantités de stock.

---

## Fichier d’entrée attendu

- Nom du fichier : à fournir par l’utilisateur, par exemple : `Stock_YYYYMMDDHHMMSS.xls`
- Format : export tabulaire texte, avec colonnes séparées par des tabulations
- Extension possible : `.xls` mais le contenu est en réalité un export texte/tabulé
- Le fichier contient les colonnes suivantes (au minimum) :
  - `ID`
  - `CODE`
  - `DESIGNATION`
  - `UNITE`
  - `PRIX`
  - `DEPOT VENTE A`
  - `DEPOT ANTANANKORO`
  - `DEPOT STOCK C`
  - `STOCK G`
  - `DIV`
  - `EXPD`

---

## Colonnes à ignorer

Les colonnes suivantes ne doivent pas être utilisées pour l’insertion :
- `ID`
- `CODE`
- `PRIX`

---

## Données à traiter

### 1. Article
- La colonne `DESIGNATION` correspond au nom de l’article.
- Il faut récupérer l’`idarticle` correspondant dans la table `tb_article` à partir du script d’import des articles legacy : [sql/legacy_articles_import.sql](sql/legacy_articles_import.sql).

### 2. Unité
- La colonne `UNITE` correspond à l’unité de l’article.
- Il faut récupérer l’unité associée à cet article via la table `tb_unite` à partir du même script d’import.
- Il faut récupérer aussi le `codearticle` correspondant à cette unité.

### 3. Magasins
Les quantités de stock doivent être réparties selon les colonnes suivantes :
- `DEPOT VENTE A` -> magasin `idmag = 1`
- `DEPOT ANTANANKORO` -> magasin `idmag = 2`
- `DEPOT STOCK C` -> magasin `idmag = 3`

---

## Règles métier importantes

### 1. Utiliser uniquement la première unité de l’article
Si un même article apparaît plusieurs fois avec plusieurs unités différentes dans le fichier, ne conserver que la première ligne correspondant à cet article.

Exemple :
- ligne 1 : article X en `PIECE`
- ligne 2 : même article X en `PAQUET`
- ligne 3 : même article X en `CARTON`

Dans ce cas, il faut seulement utiliser la première ligne détectée pour cet article, et ignorer les autres lignes pour cet article.

### 2. Conversion des quantités
Les quantités doivent être insérées comme des nombres décimaux valides en `double precision`.

- Les valeurs vides doivent être traitées comme `0`.
- Les valeurs contenant des virgules doivent être converties correctement en décimaux.
- Les séparateurs de milliers et décimaux doivent être gérés proprement.
- Les valeurs du type `4,7` doivent devenir `4.7`.
- Les valeurs du type `1 234,5` doivent devenir `1234.5`.

### 3. Si la correspondance article/unité manque
- Si l’article n’est pas retrouvé dans le script d’import des articles, ignorer la ligne.
- Si l’unité n’est pas retrouvée pour cet article, ignorer la ligne.
- Le script généré doit rapporter les lignes ignorées.

---

## Tables cibles

Les insertions doivent être réalisées dans les trois tables suivantes :

### 1. tb_inventaire
Colonnes à utiliser :
- `qtinventaire` : quantité du stock donné
- `observation` : exactement `Inventaire - report ancien version Ijeery`
- `date` : timestamp
- `iduser` : `1`
- `idmag` : `1`, `2` ou `3` selon le magasin
- `codearticle` : `codearticle` récupéré depuis `tb_unite`

### 2. tb_stock
Colonnes à utiliser :
- `idmag` : `1`, `2` ou `3`
- `qtstock` : quantité du stock donné
- `qtalert` : `0`
- `deleted` : `0`
- `codearticle` : `codearticle` récupéré depuis `tb_unite`

### 3. tb_log_stock
Colonnes à utiliser :
- `idmag` : `1`, `2` ou `3`
- `ancien_stock` : `0`
- `nouveau_stock` : quantité du stock donné
- `date_action` : timestamp
- `iduser` : `1`
- `type_action` : exactement `Entrée en stock par inventaire de départ`
- `codearticle` : `codearticle` récupéré depuis `tb_unite`

---

## Contraintes à respecter

### Schéma cible
Le script doit être compatible avec le schéma défini dans [sql/base_vide_0308.sql](sql/base_vide_0308.sql).

Les tables concernées sont :
- `tb_inventaire`
- `tb_stock`
- `tb_log_stock`
- `tb_magasin`

### Contraintes importantes
- Ne pas utiliser de colonnes absentes dans la structure cible.
- Utiliser uniquement les colonnes listées ci-dessus.
- Éviter toute insertion qui violerait les types de colonnes.
- Les valeurs de stock doivent être des nombres décimaux valides.
- Le code article doit être celui récupéré depuis la table `tb_unite` et non un code implicite issu du fichier.

### Magasins
Le script doit garantir l’existence des magasins suivants (si absents) :
- `idmag = 1`
- `idmag = 2`
- `idmag = 3`

Si les magasins n’existent pas, les insérer avec des libellés cohérents.

---

## Format du script SQL à produire

Le résultat attendu est un fichier SQL nommé :
- [sql/legacy_stock_import.sql](sql/legacy_stock_import.sql)

Le script doit :
- commencer par `BEGIN;`
- définir `SET search_path TO public, pg_catalog;`
- insérer les magasins si nécessaire
- insérer les lignes dans `tb_inventaire`, `tb_stock` et `tb_log_stock`
- terminer par `COMMIT;`

---

## Résultat attendu

Pour chaque ligne valide :
- une insertion dans `tb_inventaire`
- une insertion dans `tb_stock`
- une insertion dans `tb_log_stock`

Le script devra être cohérent, reproductible et adapté au nouveau fichier de stock mis à jour.

---

## Recommandation finale

Créer un script Python qui :
1. lit le nouveau fichier de stock
2. parse les colonnes utiles
3. récupère les mappings article/unité/codearticle depuis [sql/legacy_articles_import.sql](sql/legacy_articles_import.sql)
4. applique la règle “première unité seulement par article”
5. convertit les quantités en nombres décimaux
6. génère le nouveau script [sql/legacy_stock_import.sql](sql/legacy_stock_import.sql)

---

## Note de validation

Avant de considérer le traitement comme terminé, vérifier que :
- le script SQL est généré sans erreur de syntaxe
- les colonnes utilisées existent bien dans le schéma cible
- les quantités sont bien converties en nombres décimaux
- les lignes sans correspondance article/unité sont bien signalées et ignorées
