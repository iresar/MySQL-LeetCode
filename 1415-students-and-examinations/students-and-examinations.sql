# Write your MySQL query statement below
SELECT s.student_id, s.student_name, sub.subject_name, count(e.student_id) attended_exams
FROM Students s CROSS JOIN Subjects sub
LEFT JOIN Examinations e on e.student_id = s.student_id AND e.subject_name = sub.subject_name
GROUP BY s.student_name, sub.subject_name
ORDER BY s.student_id, sub.subject_name;