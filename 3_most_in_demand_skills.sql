/*
- Identify the top 5 in-demand skills for a data analyst
- Focus on all job postings.
- Why? Retrieves the top 5 skills with the highest demand in the job market, providing insights into the most valuable skills
*/


/*
Top 5 for data analyst:
    Sql, Excel, Python, Tableau, Power bi
*/
SELECT
    skills,
    COUNT(jobs.job_id) AS counts
FROM
    job_postings_fact AS jobs
LEFT JOIN skills_job_dim AS sjd ON sjd.job_id = jobs.job_id
LEFT JOIN skills_dim AS sd ON sd.skill_id = sjd.skill_id
WHERE
    jobs.job_title_short = 'Data Analyst' AND
    skills is not NULL
GROUP BY
    skills
ORDER BY
    counts DESC
LIMIT 5;




/*
Top 5 for data scientist:
    Python, Sql, R, Sas, Tableau
*/
SELECT
    skills,
    COUNT(jobs.job_id) AS counts
FROM
    job_postings_fact AS jobs
LEFT JOIN skills_job_dim AS sjd ON sjd.job_id = jobs.job_id
LEFT JOIN skills_dim AS sd ON sd.skill_id = sjd.skill_id
WHERE
    jobs.job_title_short = 'Data Scientist' AND
    skills is not NULL
GROUP BY
    skills
ORDER BY
    counts DESC
LIMIT 5;




/*
Top 5 for data analyst/scientist:
    Sql, Python, R, Excel, Tableau
*/
SELECT
    skills,
    COUNT(jobs.job_id) AS counts
FROM
    job_postings_fact AS jobs
LEFT JOIN skills_job_dim AS sjd ON sjd.job_id = jobs.job_id
LEFT JOIN skills_dim AS sd ON sd.skill_id = sjd.skill_id
WHERE
    jobs.job_title_short in ('Data Analyst', 'Data Scientist') AND
    skills is not NULL
GROUP BY
    skills
ORDER BY
    counts DESC
LIMIT 5;
    