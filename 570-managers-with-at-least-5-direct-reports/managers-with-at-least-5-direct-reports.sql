# Write your MySQL query statement below
SELECT 
    e1.name
FROM Employee e1, Employee e2
WHERE e1.id = e2.managerId
GROUP by e2.managerId
HAVING COUNT(e2.managerId) >= 5;