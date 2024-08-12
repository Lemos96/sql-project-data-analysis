/*
    Get job details for Data and Business Analyst positions.
    Only include job located in either 'Boston, MA' and 'Anywhere' (ie. Remote jobs)
*/
SELECT 
    job_title_short,
    job_location,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Online'
        ELSE 'Onsite'
    END AS online_or_onsite,
    job_via,
    salary_year_avg
FROM
    job_postings_fact
WHERE
    job_location IN ('Boston, MA' , 'Anywhere') AND
    (
        (job_title_short = 'Data Analyst' AND salary_year_avg > 100000) OR
        (job_title_short = 'Business Analyst' AND salary_year_avg > 70000)
    )
order by salary_year_avg desc