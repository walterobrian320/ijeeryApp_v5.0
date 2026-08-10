from __future__ import annotations

import csv
import re
import unicodedata
from pathlib import Path
from typing import Dict, List, Tuple

ROOT = Path(__file__).resolve().parent.parent
SOURCE = ROOT / "data-process" / "data-centre" / "ARTICLE_20260810151749.csv"
OUTPUT = ROOT / "sql" / "legacy_articles_import_20260810151749.sql"
ISSUES_OUTPUT = ROOT / "reports" / "articles_import_issues_20260810151749.csv"


def normalize_text(value: str) -> str:
    text = (value or "").strip()
    text = re.sub(r"\s+", " ", text)
    return text


def normalize_key(value: str) -> str:
    text = normalize_text(value)
    text = unicodedata.normalize("NFKD", text)
    text = text.encode("ascii", "ignore").decode("ascii")
    return text.upper()


def parse_number(value: str) -> float | None:
    text = normalize_text(value).replace(",", ".")
    if not text:
        return None
    match = re.search(r"([-+]?(?:\d+(?:\.\d*)?|\.\d+))", text)
    if not match:
        return None
    return float(match.group(1))


def parse_weight(value: str) -> float | None:
    parsed = parse_number(value)
    return parsed if parsed is not None else None


def escape_sql(value: str) -> str:
    return value.replace("'", "''")


def parse_rows(path: Path) -> List[dict]:
    with path.open("r", encoding="utf-8", errors="replace", newline="") as handle:
        rows = list(csv.DictReader(handle, delimiter=";"))
    return rows


def build_sql(rows: List[dict]) -> Tuple[str, List[dict]]:
    category_ids: Dict[str, int] = {}
    next_category_id = 1

    article_ids: Dict[str, int] = {}
    next_article_id = 1

    unit_counter = 1

    grouped: Dict[Tuple[str, str], List[dict]] = {}
    for row in rows:
        designation = normalize_text(row.get("DESIGNATION", ""))
        category = normalize_text(row.get("CATEGORIE", "")) or "DIVERS"
        if not designation:
            continue
        group_key = (normalize_key(designation), normalize_key(category))
        grouped.setdefault(group_key, []).append(row)

    lines: List[str] = []
    issues: List[dict] = []

    lines.append("-- Import legacy articles from ARTICLE_20260810151749.csv")
    lines.append("BEGIN;")
    lines.append("")
    lines.append("SET search_path TO public, pg_catalog;")
    lines.append("")

    category_names: List[Tuple[str, str]] = []
    for (designation_key, category_key), group in sorted(grouped.items(), key=lambda item: (item[0][0], item[0][1])):
        designation = normalize_text(group[0].get("DESIGNATION", ""))
        category_name = normalize_text(group[0].get("CATEGORIE", "")) or "DIVERS"
        category_key_norm = normalize_key(category_name)
        if category_key_norm not in category_ids:
            category_ids[category_key_norm] = next_category_id
            next_category_id += 1
            category_names.append((category_key_norm, category_name))

    for category_key_norm, category_name in sorted(category_names, key=lambda item: category_ids[item[0]]):
        category_id = category_ids[category_key_norm]
        lines.append(
            f"INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES ({category_id}, '{escape_sql(category_name)}', 0);"
        )

    lines.append("")

    for (designation_key, category_key), group in sorted(grouped.items(), key=lambda item: (item[0][0], item[0][1])):
        designation = normalize_text(group[0].get("DESIGNATION", ""))
        category_name = normalize_text(group[0].get("CATEGORIE", "")) or "DIVERS"
        category_key_norm = normalize_key(category_name)
        category_id = category_ids[category_key_norm]
        article_key = (normalize_key(designation), category_key_norm)
        article_id = article_ids.get(article_key)
        if article_id is None:
            article_id = next_article_id
            article_ids[article_key] = article_id
            next_article_id += 1

        lines.append(
            f"INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES ({article_id}, '{escape_sql(designation)}', {category_id}, 0, 0, 0, 1);"
        )

        for index, row in enumerate(group):
            unit_name = normalize_text(row.get("UNITE", "")) or "UNITE"
            quantity_value = parse_number(row.get("QUANTITE", ""))
            weight_value = parse_weight(row.get("POIDS", ""))

            if quantity_value is None:
                qtunite = 1.0
                issues.append({
                    "designation": designation,
                    "issue": "QUANTITE_MISSING",
                    "unit": unit_name,
                    "message": "quantité introuvable, valeur par défaut 1.0 conservée"
                })
            else:
                qtunite = quantity_value

            if index == 0 and quantity_value is not None and quantity_value != 1.0:
                issues.append({
                    "designation": designation,
                    "issue": "FIRST_ROW_QUANTITY",
                    "unit": unit_name,
                    "message": f"première unité avec quantité {quantity_value} au lieu de 1"
                })

            lines.append(
                f"INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES ({unit_counter}, '{category_id:03d}{article_id:05d}{index:02d}', {article_id}, '{escape_sql(unit_name.upper())}', {index}, {qtunite:.2f}, {weight_value if weight_value is not None else 'NULL'}, 0);"
            )
            unit_counter += 1

        lines.append("")

    lines.append("SELECT setval(pg_get_serial_sequence('tb_categoriearticle','idca'), COALESCE((SELECT MAX(idca) FROM tb_categoriearticle), 0), true);")
    lines.append("SELECT setval(pg_get_serial_sequence('tb_article','idarticle'), COALESCE((SELECT MAX(idarticle) FROM tb_article), 0), true);")
    lines.append("SELECT setval(pg_get_serial_sequence('tb_unite','idunite'), COALESCE((SELECT MAX(idunite) FROM tb_unite), 0), true);")
    lines.append("")
    lines.append("COMMIT;")
    return "\n".join(lines) + "\n", issues


def write_issues(path: Path, issues: List[dict]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    if not issues:
        path.write_text("designation,issue,unit,message\n", encoding="utf-8")
        return
    with path.open("w", encoding="utf-8", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=["designation", "issue", "unit", "message"])
        writer.writeheader()
        writer.writerows(issues)


def main() -> None:
    if not SOURCE.exists():
        raise FileNotFoundError(f"Source file not found: {SOURCE}")

    rows = parse_rows(SOURCE)
    if not rows:
        raise ValueError("No rows found in source file")

    sql, issues = build_sql(rows)
    OUTPUT.write_text(sql, encoding="utf-8")
    write_issues(ISSUES_OUTPUT, issues)

    print(f"Parsed {len(rows)} rows from {SOURCE}")
    print(f"Wrote SQL to {OUTPUT}")
    print(f"Wrote issues report to {ISSUES_OUTPUT}")


if __name__ == "__main__":
    main()
