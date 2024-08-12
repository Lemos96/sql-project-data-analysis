/*
    find the average salary and number on job postings for each skill
    understand the demand and pay for skills
*/

SELECT
    skills.skills as skill_name,
    COUNT(skills_to_job.job_id) AS number_of_job_postings,
    AVG(job_postings.salary_year_avg) AS average_salary_for_skill
FROM
    skills_dim AS skills
LEFT JOIN skills_job_dim AS skills_to_job ON skills.skill_id = skills_to_job.skill_id
LEFT JOIN job_postings_fact AS job_postings ON skills_to_job.job_id = job_postings.job_id
WHERE
    job_postings.salary_year_avg IS NOT NULL
GROUP BY
    skills.skills
ORDER BY
    number_of_job_postings DESC