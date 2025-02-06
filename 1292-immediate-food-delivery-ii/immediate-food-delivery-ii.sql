SELECT
    ROUND(AVG(type='immediate') * 100, 2) immediate_percentage
FROM
(
    SELECT
        delivery_id
        customer_id,
        order_date,
        customer_pref_delivery_date,
        CASE
            WHEN order_date = customer_pref_delivery_date THEN 'immediate'
            ELSE 'scheduled'
        END type,
        RANK() OVER(PARTITION BY customer_id ORDER BY order_date) rnk
    FROM 
        Delivery
) T
WHERE rnk = 1;