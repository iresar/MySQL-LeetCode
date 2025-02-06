# Write your MySQL query statement below
SELECT MAX(num) num FROM
(
SELECT num
FROM MyNumbers
GROUP BY 1
HAVING COUNT(num) = 1
)t