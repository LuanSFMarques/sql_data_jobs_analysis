/*
- Look at the average salary associated with each skill for Data Analyst positions
- Focuses on roles with specified salaries, regardless of location
- Why? It reveals how different skills impact salary levels for data analysts and helps identify the most financially rewarding skills to acquire or improve
*/

SELECT
    skills,
    ROUND(AVG(jobs.salary_year_avg), 2) AS average_skill_salary
FROM job_postings_fact AS jobs  
LEFT JOIN skills_job_dim AS sjd ON sjd.job_id = jobs.job_id  
LEFT JOIN skills_dim AS sd ON sd.skill_id = sjd.skill_id
WHERE
    jobs.salary_year_avg IS NOT NULL AND
    jobs.job_title_short = 'Data Analyst'
GROUP BY
    skills
ORDER BY
    average_skill_salary DESC
LIMIT 25;  

/*
CHAT GPT INSIGHTS BASED ON THE RESULTS (Json)
1. Emerging and Niche Technologies Pay More
    SVN ($400K) is an anomaly, possibly due to a niche market need or specific high-paying contracts.
    Solidity ($179K), Couchbase ($160K), and Datarobot ($155K) indicate that skills related to blockchain, NoSQL databases, and AI automation command high salaries due to specialized demand and limited expertise.

2. AI, Machine Learning & Data Science Dominate
    MXNet ($149K), Keras ($127K), PyTorch ($125K), TensorFlow ($120K), and Hugging Face ($123K) suggest that expertise in deep learning and AI frameworks is highly valued.
    The presence of Datarobot ($155K) further highlights the push towards AI-driven automation in business.

3. DevOps & Cloud Infrastructure Are in Demand
    Terraform ($146K), VMware ($147K), Ansible ($124K), and Puppet ($129K) show that cloud infrastructure, automation, and configuration management skills are essential for maintaining scalable enterprise systems.
    Kafka ($130K) and Airflow ($116K) indicate demand for real-time data streaming and workflow automation.

4. High Salaries for Version Control & Collaboration Tools
    GitLab ($134K), Bitbucket ($117K), and Atlassian ($118K) reinforce the importance of collaboration tools and CI/CD pipelines in modern software development.
    Notion ($118K) suggests that knowledge of documentation and workflow tools might be a surprising but valuable skill in high-paying roles.

5. Programming Languages with High ROI
    Golang ($155K) and Scala ($115K) are known for their performance and scalability, making them popular in backend and distributed computing roles.
    Perl ($125K) remains valuable in legacy systems and automation.

6. Specialized Data Technologies Lead to Higher Salaries
    Couchbase ($160K) and Cassandra ($118K) highlight the demand for NoSQL database expertise.
    Dplyr ($147K) suggests that R-based data manipulation skills remain valuable in statistical and analytical work.

PERSONAL NOTES: All this skills are very niche specific skills, that high level jobs will require
*/