import csv
import sys
from pathlib import Path

DB = dict(host="localhost", port=5432, dbname="tavaratra_debug", user="postgres", password="root")

try:
    import psycopg as dbmod
    _USE_PSYCOPG2 = False
except Exception:
    import psycopg2 as dbmod
    _USE_PSYCOPG2 = True


def connect():
    if _USE_PSYCOPG2:
        return dbmod.connect(host=DB['host'], port=DB['port'], dbname=DB['dbname'], user=DB['user'], password=DB['password'])
    return dbmod.connect(**DB)


def load_csv(path):
    rows = []
    with open(path, newline='', encoding='utf-8') as f:
        r = csv.DictReader(f)
        for row in r:
            rows.append(row)
    return rows


def col_exists(conn, table, column):
    cur = conn.cursor()
    cur.execute("SELECT 1 FROM information_schema.columns WHERE table_name=%s AND column_name=%s", (table, column))
    ok = cur.fetchone() is not None
    cur.close()
    return ok


def count_table(conn, table, where_clause, params):
    cur = conn.cursor()
    q = f"SELECT COUNT(*) FROM {table} WHERE {where_clause}"
    cur.execute(q, params)
    c = cur.fetchone()[0]
    cur.close()
    return c


def main():
    base = Path(__file__).resolve().parent
    csv_path = base / 'match_zero_stock.csv'
    out_path = base / 'generated_cascade_delete.sql'

    rows = load_csv(csv_path)
    conn = connect()

    no_backup = '--no-backup' in sys.argv

    with open(out_path, 'w', encoding='utf-8') as out:
        out.write('-- Generated cascade delete SQL (review before running)\n')
        out.write('-- Ensures tb_inventaire for article has no non-zero qtinventaire before deleting\n')
        if not no_backup:
            out.write("CREATE TABLE IF NOT EXISTS deletion_backup_tb_log_stock (LIKE tb_log_stock INCLUDING ALL);\n")
            out.write("CREATE TABLE IF NOT EXISTS deletion_backup_tb_prix (LIKE tb_prix INCLUDING ALL);\n")
            out.write("CREATE TABLE IF NOT EXISTS deletion_backup_tb_inventaire (LIKE tb_inventaire INCLUDING ALL);\n")
            out.write("CREATE TABLE IF NOT EXISTS deletion_backup_tb_stock (LIKE tb_stock INCLUDING ALL);\n")
            out.write("CREATE TABLE IF NOT EXISTS deletion_backup_tb_article (LIKE tb_article INCLUDING ALL);\n")
            out.write("CREATE TABLE IF NOT EXISTS deletion_backup_tb_unite (LIKE tb_unite INCLUDING ALL);\n\n")
        for r in rows:
            idarticle = r.get('idarticle')
            idunite = r.get('idunite')
            codearticle = r.get('codearticle')
            name = r.get('csv_name','').replace('\n',' ').strip()
            unit = r.get('csv_unit','').strip()

            header = f"-- IdArticle={idarticle} , Designation={name} , Unite={unit} , IdUnite={idunite} , CodeArticle={codearticle}\n"
            out.write('\n' + header)

            # Check inventory non-zero: tb_inventaire may reference by idarticle or codearticle
            try:
                cur = conn.cursor()
                if col_exists(conn, 'tb_inventaire', 'idarticle'):
                    cur.execute("SELECT COUNT(*) FROM tb_inventaire WHERE idarticle=%s AND (qtinventaire IS NULL OR qtinventaire<>0)", (idarticle,))
                else:
                    cur.execute("SELECT COUNT(*) FROM tb_inventaire WHERE codearticle=%s AND (qtinventaire IS NULL OR qtinventaire<>0)", (codearticle,))
                bad_inv = cur.fetchone()[0]
                cur.close()
            except Exception:
                bad_inv = -1

            if bad_inv == -1:
                out.write("-- WARNING: could not verify tb_inventaire for this article (check schema)\n")
                out.write("-- SKIP or review manually\n")
                continue

            if bad_inv > 0:
                out.write(f"-- SKIPPED: tb_inventaire has {bad_inv} row(s) with non-zero qtinventaire; manual review required\n")
                continue

            # Pre-check counts for informative comments
            def safe_count(table, where, params):
                try:
                    return count_table(conn, table, where, params)
                except Exception:
                    return 'N/A'

            # counts with column existence checks (idarticle vs codearticle)
            if col_exists(conn, 'tb_prix', 'idarticle'):
                cnt_prix = safe_count('tb_prix', 'idarticle=%s', (idarticle,))
                prix_where = f"idarticle={idarticle}"
            else:
                cnt_prix = safe_count('tb_prix', "codearticle=%s", (codearticle,))
                prix_where = f"codearticle='{codearticle}'"

            # prefer idarticle in tb_log_stock if exists, else use codearticle
            if col_exists(conn, 'tb_log_stock', 'idarticle'):
                cnt_log = safe_count('tb_log_stock', 'idarticle=%s', (idarticle,))
                log_where = f"idarticle={idarticle}"
            else:
                cnt_log = safe_count('tb_log_stock', "codearticle=%s", (codearticle,))
                log_where = f"codearticle='{codearticle}'"

            if col_exists(conn, 'tb_inventaire', 'idarticle'):
                cnt_inv = safe_count('tb_inventaire', 'idarticle=%s', (idarticle,))
                inv_where = f"idarticle={idarticle}"
            else:
                cnt_inv = safe_count('tb_inventaire', "codearticle=%s", (codearticle,))
                inv_where = f"codearticle='{codearticle}'"

            if col_exists(conn, 'tb_stock', 'idarticle'):
                cnt_stock = safe_count('tb_stock', 'idarticle=%s', (idarticle,))
                stock_where = f"idarticle={idarticle}"
            else:
                cnt_stock = safe_count('tb_stock', "codearticle=%s", (codearticle,))
                stock_where = f"codearticle='{codearticle}'"

            if col_exists(conn, 'tb_article', 'idarticle'):
                cnt_article = safe_count('tb_article', 'idarticle=%s', (idarticle,))
                article_where = f"idarticle={idarticle}"
            else:
                cnt_article = safe_count('tb_article', "codearticle=%s", (codearticle,))
                article_where = f"codearticle='{codearticle}'"

            out.write(f"-- Pre-check counts: tb_prix={cnt_prix}, tb_log_stock={cnt_log}, tb_inventaire={cnt_inv}, tb_stock={cnt_stock}, tb_article={cnt_article}\n")

            # Generate transactional block
            out.write('BEGIN;\n')
            # Backup rows (optional)
            if not no_backup:
                out.write(f"INSERT INTO deletion_backup_tb_prix SELECT * FROM tb_prix WHERE {prix_where};\n")
                out.write(f"INSERT INTO deletion_backup_tb_log_stock SELECT * FROM tb_log_stock WHERE {log_where};\n")
                out.write(f"INSERT INTO deletion_backup_tb_inventaire SELECT * FROM tb_inventaire WHERE {inv_where};\n")
                out.write(f"INSERT INTO deletion_backup_tb_stock SELECT * FROM tb_stock WHERE {stock_where};\n")
                out.write(f"INSERT INTO deletion_backup_tb_article SELECT * FROM tb_article WHERE {article_where};\n")

            # Deletes: prix -> log_stock -> inventaire -> stock -> article -> unite (conditional)
            out.write(f"DELETE FROM tb_prix WHERE {prix_where}" + (f" AND idunite={idunite}" if idunite else '') + ";\n")
            out.write(f"DELETE FROM tb_log_stock WHERE {log_where};\n")
            out.write(f"DELETE FROM tb_inventaire WHERE {inv_where};\n")
            out.write(f"DELETE FROM tb_stock WHERE {stock_where};\n")
            out.write(f"DELETE FROM tb_article WHERE {article_where};\n")

            # Conditional delete for unite: only delete if no remaining usage in tb_prix or tb_article
            out.write(f"DELETE FROM tb_unite WHERE idunite={idunite} AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite={idunite}) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite={idunite});\n")

            out.write('COMMIT;\n')

    conn.close()
    print(f'Wrote cascade delete SQL to {out_path}')


if __name__ == '__main__':
    main()
