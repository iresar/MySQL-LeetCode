# Write your MySQL query statement below
SELECT 
    contest_id,
    ROUND(COUNT(r.user_id)/ (SELECT count(DISTINCT user_id) FROM Users) * 100, 2) percentage
FROM
    Users u JOIN Register r USING (user_id)
GROUP BY contest_id
ORDER BY percentage DESC, contest_id;