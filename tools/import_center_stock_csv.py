from __future__ import annotations

import csv
import re
import unicodedata
from pathlib import Path
from typing import Dict, List, Tuple

ROOT = Path(__file__).resolve().parent.parent
SOURCE = ROOT / "data-process" / "data-centre" / "Stock_20260810173856.csv"
ARTICLE_SQL = ROOT / "sql" / "legacy_articles_import_20260810151749.sql"
OUTPUT = ROOT / "sql" / "legacy_stock_import_20260810173856.sql"
ISSUES_OUTPUT = ROOT / "reports" / "stock_import_issues_20260810173856.csv"


def normalize_text(value: str) -> str:
    if value is None:
        return ""
    text = str(value).strip()
    text = re.sub(r"\s+", " ", text)
    text = unicodedata.normalize("NFKD", text)
    text = "".join(ch for ch in text if not unicodedata.combining(ch))
    text = text.lower()
    text = re.sub(r"[^a-z0-9]+", " ", text)
    return re.sub(r"\s+", " ", text).strip()


def parse_decimal(value: str) -> float:
    if value is None:
        return 0.0
    text = str(value).strip()
    if not text or text in {"-", "--"}:
        return 0.0
    text = text.replace(" ", "").replace("\u00a0", "")
    text = text.replace(".", "").replace(",", ".")
    try:
        return float(text)
    except ValueError:
        return 0.0


def parse_article_mapping(sql_path: Path) -> Tuple[Dict[str, int], Dict[Tuple[int, str], Dict[str, object]]]:
    text = sql_path.read_text(encoding="utf-8", errors="replace")

    article_pattern = re.compile(
        r"INSERT INTO tb_article \(idarticle, designation, .*?\) VALUES \((\d+),\s*'((?:''|[^'])*)'",
        re.IGNORECASE,
    )
    unit_pattern = re.compile(
        r"INSERT INTO tb_unite \(idunite, codearticle, idarticle, designationunite, .*?\) VALUES \((\d+),\s*'((?:''|[^'])*)',\s*(\d+),\s*'((?:''|[^'])*)'",
        re.IGNORECASE,
    )

    article_map: Dict[str, int] = {}
    for match in article_pattern.finditer(text):
        article_id = int(match.group(1))
        designation = match.group(2).replace("''", "'")
        article_map[normalize_text(designation)] = article_id

    unit_map: Dict[Tuple[int, str], Dict[str, object]] = {}
    for match in unit_pattern.finditer(text):
        unit_id = int(match.group(1))
        codearticle = match.group(2).replace("''", "'")
        article_id = int(match.group(3))
        unit_name = match.group(4).replace("''", "'")
        unit_map[(article_id, normalize_text(unit_name))] = {
            "idunite": unit_id,
            "codearticle": codearticle,
        }

    return article_map, unit_map


def parse_stock_rows(path: Path) -> List[Tuple[str, str, float]]:
    rows: List[Tuple[str, str, float]] = []
    with path.open("r", encoding="utf-8-sig", errors="replace", newline="") as handle:
        reader = csv.DictReader(handle, delimiter=";")
        for row in reader:
            designation = (row.get("DESIGNATION") or "").strip()
            unite = (row.get("UNITE") or "").strip()
            qty = parse_decimal(row.get("MANANARA CENTRE") or "")
            rows.append((designation, unite, qty))
    return rows


def write_issues(path: Path, issues: List[Dict[str, str]]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=["designation", "unit", "issue", "message"])
        writer.writeheader()
        writer.writerows(issues)


