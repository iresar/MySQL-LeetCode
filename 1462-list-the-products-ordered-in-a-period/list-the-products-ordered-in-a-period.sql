# Write your MySQL query statement below
SELECT product_name, sum(unit) unit
FROM Products p LEFT JOIN Orders o USING (product_id)
WHERE order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY product_name
HAVING sum(unit) >= 100