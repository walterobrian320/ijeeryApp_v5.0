from __future__ import annotations

import math
from dataclasses import dataclass, field
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
    niveau_par_unite: Dict[int, int] = field(default_factory=dict)

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
            unites = sm.get_unites_tous_articles()
            facteurs = {
                int(row["idunite"]): float(row["facteur_vers_base"])
                for row in unites
            }
            niveaux = {
                int(row["idunite"]): int(row["niveau"])
                for row in unites
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
            niveau_par_unite=niveaux,
        )

    def stock_unite(self, idarticle: int, idunite: int) -> float:
        base = float(self.stock_base_par_article.get(int(idarticle), 0.0) or 0.0)
        if not math.isfinite(base):
            raise ValueError(f"Stock de base non fini pour l'article {idarticle}.")
        facteur_brut = self.facteur_vers_base_par_unite.get(int(idunite))
        if facteur_brut is None:
            raise ValueError(f"Facteur de conversion absent pour l'unité {idunite}.")
        facteur = float(facteur_brut)
        if not math.isfinite(facteur) or facteur <= 0:
            raise ValueError(f"Facteur de conversion invalide pour l'unité {idunite}.")
        return base / facteur

    def unite_est_de_base(self, idunite: int) -> bool:
        niveau = self.niveau_par_unite.get(int(idunite))
        if niveau is None:
            raise ValueError(f"Niveau de l'unité {idunite} absent du snapshot.")
        return niveau == 0
