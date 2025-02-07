/*
What are the top-paying data analyst jobs?
- Identify the top 10 highest-paying data analyst roles
that are available remotely.
- Focuses on job postings with specified salaries (remove nulls).
*/


/*
Data Overview
*/
SELECT *
FROM job_postings_fact
LIMIT 5;


/*
Remote data analyst jobs in the world
*/
SELECT
    job_id,
    name AS company_name,
    job_title,
    job_title_short,
    salary_year_avg AS salary_average
FROM
    job_postings_fact
LEFT JOIN company_dim AS cd ON cd.company_id = job_postings_fact.company_id    
WHERE
    (job_title_short = 'Data Analyst' AND
    job_title_short NOT LIKE '%Senior%') AND
    salary_year_avg IS NOT NULL AND
    job_work_from_home = true
ORDER BY
    salary_average DESC
LIMIT 10;


/*
Local data analyst Jobs in Brazil
*/
SELECT
    job_id,
    name AS company_name,
    job_title,
    job_title_short,
    salary_year_avg
FROM
    job_postings_fact
LEFT JOIN company_dim AS cd ON cd.company_id = job_postings_fact.company_id    
WHERE
    (job_title_short = 'Data Analyst' AND
    job_title_short NOT LIKE '%Senior%') AND
    salary_year_avg IS NOT NULL AND
    job_location = 'Brazil'
ORDER BY
    salary_year_avg DESC
LIMIT 10;    


/*
Remote data scientist jobs in the world
*/
SELECT
    job_id,
    name AS company_name,
    job_title,
    job_title_short,
    salary_year_avg AS salary_average
FROM
    job_postings_fact
LEFT JOIN company_dim AS cd ON cd.company_id = job_postings_fact.company_id    
WHERE
    (job_title_short = 'Data Scientist' AND
    job_title_short NOT LIKE '%Senior%') AND
    salary_year_avg IS NOT NULL AND
    job_work_from_home = true
ORDER BY
    salary_average DESC
LIMIT 10;


/*
Local data scientist Jobs in Brazil
*/
SELECT
    job_id,
    name AS company_name,
    job_title,
    job_title_short,
    salary_year_avg
FROM
    job_postings_fact
LEFT JOIN company_dim AS cd ON cd.company_id = job_postings_fact.company_id    
WHERE
    (job_title_short = 'Data Scientist' AND
    job_title_short NOT LIKE '%Senior%') AND
    salary_year_avg IS NOT NULL AND
    job_location = 'Brazil'
ORDER BY
    salary_year_avg DESC
LIMIT 10;