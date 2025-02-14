/*
Question: What are the top_paying data analyst jobs?
- Identify the top 10 highest paying Data Analyst roles that are avaible remotely.
- Focuses on job postings with specified salaries.
- Why? Highlight the top_paying opportunities for Data Analysts.
*/

SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name as company_name

FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Scientist' AND
    job_location = 'Anywhere' AND
    salary_year_avg is NOT NULL
ORDER BY
    salary_year_avg desc
LIMIT 10
