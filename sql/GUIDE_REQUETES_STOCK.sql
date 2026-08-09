-- ============================================================================
-- GUIDE D'UTILISATION DES REQUÊTES SQL DE STOCK
-- ============================================================================

/* 
📋 FICHIERS CRÉÉS :
────────────────────────────────────────────────────────────────────────────

1. REQUETE_AFFICHAGE_STOCK.sql
   → Affiche le tableau COMPLET de stock pour TOUS les articles
   → À utiliser dans pgAdmin/DBeaver pour vérifier tous les stocks
   → Résultat: colonnes = (codearticle, designation, designationunite, 
                          prixachat, idarticle, idunite, idmag, stock)

2. REQUETE_STOCK_UN_ARTICLE.sql
   → Affiche le stock en DÉTAIL pour UN article spécifique
   → À utiliser pour DEBUG d'un article
   → Comment l'utiliser : remplacer '0070374501' par votre code article
   → Résultat: colonnes = (codearticle, designation, designationunite, 
                          idarticle, idunite, magasin, solde_base_brut, 
                          coefficient, stock_reel)

════════════════════════════════════════════════════════════════════════════════

🎯 FORMULE DU STOCK RÉEL :
────────────────────────────────────────────────────────────────────────────

STOCK_REEL = (Réceptions + Transferts_IN + Inventaires + Avoirs) 
           - (Ventes + Sorties + Transferts_OUT)
           
Divisé par le COEFFICIENT HIÉRARCHIQUE de l'unité

Où :
• Réceptions      = SUM(tb_livraisonfrs.qtlivrefrs) 
• Ventes          = SUM(tb_ventedetail.qtvente) [statut VALIDÉE]
• Sorties         = SUM(tb_sortiedetail.qtsortie)
• Transferts_IN   = SUM(tb_transfertdetail.qttransfert) WHERE idmagentree
• Transferts_OUT  = SUM(tb_transfertdetail.qttransfert) WHERE idmagsortie
• Inventaires     = SUM(tb_inventaire.qtinventaire) [une seule fois par article]
• Avoirs          = SUM(tb_avoirdetail.qtavoir) [annulation de vente = +stock]

════════════════════════════════════════════════════════════════════════════════

📊 EXEMPLE DE CALCUL (article '0070374501', magasin 1) :
────────────────────────────────────────────────────────────────────────────

ÉTAPE 1 : Récupération des unités
   ├─ idunite=1, codearticle='0070374501', qtunite=1 (PIECE)
   └─ idunite=2, codearticle='0070374500', qtunite=50 (CARTON)

ÉTAPE 2 : Récupération des 7 mouvements pour chaque unité
   Unité 1 (PIECE):
   ├─ Réceptions: 100
   ├─ Ventes: 50
   ├─ Sorties: 10
   ├─ Transferts IN: 5
   ├─ Transferts OUT: 2
   ├─ Inventaires: 0
   └─ Avoirs: 3

ÉTAPE 3 : Calcul du solde pour chaque unité
   Unité 1: (100 + 5 + 0 + 3) - (50 + 10 + 2) = 108 - 62 = 46
   Contribution au réservoir: 46 × 1 = 46

   Unité 2 (CARTON):
   ├─ Réceptions: 2
   ├─ Ventes: 0
   ├─ Sorties: 0
   ├─ Transferts IN: 0
   ├─ Transferts OUT: 1
   ├─ Inventaires: 0
   └─ Avoirs: 0
   
   Calcul: (2 + 0 + 0 + 0) - (0 + 0 + 1) = 2 - 1 = 1
   Contribution au réservoir: 1 × 50 = 50

ÉTAPE 4 : Somme dans le réservoir commun
   Réservoir total = 46 + 50 = 96

ÉTAPE 5 : Division par le coefficient de l'unité affichée
   Pour l'unité 1 (qtunite=1): 96 / 1 = 96 PIECE
   Pour l'unité 2 (qtunite=50): 96 / 50 = 1.92 CARTON

════════════════════════════════════════════════════════════════════════════════

🔍 COMMENT UTILISER POUR DEBUG :
────────────────────────────────────────────────────────────────────────────

Pour vérifier le stock exact d'un article dans pgAdmin/DBeaver :

1. Ouvrir REQUETE_STOCK_UN_ARTICLE.sql
2. Remplacer TOUS les '0070374501' par votre code article
3. Exécuter la requête
4. Observer les colonnes :
   - solde_base_brut = stock brut du "réservoir" (avant division)
   - coefficient = diviseur appliqué
   - stock_reel = résultat final affiché

════════════════════════════════════════════════════════════════════════════════

⚙️ OPTIMISATIONS APPLIQUÉES :
────────────────────────────────────────────────────────────────────────────

✓ Utilisation de CTEs (Common Table Expressions) pour clarté
✓ Mouvements convertis en "unité de base" via qtunite
✓ Réservoir commun partagé entre toutes les variantes d'un article
✓ Coefficient hiérarchique pour chaînes multi-niveaux (u3 = 5*u2 = 5*10*u1)
✓ Inventaires comptés UNE SEULE FOIS (via unité de base)
✓ Avoirs augmentent le stock (annulation de vente)

════════════════════════════════════════════════════════════════════════════════

❌ PROBLÈMES COURANTS & SOLUTIONS :
────────────────────────────────────────────────────────────────────────────

Problème: Le stock affiche 3.0 mais je sais qu'il y a 4.0 en magasin
Cause: La requête SQL cherchait juste dans tb_stock.qtstock, qui n'était pas 
        à jour car tb_stock est un CACHE partiel.
Solution: Utiliser la formule CONSOLIDÉE qui recalcule à partir de 7 sources.

Problème: Le stock est différent pour chaque unité du même article
Esperé: Tous les codes (PIECE/CARTON) du même article doivent avoir 
        le même réservoir.
Voir: Colonne solde_base_par_mag - doit être identique pour tout article/magasin.

════════════════════════════════════════════════════════════════════════════════
*/

