"""Stable entry point for the stock calculation currently used by Stock Article.

The calculation remains implemented by StockManager so the business rules and
SQL are not duplicated.
"""

from datetime import datetime
from typing import Any, Optional

from stock_manager import StockManager


class StockManagerUpdateLatest(StockManager):
    """Reuse StockManager rules through a stable entry point for every screen."""

    _TAILLE_LOT_HISTORIQUE = 300
    _ORDRE_TYPE_MOUVEMENT = {
        "LIVRAISON": 0,
        "ENTREE": 1,
        "SORTIE": 2,
        "VENTE": 3,
        "TRANSFERT_SORTIE": 4,
        "TRANSFERT_ENTREE": 5,
        "INVENTAIRE": 6,
        "AVOIR": 7,
        "CONSOMMATION": 8,
        "CHANGEMENT_SORTIE": 9,
        "CHANGEMENT_ENTREE": 10,
    }

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

    @classmethod
    def _sql_ordre_type_mouvement(cls) -> str:
        return "\n".join(
            f"WHEN '{type_mouvement}' THEN {ordre}"
            for type_mouvement, ordre in cls._ORDRE_TYPE_MOUVEMENT.items()
        )

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

    @staticmethod
    def get_stock_apres_mouvements(
        conn,
        mouvements: list[dict[str, Any]],
    ) -> dict[int, float]:
        """Calcule le solde central après chaque mouvement identifié.

        L'horodatage complet est conservé. Les mouvements au même instant sont
        départagés par code article, type et identifiant de détail, dans l'ordre
        inverse de l'écran chronologique décroissant.
        """
        if not mouvements:
            return {}

        types_valides = {
            "ENTREE",
            "LIVRAISON",
            "INVENTAIRE",
            "AVOIR",
            "CHANGEMENT_ENTREE",
            "TRANSFERT_ENTREE",
            "VENTE",
            "SORTIE",
            "CONSOMMATION",
            "CHANGEMENT_SORTIE",
            "TRANSFERT_SORTIE",
        }
        demandes = []
        ids_lignes = set()
        for mouvement in mouvements:
            id_ligne = int(mouvement["id_ligne"])
            idarticle = int(mouvement["idarticle"])
            idunite = int(mouvement["idunite"])
            idmag = int(mouvement["idmag"])
            date_mouvement = mouvement["date_mouvement"]
            type_mouvement = str(mouvement["type_mouvement"])
            id_mouvement = int(mouvement["id_mouvement"])

            if id_ligne in ids_lignes:
                raise ValueError(f"Identifiant de ligne dupliqué : {id_ligne}.")
            if type_mouvement not in types_valides:
                raise ValueError(
                    f"Type de mouvement non reconnu : {type_mouvement}."
                )
            if date_mouvement is None:
                raise ValueError(
                    f"Horodatage absent pour le mouvement {type_mouvement} "
                    f"n° {id_mouvement}."
                )

            ids_lignes.add(id_ligne)
            demandes.append(
                (
                    id_ligne,
                    idarticle,
                    idunite,
                    idmag,
                    date_mouvement,
                    type_mouvement,
                    id_mouvement,
                )
            )

        stock_par_ligne = {}
        for debut in range(
            0, len(demandes), StockManagerUpdateLatest._TAILLE_LOT_HISTORIQUE
        ):
            lot = demandes[
                debut:debut + StockManagerUpdateLatest._TAILLE_LOT_HISTORIQUE
            ]
            values_sql = ",\n                ".join(
                "(%s::integer, %s::integer, %s::integer, %s::integer, "
                "%s::timestamp, %s::text, %s::bigint)"
                for _ in lot
            )
            parametres = tuple(
                valeur
                for demande in lot
                for valeur in demande
            )
            sql = f"""
            WITH RECURSIVE
                {StockManagerUpdateLatest._cte_facteur_conversion()},
                {StockManagerUpdateLatest._cte_tous_mouvements()},
                demandes(
                    id_ligne, idarticle, idunite, idmag,
                    date_mouvement, type_mouvement, id_mouvement
                ) AS (
                    VALUES {values_sql}
                ),
                dernier_instant AS (
                    SELECT idarticle, idmag, MAX(date_mouvement) AS date_max
                    FROM demandes
                    GROUP BY idarticle, idmag
                ),
                mouvements_convertis AS (
                    SELECT
                        fc.idarticle,
                        tm.idmag,
                        tm.idunite,
                        tm.date_mouvement,
                        tm.type_mouvement,
                        tm.id_mouvement,
                        u.codearticle,
                        CASE tm.type_mouvement
                            {StockManagerUpdateLatest._sql_ordre_type_mouvement()}
                            ELSE 11
                        END AS ordre_type,
                        tm.quantite * fc.facteur_vers_base * tm.signe
                            AS quantite_signee_base
                    FROM tous_mouvements tm
                    JOIN facteur_conversion fc
                      ON fc.idunite = tm.idunite
                    JOIN tb_unite u
                      ON u.idunite = tm.idunite
                     AND u.idarticle = fc.idarticle
                     AND u.deleted = 0
                    JOIN dernier_instant di
                      ON di.idarticle = fc.idarticle
                     AND di.idmag = tm.idmag
                    WHERE tm.date_mouvement <= di.date_max
                ),
                stocks_apres AS (
                    SELECT
                        mc.*,
                        COALESCE(
                            SUM(mc.quantite_signee_base) OVER (
                                PARTITION BY mc.idarticle, mc.idmag
                                ORDER BY
                                    mc.date_mouvement,
                                    mc.codearticle DESC,
                                    mc.ordre_type DESC,
                                    mc.id_mouvement DESC
                                ROWS BETWEEN UNBOUNDED PRECEDING
                                    AND CURRENT ROW
                            ),
                            0.0
                        ) AS stock_en_base
                    FROM mouvements_convertis mc
                )
            SELECT
                d.id_ligne,
                sa.stock_en_base / fc.facteur_vers_base AS stock_dans_unite
            FROM demandes d
            JOIN stocks_apres sa
              ON sa.idarticle = d.idarticle
             AND sa.idunite = d.idunite
             AND sa.idmag = d.idmag
             AND sa.date_mouvement = d.date_mouvement
             AND sa.type_mouvement = d.type_mouvement
             AND sa.id_mouvement = d.id_mouvement
            JOIN facteur_conversion fc
              ON fc.idarticle = d.idarticle
             AND fc.idunite = d.idunite
             AND fc.facteur_vers_base > 0
            """
            with conn.cursor() as curseur:
                curseur.execute(sql, parametres)
                for id_ligne, stock_dans_unite in curseur.fetchall():
                    id_ligne = int(id_ligne)
                    if id_ligne in stock_par_ligne:
                        raise ValueError(
                            f"Correspondance centrale ambiguë pour la ligne "
                            f"{id_ligne}."
                        )
                    stock_par_ligne[id_ligne] = float(stock_dans_unite)

        lignes_manquantes = ids_lignes - stock_par_ligne.keys()
        if lignes_manquantes:
            raise ValueError(
                "Mouvement(s) absent(s) du registre central ou unité sans "
                "facteur de conversion : "
                + ", ".join(str(id_ligne) for id_ligne in sorted(lignes_manquantes))
            )

        return stock_par_ligne

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
