import pandas as pd
from sqlalchemy import create_engine

engine = create_engine("sqlite:///bluestock_mf.db")

nav = pd.read_csv(
    "data/processed/nav_history_clean.csv"
)

transactions = pd.read_csv(
    "data/processed/investor_transactions_clean.csv"
)

nav.to_sql(
    "fact_nav",
    engine,
    if_exists="replace",
    index=False
)

transactions.to_sql(
    "fact_transactions",
    engine,
    if_exists="replace",
    index=False
)

print("Database loaded successfully")