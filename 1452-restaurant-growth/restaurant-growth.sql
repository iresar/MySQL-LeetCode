# Write your MySQL query statement below
SELECT
    visited_on,
    (
        SELECT sum(amount)
        FROM Customer
        WHERE visited_on BETWEEN DATE_SUB(c.visited_on, INTERVAL 6 DAY) AND c.visited_on
    ) amount,
    (
        SELECT ROUND(SUM(amount)/7, 2)
        FROM Customer
        WHERE visited_on BETWEEN DATE_SUB(c.visited_on, INTERVAL 6 DAY) AND c.visited_on
    ) average_amount
FROM Customer c
WHERE visited_on >= (
    SELECT DATE_ADD(MIN(visited_on), INTERVAL 6 DAY) FROM Customer
)
GROUP BY visited_on;