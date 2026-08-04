from __future__ import annotations

import csv
import re
from pathlib import Path
from typing import Dict, List, Tuple

ROOT = Path(__file__).resolve().parent.parent
SOURCE = ROOT / "data-process" / "ARTICLE_20260804090116.xls"
OUTPUT = ROOT / "sql" / "legacy_articles_import.sql"


def normalize_text(value: str) -> str:
    return re.sub(r"\s+", " ", value or "").strip()


def parse_number(value: str) -> float:
    if value is None:
        return 0.0
    text = normalize_text(value).replace(",", ".")
    match = re.match(r"[-+]?\d+(?:\.\d+)?", text)
    if not match:
        return 0.0
    return float(match.group(0))


def parse_rows(path: Path) -> List[dict]:
    with path.open("r", encoding="utf-8", errors="replace", newline="") as handle:
        rows = list(csv.reader(handle, delimiter="\t"))

    if not rows:
        return []

    header = [normalize_text(c) for c in rows[0]]
    data_rows: List[dict] = []
    for row in rows[1:]:
        if not row:
            continue
        if not any(cell.strip() for cell in row):
            continue
        values = [cell.strip() for cell in row]
        # The legacy export has an extra empty trailing column; keep only the first 7 fields.
        row_data = {header[i]: values[i] if i < len(values) else "" for i in range(min(len(header), 7))}
        data_rows.append(row_data)
    return data_rows


def build_sql(rows: List[dict]) -> str:
    # Start from category 1 if the seed already contains DIVERS; otherwise create it at idca = 1.
    category_ids: Dict[str, int] = {"DIVERS": 1}
    next_category_id = 2

    article_ids: Dict[str, int] = {}
    next_article_id = 1

    lines: List[str] = []
    lines.append("-- Migration des articles legacy vers la nouvelle structure")
    lines.append("BEGIN;")
    lines.append("")
    lines.append("SET search_path TO public, pg_catalog;")
    lines.append("")

    grouped: Dict[str, List[dict]] = {}
    for row in rows:
        legacy_id = normalize_text(row.get("ID", ""))
        if not legacy_id:
            continue
        grouped.setdefault(legacy_id, []).append(row)

    # Categories first
    categories_seen: List[str] = []
    for legacy_id, group in grouped.items():
        category_name = normalize_text(group[0].get("CATEGORIE", "DIVERS")) or "DIVERS"
        if category_name not in category_ids:
            category_ids[category_name] = next_category_id
            next_category_id += 1
            categories_seen.append(category_name)

    for category_name, category_id in sorted(category_ids.items(), key=lambda item: item[1]):
        if category_name == "DIVERS" and category_id == 1:
            lines.append(f"INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES ({category_id}, '{category_name.replace("'", "''")}', 0);")
        else:
            lines.append(f"INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES ({category_id}, '{category_name.replace("'", "''")}', 0);")

    lines.append("")

    # Articles + units
    unit_counter = 1
    for legacy_id, group in sorted(grouped.items(), key=lambda item: int(item[0]) if item[0].isdigit() else 10**9):
        first_row = group[0]
        designation = normalize_text(first_row.get("DESIGNATION", "")) or f"ARTICLE_{legacy_id}"
        category_name = normalize_text(first_row.get("CATEGORIE", "DIVERS")) or "DIVERS"
        category_id = category_ids[category_name]

        article_id = article_ids.get(legacy_id)
        if article_id is None:
            article_id = next_article_id
            article_ids[legacy_id] = article_id
            next_article_id += 1

        lines.append(
            f"INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) "
            f"VALUES ({article_id}, '{designation.replace("'", "''")}', {category_id}, 0, 0, 0, 1);"
        )

        for index, row in enumerate(group):
            unit_name = normalize_text(row.get("UNITE", "")) or "UNITE"
            quantity = parse_number(row.get("QUANTITE", "0"))
            weight = parse_number(row.get("POIDS", "0"))
            niveau = index
            codearticle = f"{category_id:03d}{article_id:05d}{niveau:02d}"
            lines.append(
                f"INSERT INTO tb_unite (idunite, idarticle, designationunite, niveau, qtunite, poids, codearticle, deleted) "
                f"VALUES ({unit_counter}, {article_id}, '{unit_name.replace("'", "''")}', {niveau}, {quantity:.2f}, {weight:.2f}, '{codearticle}', 0);"
            )
            unit_counter += 1

        lines.append("")

    # Sequence synchronization for a fresh database
    lines.append("SELECT setval(pg_get_serial_sequence('tb_categoriearticle','idca'), COALESCE((SELECT MAX(idca) FROM tb_categoriearticle), 0), true);")
    lines.append("SELECT setval(pg_get_serial_sequence('tb_article','idarticle'), COALESCE((SELECT MAX(idarticle) FROM tb_article), 0), true);")
    lines.append("SELECT setval(pg_get_serial_sequence('tb_unite','idunite'), COALESCE((SELECT MAX(idunite) FROM tb_unite), 0), true);")
    lines.append("")
    lines.append("COMMIT;")
    return "\n".join(lines) + "\n"


def main() -> None:
    if not SOURCE.exists():
        raise FileNotFoundError(f"Source file not found: {SOURCE}")

    rows = parse_rows(SOURCE)
    if not rows:
        raise ValueError("No rows found in legacy import file")

    sql = build_sql(rows)
    OUTPUT.write_text(sql, encoding="utf-8")
    print(f"Parsed {len(rows)} legacy rows")
    print(f"Wrote {OUTPUT}")


if __name__ == "__main__":
    main()
