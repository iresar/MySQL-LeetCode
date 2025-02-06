# Write your MySQL query statement below
SELECT unique_id, name
FROM EmployeeUNI eu RIGHT JOIN Employees e USING (id);