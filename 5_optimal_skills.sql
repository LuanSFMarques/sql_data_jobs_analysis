/*
- Identify skills in high demand and associated with high average salaries for Data Analyst roles
- Concentrates on remote positions with specified salaries
- Why? Targets skills that offer job security (high demand) and financial benefits (high salaries)
*/


-- TOP 25 SKILLS for DA and remote (minimum of 15 skill count and top paying skills)
SELECT
    sd.skill_id,
    sd.skills,
    COUNT(jobs.job_id) AS counts,
    ROUND(AVG(jobs.salary_year_avg), 2) AS skill_salary
FROM
    job_postings_fact AS jobs
LEFT JOIN skills_job_dim AS sjd ON sjd.job_id = jobs.job_id
LEFT JOIN skills_dim AS sd ON sd.skill_id = sjd.skill_id
WHERE
    jobs.job_title_short = 'Data Analyst' AND
    jobs.job_work_from_home = true AND
    jobs.salary_year_avg IS NOT NULL AND
    skills IS NOT NULL
GROUP BY
    sd.skill_id
HAVING
    COUNT(jobs.job_id) > 10    
ORDER BY
    skill_salary DESC,
    counts DESC
LIMIT 25;        
