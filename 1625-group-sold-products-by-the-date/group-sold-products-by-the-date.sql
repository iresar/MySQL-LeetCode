# Write your MySQL query statement below
SELECT
    sell_date,
    count(product) num_sold,
    GROUP_CONCAT(DISTINCT product) products
FROM
    (SELECT DISTINCT sell_date, product FROM Activities) Activities
GROUP BY sell_date
ORDER BY sell_date;