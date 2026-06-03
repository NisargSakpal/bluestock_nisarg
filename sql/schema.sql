    CREATE TABLE dim_fund (
    fund_id INTEGER PRIMARY KEY,
    amfi_code INTEGER UNIQUE,
    fund_name TEXT,
    category TEXT
);

CREATE TABLE dim_date (
    date_id INTEGER PRIMARY KEY,
    full_date DATE
);

CREATE TABLE fact_nav (
    nav_id INTEGER PRIMARY KEY,
    amfi_code INTEGER,
    date DATE,
    nav REAL
);

CREATE TABLE fact_transactions (
    transaction_id INTEGER PRIMARY KEY,
    investor_id TEXT,
    amfi_code INTEGER,
    amount_inr REAL,
    transaction_type TEXT
);