from __future__ import annotations

import csv
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SOURCE = ROOT / "data-process" / "data-tavaratra" / "Client_20260810151823.csv"
OUTPUT = ROOT / "sql" / "legacy_clients_import_20260810151823.sql"


def clean_value(value: str | None) -> str:
    if value is None:
        return "-"
    text = str(value).strip()
    return text if text else "-"


def escape_sql(value: str) -> str:
    return value.replace("'", "''")


def main() -> None:
    if not SOURCE.exists():
        raise FileNotFoundError(f"Client source not found: {SOURCE}")

    lines = []
    lines.append("-- Import des clients legacy depuis Client_20260810151823.csv")
    lines.append("BEGIN;")
    lines.append("")
    lines.append("SET search_path TO public, pg_catalog;")
    lines.append("")
    lines.append("INSERT INTO tb_typeclient (idtypeclient, designationtypeclient)")
    lines.append("SELECT 2, 'A Crédit' WHERE NOT EXISTS (SELECT 1 FROM tb_typeclient WHERE idtypeclient = 2);")
    lines.append("")

    inserted = 0
    parsed = 0
    with SOURCE.open("r", encoding="utf-8-sig", errors="replace", newline="") as handle:
        reader = csv.DictReader(handle, delimiter=";")
        for row in reader:
            parsed += 1
            nom = clean_value(row.get("NOM & PRENOMS"))
            if not nom or nom == "-":
                continue
            contact = clean_value(row.get("CONTACT"))
            contact_value = contact if contact != "" and contact != "-" else "-"
            lines.append(
                "INSERT INTO tb_client (nomcli, contactcli, adressecli, nifcli, statcli, cifcli, credit, idtypeclient, dateregistre, blocked, deleted) "
                f"VALUES ('{escape_sql(nom)}', '{escape_sql(contact_value)}', '-', '-', '-', '-', 100000000, 2, CURRENT_TIMESTAMP, 0, 0);"
            )
            inserted += 1

    lines.append("")
    lines.append("COMMIT;")

    OUTPUT.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"Parsed {parsed} rows from {SOURCE}")
    print(f"Inserted {inserted} clients into {OUTPUT}")


if __name__ == "__main__":
    main()