-- TEST RAPIDE : Afficher tous les stocks pour le magasin 1
SELECT
    a.designation,
    u.codearticle,
    u.designationunite,
    m.designationmag,
    COALESCE(sb.solde_base, 0) / NULLIF(COALESCE(uc.coeff_hierarchique, 1), 0) as stock
FROM tb_unite u
INNER JOIN tb_article a ON u.idarticle = a.idarticle
CROSS JOIN tb_magasin m
LEFT JOIN (
    -- Calcul rapide du solde_base
    WITH mouvements AS (
        SELECT idarticle, idmag, SUM(CASE 
            WHEN type = 'ENTREE' THEN qty ELSE -qty 
        END) * COALESCE(u2.qtunite, 1) as mvt
        FROM (
            SELECT lf.idarticle, lf.idmag, lf.qtlivrefrs as qty, 'ENTREE' as type, u3.qtunite
            FROM tb_livraisonfrs lf
            INNER JOIN tb_unite u3 ON lf.idunite = u3.idunite
            WHERE lf.deleted = 0
            UNION ALL
            SELECT vd.idarticle, v.idmag, vd.qtvente, 'SORTIE', u3.qtunite
            FROM tb_ventedetail vd
            INNER JOIN tb_vente v ON vd.idvente = v.id
            INNER JOIN tb_unite u3 ON vd.idunite = u3.idunite
            WHERE vd.deleted = 0 AND v.statut = 'VALIDEE'
        ) tmp
        LEFT JOIN tb_unite u2 ON u2.codearticle = tmp.codearticle
        GROUP BY idarticle, idmag
    )
    SELECT idarticle, idmag, SUM(mvt) as solde_base FROM mouvements GROUP BY idarticle, idmag
) sb ON sb.idarticle = u.idarticle AND sb.idmag = m.idmag
LEFT JOIN (
    SELECT idarticle, idunite, qtunite as coeff_hierarchique FROM tb_unite
) uc ON uc.idarticle = u.idarticle AND uc.idunite = u.idunite
WHERE a.deleted = 0 AND m.idmag = 1
ORDER BY a.designation, u.codearticle;
