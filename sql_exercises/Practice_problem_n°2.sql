/*
    Look for non-senior data analyst or business analyst roles.
    Get the job title, location, and average yearly salary.
*/

SELECT
    job_title,
    job_location AS location,
    job_country AS country,
    job_via AS via,
    salary_year_avg AS salary
FROM
    job_postings_fact
WHERE
    (job_title LIKE '%Data%' OR job_title LIKE '%Business%') AND
    job_title LIKE '%Analyst%' AND
    job_title NOT LIKE '%Senior%' AND
    salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
