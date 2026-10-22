"""Stable entry point for the stock calculation currently used by Stock Article.

The calculation remains implemented by StockManager so the business rules and
SQL are not duplicated.
"""

from datetime import datetime
from typing import Any, Optional

from stock_manager import StockManager


class StockManagerUpdateLatest(StockManager):
    """Reuse StockManager rules through a stable entry point for every screen."""

    @classmethod
    def from_db_config(cls) -> "StockManagerUpdateLatest":
        """Create a manager from the application's configured database."""
        from db import load_db_config

        config = load_db_config()
        if not config:
            raise FileNotFoundError("config.json introuvable ou invalide")
        return cls(
            host=config["host"],
            port=config["port"],
            dbname=config["database"],
            user=config["user"],
            password=config["password"],
        )

    def __enter__(self) -> "StockManagerUpdateLatest":
        return self

    def __exit__(self, exc_type: Any, exc_value: Any, traceback: Any) -> None:
        self.fermer_connexion()

    def get_stock_article_unite(
        self,
        idarticle: int,
        idunite: int,
        idmagasin: int = 0,
        date_fin: Optional[str] = None,
    ) -> float:
        """Return the signed stock in the requested unit without truncation."""
        stock = self.get_stock_article_base(
            idarticle=idarticle,
            idmagasin=idmagasin,
            date_fin=date_fin,
        )
        unite = next(
            (
                row
                for row in self.get_unites_article(idarticle)
                if int(row["idunite"]) == int(idunite)
            ),
            None,
        )
        if unite is None:
            raise ValueError(
                f"L'unité {idunite} n'appartient pas à l'article {idarticle}."
            )

        facteur = float(unite["facteur_vers_base"] or 0.0)
        if facteur <= 0:
            raise ValueError(f"Facteur de conversion invalide pour l'unité {idunite}.")
        return float(stock.get("stock_en_base", 0.0) or 0.0) / facteur

    def get_unites_tous_articles(self) -> list[dict[str, Any]]:
        """Return active article units with factors from the shared conversion CTE."""
        sql = f"""
        WITH RECURSIVE {self._cte_facteur_conversion()}
        SELECT
            fc.idarticle,
            fc.idunite,
            fc.designationunite,
            fc.niveau,
            fc.facteur_vers_base,
            u.codearticle,
            u.qtunite
        FROM facteur_conversion fc
        JOIN tb_unite u ON u.idunite = fc.idunite
        ORDER BY fc.idarticle, fc.niveau, fc.idunite
        """
        return self._executer_requete(sql)

    def get_stocks_tous_articles_par_magasin(
        self,
        idmagasin: Optional[int] = None,
        date_fin: Optional[str] = None,
    ) -> list[dict[str, Any]]:
        """Return signed base-unit stock by active article and active store."""
        filtre_magasin = (
            "" if idmagasin is None else "AND tm.idmag = %(idmagasin)s"
        )
        filtre_date = (
            ""
            if date_fin is None
            else "AND tm.date_mouvement <= %(date_fin)s::timestamp"
        )
        sql = f"""
        WITH RECURSIVE
            {self._cte_facteur_conversion()},
            {self._cte_tous_mouvements()}
        SELECT
            a.idarticle,
            a.designation,
            tm.idmag,
            mag.designationmag,
            u_base.designationunite AS unite_base,
            SUM(tm.quantite * fc.facteur_vers_base * tm.signe) AS stock_en_base
        FROM tb_article a
        JOIN tb_unite u_base
          ON u_base.idarticle = a.idarticle
         AND u_base.niveau = 0
         AND u_base.deleted = 0
        JOIN facteur_conversion fc ON fc.idarticle = a.idarticle
        JOIN tous_mouvements tm ON tm.idunite = fc.idunite
        JOIN tb_magasin mag ON mag.idmag = tm.idmag AND mag.deleted = 0
        WHERE a.deleted = 0
          {filtre_magasin}
          {filtre_date}
        GROUP BY
            a.idarticle,
            a.designation,
            tm.idmag,
            mag.designationmag,
            u_base.designationunite
        ORDER BY a.idarticle, tm.idmag
        """
        params = {"idmagasin": idmagasin, "date_fin": date_fin}
        resultats = self._executer_requete(sql, params)
        date_calcul = date_fin or datetime.today().strftime("%Y-%m-%d")
        for ligne in resultats:
            ligne["date_calcul"] = date_calcul
        return resultats


__all__ = ["StockManagerUpdateLatest"]
