SELECT ROUND(AVG(total_students) * 100) / 100 AS average_students
FROM (
  SELECT COUNT(students) AS total_students, cohorts.name AS cohort
  FROM students
  JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohorts.name
) as total_table;