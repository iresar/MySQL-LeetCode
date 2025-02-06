# Write your MySQL query statement below
SELECT 
    ROUND(SUM(i.tiv_2016), 2) tiv_2016
FROM Insurance i
WHERE
    (i.lat, i.lon) IN (
        SELECT lat, lon FROM insurance
        GROUP BY lat, lon
        HAVING COUNT(*) = 1
    ) AND
    i.tiv_2015 IN (
        SELECT tiv_2015 FROM Insurance 
        GROUP BY tiv_2015
        HAVING COUNT(*) > 1
    )