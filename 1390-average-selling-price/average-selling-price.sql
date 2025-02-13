# Write your MySQL query statement below
SELECT
    p.product_id,
    COALESCE(ROUND(SUM(price * units) / SUM(units), 2), 0) average_price
FROM
    Prices p LEFT JOIN UnitsSold u on
        p.product_id = u.product_id AND
        u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY 1;