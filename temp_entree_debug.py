import os
import sys
sys.path.insert(0, r'd:\Projets 2026\ijeeryApp_v5.0')
from db import get_connection
conn = get_connection()
print('conn', conn)
if conn is None:
    raise SystemExit('No connection')
cur = conn.cursor()
query = '''
SELECT
    c.datecom as "Date",
    c.refcom as "Référence",
    COALESCE(
        STRING_AGG(DISTINCT fcd.nomfrs, ', ')
            FILTER (WHERE fcd.nomfrs IS NOT NULL AND fcd.nomfrs <> ''),
        f.nomfrs,
        'N/A'
    ) as "Fournisseur",
    COUNT(DISTINCT cd.idarticle) as "Articles",
    CASE
        WHEN COALESCE(SUM(CAST(cd.total AS NUMERIC)), 0) = 0 THEN '-'
        ELSE CAST(COALESCE(SUM(CAST(cd.total AS NUMERIC)), 0) AS TEXT)
    END as "Montant Total",
    CASE
        WHEN EXISTS (
            SELECT 1 FROM tb_livraisonfrs lf
            WHERE lf.idcom = c.idcom AND lf.deleted = 0
        ) THEN '✅✅ Livrée & Reçue'
        WHEN (
            SELECT COUNT(*) FROM tb_commandedetail
            WHERE idcom = c.idcom AND COALESCE(qtlivre, 0) > 0
        ) = (
            SELECT COUNT(*) FROM tb_commandedetail
            WHERE idcom = c.idcom
        ) AND (
            SELECT COUNT(*) FROM tb_commandedetail
            WHERE idcom = c.idcom
        ) > 0 THEN '✅ Livré Complet'
        WHEN EXISTS (
            SELECT 1 FROM tb_commandedetail
            WHERE idcom = c.idcom AND COALESCE(qtlivre, 0) > 0
        ) THEN '⚠️ Livré Partiel'
        ELSE '⏳ En Attente'
    END as "Statut",
    COALESCE(
        (
            SELECT lf.factfrs
            FROM tb_livraisonfrs lf
            WHERE lf.idcom = c.idcom
              AND lf.deleted = 0
              AND lf.factfrs IS NOT NULL
              AND lf.factfrs <> ''
            ORDER BY lf.idcom
            LIMIT 1
        ),
        'N/A'
    ) as "Description",
    CONCAT(COALESCE(u.prenomuser,''), ' ', COALESCE(u.nomuser,'')) as "Utilisateur"
FROM tb_commande c
LEFT JOIN tb_fournisseur f ON c.idfrs = f.idfrs
LEFT JOIN tb_commandedetail cd ON c.idcom = cd.idcom
LEFT JOIN tb_fournisseur fcd ON cd.idfrs = fcd.idfrs
LEFT JOIN tb_users u ON c.iduser = u.iduser
WHERE c.deleted = 0
GROUP BY c.idcom, c.datecom, c.refcom, f.nomfrs, u.prenomuser, u.nomuser
ORDER BY c.datecom DESC
'''
try:
    cur.execute(query)
    rows = cur.fetchall()
    print('rows', len(rows))
    print(rows[:3])
except Exception as e:
    import traceback
    traceback.print_exc()
finally:
    conn.close()
