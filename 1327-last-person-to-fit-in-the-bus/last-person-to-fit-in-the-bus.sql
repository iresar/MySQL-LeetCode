# Write your MySQL query statement below
SELECT person_name
FROM
(  
    SELECT
        person_name,
        SUM(weight) OVER (ORDER BY turn) cum_sum
    FROM
        Queue
) t
WHERE cum_sum <= 1000
ORDER BY cum_sum DESC
LIMIT 1;