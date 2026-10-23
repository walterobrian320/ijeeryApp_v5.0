# -*- coding: utf-8 -*-
"""Façade stock : snapshots, cache et affichage unifiés."""

from __future__ import annotations

import math
from typing import Dict, Optional
from decimal import Decimal, InvalidOperation

from stock_snapshot import StockSnapshot, format_nombre_auto

_cache: Dict[int, StockSnapshot] = {}


def get_snapshot(idmagasin: int, conn=None) -> StockSnapshot:
    """Construit un snapshot de stock pour un magasin."""
    return StockSnapshot.build(int(idmagasin), conn=conn)


def get_snapshot_cached(
    idmagasin: int,
    conn=None,
    *,
    force: bool = False,
) -> StockSnapshot:
    """Retourne un snapshot en cache par magasin (recalcul si force ou absent)."""
    key = int(idmagasin)
    if not force and key in _cache:
        return _cache[key]
    snap = get_snapshot(key, conn=conn)
    _cache[key] = snap
    return snap


def invalidate_snapshot(idmagasin: Optional[int] = None) -> None:
    """Invalide le cache (un magasin ou tout)."""
    if idmagasin is None:
        _cache.clear()
    else:
        _cache.pop(int(idmagasin), None)


def stock_base(snapshot: StockSnapshot, idarticle: int) -> float:
    return float(snapshot.stock_base_par_article.get(int(idarticle), 0.0) or 0.0)


def stock_unite(snapshot: StockSnapshot, idarticle: int, idunite: int) -> float:
    return snapshot.stock_unite(int(idarticle), int(idunite))


def _decimal_stock(value, label: str) -> Decimal:
    try:
        result = Decimal(str(value))
    except (InvalidOperation, TypeError, ValueError) as exc:
        raise ValueError(f"Valeur de stock invalide pour {label} : {value!r}.") from exc
    if not result.is_finite():
        raise ValueError(f"Valeur de stock non finie pour {label} : {value!r}.")
    return result


def _facteur_decimal(snapshot: StockSnapshot, idunite: int) -> Decimal:
    facteur = snapshot.facteur_vers_base_par_unite.get(int(idunite))
    if facteur is None:
        raise ValueError(f"Facteur de conversion absent pour l'unité {idunite}.")
    resultat = _decimal_stock(facteur, f"l'unité {idunite}")
    if resultat <= 0:
        raise ValueError(f"Facteur de conversion invalide pour l'unité {idunite}.")
    return resultat


def stock_valeur_affichable(stock: float, *, unite_de_base: bool) -> Decimal:
    """Applique la règle d'affichage sans modifier le solde réel."""
    valeur = _decimal_stock(stock, "le stock")
    if unite_de_base:
        return Decimal(math.trunc(valeur))
    return valeur


def stock_est_fractionnaire(stock: float) -> bool:
    valeur = _decimal_stock(stock, "le stock")
    return valeur != valeur.to_integral_value()


def format_stock_exact(stock) -> str:
    """Formate le solde exact sans arrondi, avec les séparateurs français."""
    valeur = _decimal_stock(stock, "le stock")
    return format(valeur, ",f").replace(",", "\0").replace(".", ",").replace("\0", ".")


def stock_base_disponible(
    snapshot: StockSnapshot,
    idarticle: int,
    *,
    reservations_base=0,
    stock_base_restitue=0,
) -> Decimal:
    """Solde exact en unité de base après réservations temporaires."""
    stock = _decimal_stock(stock_base(snapshot, idarticle), f"l'article {idarticle}")
    reserve = _decimal_stock(reservations_base, "les réservations")
    restitue = _decimal_stock(stock_base_restitue, "le stock restitué")
    return stock + restitue - reserve


def stock_unite_pour_affichage(
    snapshot: StockSnapshot,
    idarticle: int,
    idunite: int,
) -> Decimal:
    """Stock affichable : entier en unité de base, valeur exacte sinon."""
    stock = stock_unite(snapshot, idarticle, idunite)
    affichable = stock_valeur_affichable(
        stock,
        unite_de_base=snapshot.unite_est_de_base(idunite),
    )
    if affichable == 0 and stock < 0:
        return Decimal("-0")
    return affichable


def stock_unite_disponible(
    snapshot: StockSnapshot,
    idarticle: int,
    idunite: int,
    *,
    reservations_base=0,
    stock_base_restitue=0,
) -> Decimal:
    """Quantité utilisable dans l'unité choisie, sans relire une valeur affichée."""
    stock_base_restant = stock_base_disponible(
        snapshot,
        idarticle,
        reservations_base=reservations_base,
        stock_base_restitue=stock_base_restitue,
    )
    disponible = stock_base_restant / _facteur_decimal(snapshot, idunite)
    if snapshot.unite_est_de_base(idunite):
        return max(Decimal(0), Decimal(math.trunc(disponible)))
    return max(Decimal(0), disponible)


def quantite_mouvement_en_base(
    snapshot: StockSnapshot,
    idarticle: int,
    idunite: int,
    quantite,
) -> Decimal:
    """Convertit une demande en base et interdit les fractions de l'unité de base."""
    valeur = _decimal_stock(quantite, "la quantité demandée")
    if valeur <= 0:
        raise ValueError("La quantité demandée doit être strictement positive.")
    if snapshot.unite_est_de_base(idunite) and valeur != valeur.to_integral_value():
        raise ValueError("La quantité en unité de base doit être un nombre entier.")
    return valeur * _facteur_decimal(snapshot, idunite)


def convertir_quantite_en_base(
    snapshot: StockSnapshot,
    idarticle: int,
    idunite: int,
    quantite,
) -> Decimal:
    """Convertit une quantité historique sans imposer la règle de saisie actuelle."""
    valeur = _decimal_stock(quantite, "la quantité")
    if valeur < 0:
        raise ValueError("La quantité ne peut pas être négative.")
    return valeur * _facteur_decimal(snapshot, idunite)


def stock_display(snapshot: StockSnapshot, idarticle: int, idunite: int) -> str:
    valeur_exacte = stock_unite(snapshot, idarticle, idunite)
    valeur_affichable = stock_unite_pour_affichage(snapshot, idarticle, idunite)
    if valeur_affichable == 0 and valeur_exacte < 0:
        return "-0"
    return format_nombre_auto(valeur_affichable)


def stock_display_cached(
    idmagasin: int,
    idarticle: int,
    idunite: int,
    conn=None,
    *,
    force: bool = False,
) -> str:
    snap = get_snapshot_cached(idmagasin, conn=conn, force=force)
    return stock_display(snap, idarticle, idunite)
