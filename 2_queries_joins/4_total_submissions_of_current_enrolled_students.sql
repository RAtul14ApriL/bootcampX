SELECT students.name AS student, COUNT(*) AS total_submissions
FROM assignment_submissions
JOIN students
ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING COUNT(*) < 100;