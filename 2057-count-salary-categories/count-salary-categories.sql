# Write your MySQL query statement below
SELECT
    'Low Salary' category,
    SUM(IF(income < 20000, 1, 0)) accounts_count
FROM Accounts
UNION
SELECT
    'Average Salary' category,
    SUM(IF(income BETWEEN 20000 AND 50000, 1, 0)) accounts_count
FROM Accounts
UNION
SELECT
    'High Salary' category,
    SUM(IF(income > 50000, 1, 0)) accounts_count
FROM Accounts;