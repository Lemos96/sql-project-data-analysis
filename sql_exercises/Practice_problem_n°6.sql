/*
    Find job postings from the first quarter than have a salary greather than $70k
*/

SELECT
    quarter1_job_postings.job_title,
    quarter1_job_postings.job_location,
    quarter1_job_postings.job_via,
    quarter1_job_postings.job_posted_date::date,
    quarter1_job_postings.salary_year_avg
FROM
    (SELECT *
    FROM january_jobs
    UNION ALL
    SELECT *
    FROM february_jobs
    UNION ALL
    SELECT *
    FROM march_jobs) AS quarter1_job_postings
WHERE 
    quarter1_job_postings.salary_year_avg > 70000 and
    quarter1_job_postings.job_title_short = 'Data Analyst'
ORDER BY 
    quarter1_job_postings.salary_year_avg DESC