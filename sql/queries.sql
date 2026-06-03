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

-- 6. Lowest NAV
SELECT MIN(nav) AS lowest_nav
FROM fact_nav;

-- 7. Transactions by Type
SELECT transaction_type,
       COUNT(*) AS total
FROM fact_transactions
GROUP BY transaction_type;

-- 8. Transactions by State
SELECT state,
       COUNT(*) AS total
FROM fact_transactions
GROUP BY state
ORDER BY total DESC;

-- 9. Average Transaction Amount by State
SELECT state,
       AVG(amount_inr) AS avg_amount
FROM fact_transactions
GROUP BY state;

-- 10. Top 10 Investors by Investment
SELECT investor_id,
       SUM(amount_inr) AS total_investment
FROM fact_transactions
GROUP BY investor_id
ORDER BY total_investment DESC
LIMIT 10;