def build_sql(rows: List[Tuple[str, str, float]], article_map: Dict[str, int], unit_map: Dict[Tuple[int, str], Dict[str, object]]) -> Tuple[str, List[Dict[str, str]]]:
    lines: List[str] = []
    issues: List[Dict[str, str]] = []

    lines.append("-- Import du stock initial depuis Stock_20260810173856.csv")
    lines.append("BEGIN;")
    lines.append("")
    lines.append("SET search_path TO public, pg_catalog;")
    lines.append("")
    lines.append("INSERT INTO tb_magasin (idmag, designationmag, adressemag, livraison, deleted, livraison_auto_client)")
    lines.append("SELECT 1, 'Depot vente A', '', 0, 0, 0 WHERE NOT EXISTS (SELECT 1 FROM tb_magasin WHERE idmag = 1);")
    lines.append("INSERT INTO tb_magasin (idmag, designationmag, adressemag, livraison, deleted, livraison_auto_client)")
    lines.append("SELECT 2, 'Depot Antanankoro', '', 0, 0, 0 WHERE NOT EXISTS (SELECT 1 FROM tb_magasin WHERE idmag = 2);")
    lines.append("INSERT INTO tb_magasin (idmag, designationmag, adressemag, livraison, deleted, livraison_auto_client)")
    lines.append("SELECT 3, 'Depot Stock C', '', 0, 0, 0 WHERE NOT EXISTS (SELECT 1 FROM tb_magasin WHERE idmag = 3);")
    lines.append("")

    seen_designations = set()
    selected_rows: List[Tuple[str, str, float]] = []
    for designation, unite, qty in rows:
        key = normalize_text(designation)
        if not key:
            continue
        if key in seen_designations:
            issues.append({
                "designation": designation,
                "unit": unite,
                "issue": "DUPLICATE_DESIGNATION",
                "message": "ligne ignorée car une première occurrence a déjà été retenue pour cette désignation",
            })
            continue
        seen_designations.add(key)
        selected_rows.append((designation, unite, qty))

    processed = 0
    skipped = 0
    inserted_inventaire = 0
    inserted_stock = 0
    inserted_log = 0

    for designation, unite, qty in selected_rows:
        article_key = normalize_text(designation)
        article_id = article_map.get(article_key)
        if article_id is None:
            skipped += 1
            issues.append({
                "designation": designation,
                "unit": unite,
                "issue": "MISSING_ARTICLE",
                "message": "article non trouvé dans le script d'import des articles",
            })
            continue

        unit_info = unit_map.get((article_id, normalize_text(unite)))
        if unit_info is None:
            skipped += 1
            issues.append({
                "designation": designation,
                "unit": unite,
                "issue": "MISSING_UNIT",
                "message": "unité non trouvée pour cet article",
            })
            continue

        codearticle = unit_info["codearticle"]
        processed += 1
        observation = "Inventaire - report ancien version Ijeery"
        now = "CURRENT_TIMESTAMP"
        mag_id = 1

        lines.append(
            f"INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle) VALUES ({qty:.15g}, '{observation}', {now}, 1, {mag_id}, '{codearticle}');"
        )
        lines.append(
            f"INSERT INTO tb_stock (idmag, qtstock, qtalert, deleted, codearticle) VALUES ({mag_id}, {qty:.15g}, 0, 0, '{codearticle}');"
        )
        lines.append(
            f"INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle) VALUES ({mag_id}, 0, {qty:.15g}, {now}, 1, 'Entrée en stock par inventaire de départ', '{codearticle}');"
        )
        inserted_inventaire += 1
        inserted_stock += 1
        inserted_log += 1

    lines.append("")
    lines.append("-- Fin du script")
    lines.append("COMMIT;")

    header = [
        f"-- Selected rows: {len(selected_rows)}",
        f"-- Processed rows: {processed}",
        f"-- Skipped rows: {skipped}",
        f"-- Duplicate rows ignored: {len(rows) - len(selected_rows)}",
        f"-- Inventory inserts: {inserted_inventaire}",
        f"-- Stock inserts: {inserted_stock}",
        f"-- Log inserts: {inserted_log}",
    ]
    return "\n".join(header + [""] + lines) + "\n", issues


def main() -> None:
    if not SOURCE.exists():
        raise FileNotFoundError(f"Stock source not found: {SOURCE}")
    if not ARTICLE_SQL.exists():
        raise FileNotFoundError(f"Article SQL not found: {ARTICLE_SQL}")

    article_map, unit_map = parse_article_mapping(ARTICLE_SQL)
    rows = parse_stock_rows(SOURCE)
    sql, issues = build_sql(rows, article_map, unit_map)
    OUTPUT.write_text(sql, encoding="utf-8")
    write_issues(ISSUES_OUTPUT, issues)

    print(f"Parsed {len(rows)} stock rows from {SOURCE}")
    print(f"Wrote SQL to {OUTPUT}")
    print(f"Wrote issues report to {ISSUES_OUTPUT}")


if __name__ == "__main__":
    main()
