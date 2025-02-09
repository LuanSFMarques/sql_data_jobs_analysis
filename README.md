# Introduction
Dive into valuable insights that uncover trends between skills and job opportunities in data analysis roles! 
This analysis highlights the average salary per skill in DA positions, identifies the most in-demand skills, and explores the "optimal" skill set for success in the field.

All queries and the Python visualization script are featured on the main page of the repository.

Additionally, you can explore the results of all 5 queries in CSV format here:
[CSV output](/By_type/Data_Analysis/sql_data_jobs_analysis/data_output/)

# Background
This project originated as a final assignment in the SQL course taught by the amazing Luke Baroussse. Check it out here.
[Video](https://www.youtube.com/watch?v=7mz73uXD9DA)

All challenges were proposed in the course, with the main table (used in PostgreSQL) provided by the instructor. My task was to load the table locally and analyze the data using SQL queries, focusing on identifying trends relevant to my area of interest: "data analysis."

Additionally, I took the initiative to create data visualizations using Matplotlib in Python (something not included in the course) as an extra effort to enhance the presentation.

### The five main questions provided by the course were:
- What are the highest-paying jobs for my role?
- What skills are required for these top-paying roles?
- What are the most in-demand skills for my role?
- What are the top skills based on salary for my role?
- What are the most optimal skills to learn? (Optimal: High Demand AND High Paying)

# Tools I Used
For this analysis, I leveraged key skills essential to the data analysis process:

**PostgreSQL**: Used for storing and delivering data.

**SQL**: Applied in a traditional manner to perform queries and extract insights.

**Python**: The primary tool for handling query results (using Pandas) and creating visualizations (using Matplotlib).

**GitHub**: Used for version control and project publication.

**ChatGPT**: Used to assist with problem-solving and code development.


# The Analysis

Each of the five key questions in this analysis was explored using queries to investigate trends and patterns in the Data Analyst job market.

## 1 & 2. Top 10 Most Common Skills in the 10 Highest-Paying Data Analyst Jobs
![Top paying skills in top paying jobs](visualizations/plot_query_1_2.png)
*Each bar represents one of the top 10 most frequent skills in the highest-paying Data Analyst positions. The number on top of each bar indicates how often the skill appears in these roles.*

### Key Insights from Queries 1 & 2:
- **Salary Range:** The salaries among the top 10 highest-paying companies vary between **$184,000 and $650,000**, showing a significant gap even within this exclusive selection. A reasonable estimate for a typical high-paying job would be somewhere between **$200,000 and $300,000**.  

- **Most Commonly Required Skills:**  
  - **60% of the top-paying positions require three of the most widely recognized data skills:**  
    - SQL (**80%**)  
    - Python (**70%**)  
    - Tableau (**60%**)  
  - **Around 50% of these jobs also list other well-known skills** like Excel, R, and Pandas.  

- **Less Common but High-Value Skills:**  
  - Skills like Azure, Jira, AWS, Atlassian, and others appear in lower percentages.  
  - These specialized skills **vary significantly between job postings**, but every high-paying job **requires at least one highly uncommon skill**, setting them apart from general openings.  

## 3. Most in demand skills
![Most in demand skills](visualizations/plot_query_3.png)
*Each bar represents one of the top 5 most in-demand skills across all Data Analyst job postings, and the values above represent the number of occurrences of these skills across all the job listings found.*

### Key Insights from Querie 3:
- The high occurrence of these skills in job descriptions indicates that they are essential for anyone pursuing a career in data analysis. Lacking proficiency in one of them could significantly impact job opportunities, especially in highly competitive roles.
- Notably, SQL appears in 92,000 job postings, with a substantial gap of around 25,000 listings before the second most requested skill, Excel—which is closely followed by Python and Tableau.
- Power BI is also widely mentioned but at a noticeably lower frequency compared to the top three skills.

## 4. Skills Based on Salary
![Skills Based on Salary](visualizations/plot_query_4.png)
## 5. Most Optimal Skills
![Most Optimal Skills](visualizations/plot_query_5.png)

# What i Learned
# Conclusions