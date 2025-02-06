# Write your MySQL query statement below
SELECT Department, Employee, Salary FROM
(
    SELECT 
        d.name Department, e.name Employee, salary,
        dense_rank() OVER(PARTITION BY d.name ORDER BY salary DESC) rnk
    FROM Department d JOIN Employee e ON e.departmentId = d.id
) r
WHERE rnk <= 3