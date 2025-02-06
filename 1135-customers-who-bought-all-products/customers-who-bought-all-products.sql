# Write your MySQL query statement below
SELECT customer_id
FROM Customer c LEFT JOIN Product USING (product_key)
GROUP BY 1
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(*) FROM Product);