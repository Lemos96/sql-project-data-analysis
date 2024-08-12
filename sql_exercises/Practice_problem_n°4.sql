/*
    Create three tables
    Jan 2023 jobs | Feb 2023 jobs | Mar 2023 jobs
    
*/


CREATE TABLE janyary_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date)

CREATE TABLE february_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date)

CREATE TABLE march_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT (MONTH FROM job_posted_date)

SELECT job_posted_date
FROM january_jobs;