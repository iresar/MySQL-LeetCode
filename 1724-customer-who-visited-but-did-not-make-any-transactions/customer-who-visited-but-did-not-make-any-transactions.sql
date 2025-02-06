# Write your MySQL query statement below
SELECT customer_id, COUNT(*) count_no_trans
FROM Visits v LEFT JOIN Transactions t USING (visit_id)
WHERE t.visit_id IS NULL
GROUP BY 1;