from __future__ import annotations

from dataclasses import dataclass
from typing import Dict, Any

from db import load_db_config
from stock_manager_update_latest import StockManagerUpdateLatest


def format_nombre_auto(nombre: Any) -> str:
    """Format auto: 2 décimales sauf si ,00 => entier.

    - séparateur milliers: '.'
    - séparateur décimal: ','
    """
    try:
        x = float(nombre or 0.0)
        if abs(x - round(x)) < 1e-9:
            return f"{int(round(x)):,}".replace(",", ".")
        return (
            f"{x:,.2f}"
            .replace(",", " ")
            .replace(".", ",")
            .replace(" ", ".")
        )
    except Exception:
        return "0"


def read_db_config() -> Dict[str, Any]:
    """Compatibilité : délègue à db.load_db_config()."""
    cfg = load_db_config()
    if cfg is None:
        raise FileNotFoundError("config.json introuvable ou invalide")
    return cfg


@dataclass(frozen=True)
class StockSnapshot:
    """Snapshot des stocks (en base) pour 1 magasin, + facteurs de conversion.

    - Ne clamp pas à 0: conserve les valeurs négatives.
    - Conversion: stock_unite = stock_base / facteur_vers_base(idunite)
    """

    idmagasin: int
    stock_base_par_article: Dict[int, float]
    facteur_vers_base_par_unite: Dict[int, float]

    @classmethod
    def build(cls, idmagasin: int, conn=None) -> "StockSnapshot":
        db = load_db_config()
        if db is None:
            raise FileNotFoundError("config.json introuvable ou invalide")

        # Stock et conversions proviennent du même moteur central.
        sm = StockManagerUpdateLatest(
            host=db["host"],
            port=db["port"],
            dbname=db["database"],
            user=db["user"],
            password=db["password"],
        )
        try:
            facteurs = {
                int(row["idunite"]): float(row["facteur_vers_base"])
                for row in sm.get_unites_tous_articles()
            }
            lignes = sm.get_stock_tous_articles(idmagasin=int(idmagasin), date_fin=None)
            stock_base = {
                int(l["idarticle"]): float(l.get("stock_en_base", 0.0) or 0.0)
                for l in lignes
            }
        finally:
            try:
                sm.fermer_connexion()
            except Exception:
                pass

        return cls(
            idmagasin=int(idmagasin),
            stock_base_par_article=stock_base,
            facteur_vers_base_par_unite=facteurs,
        )

    def stock_unite(self, idarticle: int, idunite: int) -> float:
        base = float(self.stock_base_par_article.get(int(idarticle), 0.0) or 0.0)
        facteur = float(self.facteur_vers_base_par_unite.get(int(idunite), 1.0) or 1.0)
        if facteur == 0:
            return 0.0
        return base / facteur
