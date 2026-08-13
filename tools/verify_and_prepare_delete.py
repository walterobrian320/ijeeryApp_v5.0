import csv
import os
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


def load_candidates(csv_path):
    ids = set()
    stocks = set()
    prix = set()
    with open(csv_path, newline='', encoding='utf-8') as f:
        r = csv.DictReader(f)
        for row in r:
            if row.get('idarticle'):
                ids.add(row['idarticle'])
            if row.get('idstock'):
                stocks.add(row['idstock'])
            if row.get('idprix'):
                prix.add(row['idprix'])
    return sorted(ids), sorted(stocks), sorted(prix)


def find_fk_references(conn, referenced_table, referenced_column):
    q = """
    SELECT
      kcu.table_schema, kcu.table_name, kcu.column_name, tc.constraint_name
    FROM information_schema.table_constraints AS tc
    JOIN information_schema.key_column_usage AS kcu
      ON tc.constraint_name = kcu.constraint_name AND tc.table_schema = kcu.table_schema
    JOIN information_schema.constraint_column_usage AS ccu
      ON ccu.constraint_name = tc.constraint_name AND ccu.table_schema = tc.table_schema
    WHERE tc.constraint_type = 'FOREIGN KEY'
      AND ccu.table_name = %s AND ccu.column_name = %s;
    """
    cur = conn.cursor()
    cur.execute(q, (referenced_table, referenced_column))
    rows = cur.fetchall()
    cur.close()
    return rows


def count_refs_for_ids(conn, ref_rows, ids):
    results = []
    cur = conn.cursor()
    for schema, table, column, constraint in ref_rows:
        full = f"{schema}.{table}" if schema else table
        for idv in ids:
            cur.execute(f"SELECT count(*) FROM {schema}.\"{table}\" WHERE \"{column}\" = %s", (idv,))
            c = cur.fetchone()[0]
            if c:
                results.append((full, column, idv, c, constraint))
    cur.close()
    return results


def find_triggers(conn, table_name):
    q = "SELECT trigger_schema, trigger_name, event_manipulation, action_statement FROM information_schema.triggers WHERE event_object_table = %s;"
    cur = conn.cursor()
    cur.execute(q, (table_name,))
    rows = cur.fetchall()
    cur.close()
    return rows


def check_sequences(conn, table_name, column_name):
    cur = conn.cursor()
    try:
        cur.execute("SELECT pg_get_serial_sequence(%s,%s);", (table_name, column_name))
        seq = cur.fetchone()[0]
    except Exception:
        seq = None
    cur.close()
    return seq


def generate_backup_sql(output_path, conn, ids, stocks, prix):
    lines = []
    # Tables to backup
    tables = ['tb_prix', 'tb_log_stock', 'tb_inventaire', 'tb_stock', 'tb_article']
    lines.append('-- Backup affected rows')
    for t in tables:
        bname = f'deletion_backup_{t}'
        lines.append(f'CREATE TABLE IF NOT EXISTS {bname} (LIKE {t} INCLUDING ALL);')
    # Insert statements
    if ids:
        id_list = ','.join(ids)
        for t in tables:
            lines.append(f'INSERT INTO deletion_backup_{t} SELECT * FROM {t} WHERE idarticle IN ({id_list});')
    if stocks:
        stock_list = ','.join(stocks)
        for t in ['tb_log_stock','tb_inventaire','tb_stock']:
            lines.append(f'INSERT INTO deletion_backup_{t} SELECT * FROM {t} WHERE idstock IN ({stock_list});')
    if prix:
        prix_list = ','.join(prix)
        lines.append(f'INSERT INTO deletion_backup_tb_prix SELECT * FROM tb_prix WHERE idprix IN ({prix_list});')

    with open(output_path, 'w', encoding='utf-8') as f:
        f.write('\n'.join(lines))


def main():
    base = Path(__file__).resolve().parent
    csv_path = base / 'match_zero_stock_cascade.csv'
    report_path = base / 'verification_report.txt'
    backup_sql = base / 'backup_affected_rows.sql'

    ids, stocks, prix = load_candidates(csv_path)

    conn = connect()

    report_lines = []
    report_lines.append(f'Candidates: idarticle={len(ids)}, idstock={len(stocks)}, idprix={len(prix)}')

    # check foreign keys referencing tb_article.idarticle
    fks = find_fk_references(conn, 'tb_article', 'idarticle')
    report_lines.append('Foreign keys referencing tb_article.idarticle:')
    for row in fks:
        report_lines.append('  ' + ','.join(map(str, row)))

    refs = count_refs_for_ids(conn, fks, ids)
    report_lines.append('Non-zero reference counts for idarticle (table,column,id,count,constraint):')
    for r in refs:
        report_lines.append('  ' + ','.join(map(str, r)))

    # triggers
    tr = find_triggers(conn, 'tb_article')
    report_lines.append('Triggers on tb_article:')
    for t in tr:
        report_lines.append('  ' + ','.join(map(str, t)))

    # sequences check for common tables columns
    seq_checks = []
    for t in ['tb_article','tb_stock','tb_prix','tb_inventaire','tb_log_stock']:
        seq = check_sequences(conn, t, 'id' + t.split('_')[-1])
        seq_checks.append((t, 'id' + t.split('_')[-1], seq))
    report_lines.append('Sequence ownership checks (pg_get_serial_sequence):')
    for s in seq_checks:
        report_lines.append('  ' + ','.join([str(x) for x in s]))

    # generate backup SQL
    generate_backup_sql(backup_sql, conn, ids, stocks, prix)
    report_lines.append(f'Backup SQL written to {backup_sql}')

    conn.close()

    with open(report_path, 'w', encoding='utf-8') as f:
        f.write('\n'.join(report_lines))

    print(f'Wrote verification report to {report_path}')


if __name__ == '__main__':
    main()
