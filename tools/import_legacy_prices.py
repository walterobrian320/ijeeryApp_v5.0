from __future__ import annotations

import re
import unicodedata
from pathlib import Path
from typing import Dict, List, Tuple

ROOT = Path(__file__).resolve().parent.parent
PRICE_SOURCE = ROOT / "data-process" / "data-mahambolo" / "Prix_20260807155443.csv"
ARTICLE_SQL = ROOT / "sql" / "legacy_articles_import_mahambolo.sql"
OUTPUT = ROOT / "sql" / "legacy_prices_import_mahambolo.sql"


def normalize_text(value: str) -> str:
    if value is None:
        return ""
    text = str(value).strip()
    text = re.sub(r"\s+", " ", text)
    text = unicodedata.normalize("NFKD", text)
    text = "".join(ch for ch in text if not unicodedata.combining(ch))
    return text.lower()


def parse_price_value(value: str) -> int | None:
    if value is None:
        return None
    text = str(value).strip()
    digits = re.sub(r"\D", "", text)
    return int(digits) if digits else None


def parse_date(value: str):
    text = str(value or "").strip()
    if not text:
        return "CURRENT_TIMESTAMP"
    try:
        day, month, year = [int(part) for part in text.split("/")]
        return f"TO_TIMESTAMP('{year:04d}-{month:02d}-{day:02d} 00:00:00', 'YYYY-MM-DD HH24:MI:SS')"
    except Exception:
        return "CURRENT_TIMESTAMP"


def parse_article_mapping(sql_path: Path) -> Tuple[Dict[str, int], Dict[Tuple[int, str], int]]:
    text = sql_path.read_text(encoding="utf-8", errors="replace")
    article_pattern = re.compile(r"INSERT INTO tb_article \(idarticle, designation, .*?\) VALUES \((\d+),\s*'((?:''|[^'])*)'", re.IGNORECASE)
    unit_pattern = re.compile(
        r"INSERT INTO tb_unite \(idunite, codearticle, idarticle, designationunite, .*?\) VALUES \((\d+),\s*'[^']*',\s*(\d+),\s*'((?:''|[^'])*)'",
        re.IGNORECASE,
    )

    article_map: Dict[str, int] = {}
    for match in article_pattern.finditer(text):
        article_id = int(match.group(1))
        designation = match.group(2).replace("''", "'")
        article_map[normalize_text(designation)] = article_id

    unit_map: Dict[Tuple[int, str], int] = {}
    for match in unit_pattern.finditer(text):
        unit_id = int(match.group(1))
        article_id = int(match.group(2))
        unit_name = match.group(3).replace("''", "'")
        unit_map[(article_id, normalize_text(unit_name))] = unit_id

    return article_map, unit_map


def parse_price_rows(path: Path) -> List[Tuple[str, str, int | None, str]]:
    rows: List[Tuple[str, str, int | None, str]] = []
    text = path.read_text(encoding="utf-8", errors="replace")
    lines = [line for line in text.splitlines() if line.strip()]
    if not lines:
        return rows
    for line in lines[1:]:
        cells = [cell.strip() for cell in line.split(";")]
        if len(cells) < 5:
            continue
        designation = cells[1] if len(cells) > 1 else ""
        unite = cells[2] if len(cells) > 2 else ""
        prix = parse_price_value(cells[3] if len(cells) > 3 else "")
        date = cells[4] if len(cells) > 4 else ""
        rows.append((designation, unite, prix, date))
    return rows


def build_sql(rows: List[Tuple[str, str, int | None, str]], article_map: Dict[str, int], unit_map: Dict[Tuple[int, str], int]) -> str:
    lines: List[str] = []
    lines.append("-- Migration des prix legacy vers tb_prix")
    lines.append("BEGIN;")
    lines.append("")
    lines.append("SET search_path TO public, pg_catalog;")
    lines.append("")

    inserted = 0
    skipped_price = 0
    skipped_article = 0
    skipped_unit = 0

    for designation, unite, prix, date_value in rows:
        if prix is None:
            skipped_price += 1
            continue

        article_id = article_map.get(normalize_text(designation))
        if article_id is None:
            skipped_article += 1
            continue

        unit_id = unit_map.get((article_id, normalize_text(unite)))
        if unit_id is None:
            skipped_unit += 1
            continue

        date_sql = parse_date(date_value)
        lines.append(
            f"INSERT INTO tb_prix (idarticle, idunite, prix, dateregistre, iduser, deleted) "
            f"VALUES ({article_id}, {unit_id}, {prix}, {date_sql}, 1, 1);"
        )
        inserted += 1

    lines.append("")
    lines.append("SELECT setval(pg_get_serial_sequence('tb_prix','id'), COALESCE((SELECT MAX(id) FROM tb_prix), 0), true);")
    lines.append("")
    lines.append("COMMIT;")

    header = [
        f"-- Inserted rows: {inserted}",
        f"-- Skipped rows (invalid price): {skipped_price}",
        f"-- Skipped rows (missing article): {skipped_article}",
        f"-- Skipped rows (missing unit): {skipped_unit}",
    ]
    return "\n".join(header + [""] + lines) + "\n"


def main() -> None:
    if not PRICE_SOURCE.exists():
        raise FileNotFoundError(f"Price file not found: {PRICE_SOURCE}")
    if not ARTICLE_SQL.exists():
        raise FileNotFoundError(f"Article import SQL not found: {ARTICLE_SQL}")

    article_map, unit_map = parse_article_mapping(ARTICLE_SQL)
    rows = parse_price_rows(PRICE_SOURCE)
    sql = build_sql(rows, article_map, unit_map)
    OUTPUT.write_text(sql, encoding="utf-8")
    print(f"Parsed {len(rows)} price rows")
    print(f"Wrote {OUTPUT}")


if __name__ == "__main__":
    main()
