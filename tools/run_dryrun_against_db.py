import csv
from pathlib import Path
import sys
try:
    import psycopg as dbmod
    _USE_PSYCOPG2 = False
except Exception:
    import psycopg2 as dbmod
    _USE_PSYCOPG2 = True

# Database connection (user provided)
DB = {
    'host': 'localhost',
    'port': 5432,
    'dbname': 'tavaratra_debug',
    'user': 'postgres',
    'password': 'root',
}

CSV_PATH = Path('tools/match_zero_stock_cascade.csv')
OUT_PATH = Path('tools/dryrun_results.txt')


def run_queries(conn, codearticle, idarticle, idunite, limit_sample=3):
    cur = conn.cursor()
    results = []

    queries = [
        ("tb_stock", "SELECT COUNT(*) FROM tb_stock WHERE codearticle=%s", (codearticle,)),
        ("tb_inventaire", "SELECT COUNT(*) FROM tb_inventaire WHERE codearticle=%s", (codearticle,)),
        ("tb_log_stock", "SELECT COUNT(*) FROM tb_log_stock WHERE codearticle=%s", (codearticle,)),
    ]
    if idarticle and idunite:
        queries.append(("tb_prix", "SELECT COUNT(*) FROM tb_prix WHERE idarticle=%s AND idunite=%s", (int(idarticle), int(idunite))))

    for name, q, params in queries:
        cur.execute(q, params)
        cnt = cur.fetchone()[0]
        results.append((name, cnt))

    # samples
    samples = []
    for name, _ in results:
        if name == 'tb_prix' and (not idarticle or not idunite):
            continue
        if name == 'tb_prix':
            cur.execute("SELECT * FROM tb_prix WHERE idarticle=%s AND idunite=%s LIMIT %s", (int(idarticle), int(idunite), limit_sample))
        else:
            cur.execute(f"SELECT * FROM {name} WHERE codearticle=%s LIMIT %s", (codearticle, limit_sample))
        rows = cur.fetchall()
        samples.append((name, rows))

    return results, samples


def main():
    if not CSV_PATH.exists():
        print('Missing CSV:', CSV_PATH, file=sys.stderr)
        raise SystemExit(1)

    if _USE_PSYCOPG2:
        conn = dbmod.connect(host=DB['host'], port=DB['port'], dbname=DB['dbname'], user=DB['user'], password=DB['password'])
    else:
        conn = dbmod.connect(**DB)
    out_lines = []
    with CSV_PATH.open(newline='', encoding='utf-8') as csvfile:
        reader = csv.DictReader(csvfile)
        for i, row in enumerate(reader, start=1):
            codearticle = row.get('codearticle', '').strip()
            idarticle = row.get('idarticle', '').strip()
            idunite = row.get('idunite', '').strip()
            name = row.get('csv_name', '').strip()
            unit = row.get('csv_unit', '').strip()

            out_lines.append(f"--- Article {i}: {name} | Unit: {unit} | codearticle={codearticle} idarticle={idarticle} idunite={idunite}\n")
            try:
                results, samples = run_queries(conn, codearticle, idarticle, idunite)
            except Exception as e:
                out_lines.append(f"ERROR running queries for codearticle={codearticle}: {e}\n")
                continue

            for t, cnt in results:
                out_lines.append(f"{t}: {cnt}\n")

            for t, rows in samples:
                out_lines.append(f"SAMPLE {t}: {len(rows)} rows\n")
                for r in rows:
                    out_lines.append(str(r) + "\n")

            out_lines.append("\n")

    conn.close()

    with OUT_PATH.open('w', encoding='utf-8') as f:
        f.writelines(out_lines)

    print('Wrote results to', OUT_PATH)


if __name__ == '__main__':
    main()
