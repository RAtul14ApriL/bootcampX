const { Pool } = require('pg');

const cohort = process.argv[2];
const limit = process.argv[3];

const pool = new Pool({
  user: 'labber',
  password: 'labber',
  host: 'localhost',
  database: 'bootcampx'
})

pool.query(`
SELECT students.id, students.name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name LIKE '%${cohort}%'
ORDER BY students.id
LIMIT ${limit || 5};
`)
.then(res => {
  // console.log(res.rows);
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.id} and was in ${user.cohort} cohort`)
  });
  pool.end();
})
.catch(err => console.error('query error', err.stack));