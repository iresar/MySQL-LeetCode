# Write your MySQL query statement below
SELECT
    id,
    CASE
        WHEN id % 2 = 0 THEN LAG(STUDENT) OVER(ORDER BY id)
        ELSE COALESCE(LEAD(STUDENT) OVER(ORDER BY id), student)
    END student
FROM Seat;