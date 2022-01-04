SELECT students.name AS student_name, email, cohorts.name AS cohort_name
FROM students
FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;