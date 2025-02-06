# Write your MySQL query statement below
(
    SELECT name results
    FROM Users u JOIN MovieRating mr USING (user_id)
    GROUP BY 1
    ORDER BY COUNT(*) DESC, 1
    LIMIT 1
)
UNION ALL
(
SELECT title results
FROM Movies m JOIN MovieRating mr USING (movie_id)
WHERE created_at LIKE '2020-02%'
GROUP BY 1
ORDER BY AVG(rating) DESC, 1
LIMIT 1
)