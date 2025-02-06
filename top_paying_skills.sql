/*
What skills are required for the top-paying data analyst jobs
- Use the top 10 highest-paying Data Analyst jobs from first query
- Add the specific skills required for these roles
*/

SELECT
    *
FROM
    skills_job_dim
LIMIT 10;        

WITH top_analyst_jobs AS(
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
    LIMIT 10
)
SELECT
    skills,
    COUNT(top_analyst_jobs.job_id) AS skill_apparitions
FROM top_analyst_jobs
LEFT JOIN skills_job_dim AS sjd ON sjd.job_id = top_analyst_jobs.job_id
LEFT JOIN skills_dim AS sd ON sd.skill_id = sjd.skill_id
WHERE
    skills IS NOT NULL
GROUP BY
    skills
ORDER BY
    skill_apparitions DESC;   