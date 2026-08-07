import time, statistics
from db import get_connection

filter_text = 'a'
queries = {
    'page_entree': """
        SELECT
            u.idarticle,
            u.idunite,
            u.codearticle,
            a.designation,
            u.designationunite
        FROM tb_unite u
        INNER JOIN tb_article a ON a.idarticle = u.idarticle
        WHERE a.deleted = 0
          AND COALESCE(u.deleted, 0) = 0
          AND (u.codearticle ILIKE %s OR a.designation ILIKE %s)
        ORDER BY a.designation ASC, u.codearticle ASC, u.idunite ASC
    """,
    'page_sortie': """
        SELECT
            u.idarticle,
            u.idunite,
            u.codearticle,
            a.designation,
            u.designationunite,
            COALESCE(p.prix, 0) AS prix_unitaire
        FROM tb_unite u
        INNER JOIN tb_article a ON a.idarticle = u.idarticle
        LEFT JOIN (
            SELECT idarticle, idunite, prix
            FROM (
                SELECT idarticle, idunite, prix,
                       ROW_NUMBER() OVER (
                           PARTITION BY idarticle, idunite
                           ORDER BY id DESC
                       ) AS rn
                FROM tb_prix
                WHERE deleted = 0
            ) x
            WHERE x.rn = 1
        ) p ON p.idarticle = u.idarticle AND p.idunite = u.idunite
        WHERE a.deleted = 0
          AND COALESCE(u.deleted, 0) = 0
          AND (u.codearticle ILIKE %s OR a.designation ILIKE %s)
        ORDER BY a.designation ASC, u.codearticle ASC, u.idunite ASC
    """,
}

conn = get_connection()
print('conn_ok', conn is not None)
if conn is None:
    raise SystemExit('No DB connection')

for name, query in queries.items():
    timings = []
    row_counts = []
    for _ in range(5):
        start = time.perf_counter()
        with conn.cursor() as cur:
            cur.execute(query, (f'%{filter_text}%', f'%{filter_text}%'))
            rows = cur.fetchall()
        elapsed = time.perf_counter() - start
        timings.append(elapsed)
        row_counts.append(len(rows))
    print(name, 'avg_s=', round(statistics.mean(timings), 4), 'min_s=', round(min(timings), 4), 'max_s=', round(max(timings), 4), 'rows=', row_counts[0])

conn.close()
