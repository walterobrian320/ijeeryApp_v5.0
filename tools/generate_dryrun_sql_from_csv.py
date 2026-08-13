import csv
from pathlib import Path

CSV_PATH = Path('tools/match_zero_stock_cascade.csv')
OUT_PATH = Path('tools/delete_zero_stock_dryrun.sql')


def write_selects(f, codearticle, idarticle, idunite):
    f.write("-- Counts and samples for codearticle=%s\n" % codearticle)
    f.write("SELECT 'tb_stock' AS table_name, COUNT(*) FROM tb_stock WHERE codearticle='%s';\n" % codearticle)
    f.write("SELECT 'tb_inventaire' AS table_name, COUNT(*) FROM tb_inventaire WHERE codearticle='%s';\n" % codearticle)
    f.write("SELECT 'tb_log_stock' AS table_name, COUNT(*) FROM tb_log_stock WHERE codearticle='%s';\n" % codearticle)
    if idarticle and idunite:
        f.write("SELECT 'tb_prix' AS table_name, COUNT(*) FROM tb_prix WHERE idarticle=%s AND idunite=%s;\n" % (idarticle, idunite))
    f.write("\n-- Sample rows (limit 5)\n")
    f.write("SELECT * FROM tb_stock WHERE codearticle='%s' LIMIT 5;\n" % codearticle)
    f.write("SELECT * FROM tb_inventaire WHERE codearticle='%s' LIMIT 5;\n" % codearticle)
    f.write("SELECT * FROM tb_log_stock WHERE codearticle='%s' LIMIT 5;\n" % codearticle)
    if idarticle and idunite:
        f.write("SELECT * FROM tb_prix WHERE idarticle=%s AND idunite=%s LIMIT 5;\n" % (idarticle, idunite))
    f.write("\n")


def main():
    if not CSV_PATH.exists():
        raise SystemExit(f'Missing CSV: {CSV_PATH}')

    with CSV_PATH.open(newline='', encoding='utf-8') as csvfile:
        reader = csv.DictReader(csvfile)
        with OUT_PATH.open('w', encoding='utf-8', newline='') as out:
            out.write('-- Dry-run SQL: counts and samples for proposed deletions\n')
            out.write('-- Review results before running any DELETE statements.\n\n')

            for i, row in enumerate(reader, start=1):
                codearticle = row.get('codearticle', '').strip()
                idarticle = row.get('idarticle', '').strip()
                idunite = row.get('idunite', '').strip()
                name = row.get('csv_name', '').strip()
                unit = row.get('csv_unit', '').strip()

                out.write(f"-- Article {i}: {name} | Unit: {unit} | codearticle={codearticle} idarticle={idarticle} idunite={idunite}\n")
                write_selects(out, codearticle, idarticle, idunite)

    print(f'Wrote dry-run SQL to {OUT_PATH}')


if __name__ == '__main__':
    main()
