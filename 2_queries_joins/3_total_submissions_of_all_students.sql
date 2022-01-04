SELECT students.name AS student, COUNT(*) AS total_submissions
FROM assignment_submissions
JOIN students
ON students.id = student_id
GROUP BY students.name;