-- 1. Total Transactions
SELECT COUNT(*) AS total_transactions
FROM fact_transactions;

-- 2. Average Transaction Amount
SELECT AVG(amount_inr) AS avg_amount
FROM fact_transactions;

-- 3. Top 5 AMFI Codes by Transactions
SELECT amfi_code,
       COUNT(*) AS txn_count
FROM fact_transactions
GROUP BY amfi_code
ORDER BY txn_count DESC
LIMIT 5;

-- 4. Average NAV
SELECT AVG(nav) AS avg_nav
FROM fact_nav;

-- 5. Highest NAV
SELECT MAX(nav) AS highest_nav
FROM fact_nav;