"""Stable entry point for the stock calculation currently used by Stock Article.

The calculation remains implemented by StockManager so the business rules and
SQL are not duplicated.
"""

from stock_manager import StockManager


class StockManagerUpdateLatest(StockManager):
    """Reuse StockManager rules through a stable entry point for future screens."""


__all__ = ["StockManagerUpdateLatest"]
