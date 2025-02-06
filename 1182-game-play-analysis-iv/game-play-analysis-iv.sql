# Write your MySQL query statement below
SELECT
    -- COUNT(*) / COUNT(DISTINCT a1.player_id) fraction
    ROUND(COUNT(*) / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) fraction
FROM
    Activity a1, Activity a2
WHERE
    (a1.player_id, a1.event_date) IN (
        SELECT player_id, min(event_date)
        FROM Activity
        GROUP BY player_id
    ) AND
    DATEDIFF(a2.event_date, a1.event_date) = 1 AND
    a1.player_id = a2.player_id