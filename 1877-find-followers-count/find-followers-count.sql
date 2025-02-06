# Write your MySQL query statement below
SELECT
    user_id,
    COUNT(*) followers_count
FROM
    Followers
GROUP BY 1
ORDER BY 1;