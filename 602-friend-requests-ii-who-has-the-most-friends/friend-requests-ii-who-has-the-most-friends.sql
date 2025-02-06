# Write your MySQL query statement below
SELECT requester_id id, SUM(cnt) num
FROM
(
    SELECT
        requester_id,
        COUNT(*) cnt
    FROM RequestAccepted
    GROUP BY requester_id
    UNION ALL
    SELECT
        accepter_id,
        COUNT(*) cnt
    FROM RequestAccepted
    GROUP BY accepter_id
) t
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1