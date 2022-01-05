SELECT teachers.name AS teacher, cohorts.name AS cohort, COUNT(*) AS total_assistance
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY teachers.name, cohorts.name
HAVING cohorts.name = 'JUL02'
ORDER BY total_assistance DESC;