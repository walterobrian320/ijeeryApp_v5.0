import csv
from pathlib import Path


CSV_PATH = Path('tools/match_zero_stock_cascade.csv')
OUT_PATH = Path('tools/delete_zero_stock_transactional.sql')


def write_clauses(f, clauses_str):
    if not clauses_str:
        return
    # clauses are semicolon-separated statements in the CSV field
    for part in clauses_str.split(';'):
        p = part.strip()
        if not p:
            continue
        # ensure statement ends with semicolon
        if not p.endswith(';'):
            f.write(p + ';\n')
        else:
            f.write(p + '\n')


def main():
    if not CSV_PATH.exists():
        raise SystemExit(f'Missing CSV: {CSV_PATH}')

    with CSV_PATH.open(newline='', encoding='utf-8') as csvfile:
        reader = csv.DictReader(csvfile)
        with OUT_PATH.open('w', encoding='utf-8', newline='') as out:
            out.write('-- Transactional deletion script generated from tools/match_zero_stock_cascade.csv\n')
            out.write('-- Backup tables will be created if missing. Review before running.\n\n')

            out.write("-- Create backup tables (structure copied from original tables)\n")
            out.write('CREATE TABLE IF NOT EXISTS deletion_backup_tb_stock (LIKE tb_stock INCLUDING ALL);\n')
            out.write('CREATE TABLE IF NOT EXISTS deletion_backup_tb_inventaire (LIKE tb_inventaire INCLUDING ALL);\n')
            out.write('CREATE TABLE IF NOT EXISTS deletion_backup_tb_log_stock (LIKE tb_log_stock INCLUDING ALL);\n')
            out.write('CREATE TABLE IF NOT EXISTS deletion_backup_tb_prix (LIKE tb_prix INCLUDING ALL);\n\n')

            for i, row in enumerate(reader, start=1):
                name = row.get('csv_name', '').strip()
                unit = row.get('csv_unit', '').strip()
                idarticle = row.get('idarticle', '').strip()
                idunite = row.get('idunite', '').strip()
                codearticle = row.get('codearticle', '').strip()
                stock_clauses = row.get('stock_delete_clauses', '') or ''
                inventaire_clauses = row.get('inventaire_delete_clauses', '') or ''
                log_clauses = row.get('log_delete_clauses', '') or ''
                price_clauses = row.get('price_delete_clauses', '') or ''

                out.write(f"-- Article {i}: {name} | Unit: {unit} | idarticle={idarticle} idunite={idunite} codearticle={codearticle}\n")

                out.write("DO $$\nBEGIN\n")
                out.write("  -- Safety pre-check: ensure there are no tb_stock rows with non-zero entries for this codearticle\n")
                out.write(f"  IF (SELECT COUNT(*) FROM tb_stock WHERE codearticle='{codearticle}') > 0 THEN\n")
                out.write(f"    RAISE NOTICE 'Skipping deletion for codearticle={codearticle}: % rows in tb_stock', (SELECT COUNT(*) FROM tb_stock WHERE codearticle='{codearticle}');\n")
                out.write("  ELSE\n")
                out.write("    -- Backup matching rows before deleting\n")
                out.write(f"    INSERT INTO deletion_backup_tb_log_stock SELECT * FROM tb_log_stock WHERE codearticle='{codearticle}';\n")
                out.write(f"    INSERT INTO deletion_backup_tb_inventaire SELECT * FROM tb_inventaire WHERE codearticle='{codearticle}';\n")
                out.write(f"    INSERT INTO deletion_backup_tb_stock SELECT * FROM tb_stock WHERE codearticle='{codearticle}';\n")
                if idarticle and idunite:
                    out.write(f"    INSERT INTO deletion_backup_tb_prix SELECT * FROM tb_prix WHERE idarticle={idarticle} AND idunite={idunite};\n")

                out.write("    -- Perform deletes in safe order: prix -> log_stock -> inventaire -> stock\n")
                # write price clauses first
                write_clauses(out, price_clauses)
                write_clauses(out, log_clauses)
                write_clauses(out, inventaire_clauses)
                write_clauses(out, stock_clauses)

                out.write("  END IF;\nEND$$;\n\n")

    print(f'Wrote SQL to {OUT_PATH}')


if __name__ == '__main__':
    main()
