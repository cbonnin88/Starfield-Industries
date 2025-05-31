![starfield_logo](https://github.com/user-attachments/assets/283b7db9-c9e8-4196-afcd-e48558a65a5a)

# About Starfield
Starfield is one of the leading companies that specializes in renewable energy solutions based in Paris. As Starfield wants to expand it's operations in the UK and Norway, understanding its most valuable asset – its diverse workforce – becomes paramount. This HR data analysis project aims to provide actionable insights into employee demographics, performance, and compensation, supporting strategic human resources management for an interstellar future.

# About this project
This project demonstrates a complete end-to-end HR data analysis workflow, from initial data exploration and cleaning to database management and interactive dashboard visualization. The goal is to extract meaningful insights from an HR dataset to understand employee demographics, performance, and compensation trends.

# Project Phases & Technologies Used
This project is structured into three main phases, utilizing a powerful combination of tools:

- Python: For data manipulation, cleaning, and initial exploratory data analysis (EDA) and the Polars Library was used as well.
- PostgreSQL: For data storage, advanced querying, and preparing data for business intelligence tools.
- Looker Studio: For creating an interactive dashboard.

# Dataset
The project used the [Starfield HR Dataset](https://drive.google.com/file/d/1pAE3Knjo4JSSY4vVi8DwBFkIEU6vlRDT/view?usp=sharing) containing various employee attributes such the employees first and last name, employee ID, age, hire date, tenure, salary, department, and salary band satisfaction with the company

# Phase 1: Data Exploration & Visualization with Python
In this phase, Python was used to load, clean and perform inital exploratory analysis on the HR dataset

# Key Activities:
 - Data Loading : The starfield_HR.csv file was loaded into a Polars DataFrame.
 - Data Cleaning & Tranformation:
     Standardized column names (e.g., converting to lowercase, replacing spaces with underscores).
     Handled missing values (e.g., filling 'department' with 'Unknown').
     Corrected data types (e.g., ensuring hire_date is a Date type, salary is a Float).

 - Exploratory Data Analysis & Visualization (Plotly):
   
    - Employee Distribution by Department: Bar chart showing the number of employees in each department.
![Employee_distribution](https://github.com/user-attachments/assets/6acd3830-7e68-4f2b-bb49-357c43f8c21c)

    - Age Distribution of Employees: Histogram visualizing the age demographics, with custom bar spacing for clarity.
![Employee_age_distribution](https://github.com/user-attachments/assets/9a7df5dc-58c9-4d28-a98b-5bcefb551cad)

    - Salary Band Distribution: Histogram showing the spread of salary bands across the company.
![Salary Band Distribution](https://github.com/user-attachments/assets/71e4b12e-e5df-4ae7-98d3-8285f5d06fa2)

    - Average Salary by Department: Bar chart comparing average compensation across different departments.
![Average_Salary_by_depart](https://github.com/user-attachments/assets/5da6eb81-cc4e-417e-86e5-65f1f0e82777)

    - Performance Rating Distribution: Bar chart showing the breakdown of 'Top', 'Average', and 'Bottom' performance ratings.
![Performance_rating_Distribution](https://github.com/user-attachments/assets/fe4af462-e7bb-445b-8fe2-364f0ac7ba2b)

    - Salary vs. Tenure: Scatter plot to identify potential correlations between an employee's tenure and their salary.
![Salary_vs_Tenure](https://github.com/user-attachments/assets/1cfa9398-a38e-4012-a9c2-49c256597919)

    - Employees Hired Per Year: Bar chart illustrating annual hiring trends.
![Employee Hired per Year](https://github.com/user-attachments/assets/0b088327-4694-4667-b243-88c98c76f564)


# Tools:
  - Polars : A fast DataFrame library for efficient data manipulation
  - Poltly Express : A Python library for creating interactive, publication-quality statistical graphics

# Phase 2: Data Management & Advanced Analysis with PostgreSQL
This phase focuses on setting up a relational database to store the HR data and performing more complex analytical queries using SQL.

# Key Activities
  - Database Setup: Created a Database called starfield_HR and an employees table with the appropriate data types for each column
  - Data Import : Imported the cleaned starfield_HR csv into the employees table using pgadmin4, handling specific date formats (YYYY-MM-DD)
  - SQL Analysis: Executed various SQL queries to gain deeper insights :
    
     - Employee count and average salary by department
     - Salary distribution by age group
     - Employees hired per year
     - Top Five highest paid employees (excluding Leadership positions)
     - Employees with below-average performance rating within their department (handling categorical performance ratings by assigning numerical scores).
     - Gender distribution within departments.
     - Average tenure by department and position.
     - Average age of males and females in the company.
     - Analysis of salary range and average salary by position.
     - Performance rating distribution by tenure group.
     - Identification of employees with high salary and 'Bottom' performance ratings.
     - Comparison of departmental average salary vs. overall company average.
     - Data quality checks (e.g., identifying duplicate employee IDs).

# Tools
 - PostgreSQL: An open-source relational database system
 - SQL: Structured Query Language for data definition and manipulation

# Phase 3: [Dashboarding with Looker Studio](https://lookerstudio.google.com/reporting/d337749f-4cce-4fd8-9201-1db01acb0b17)
The final phase involves connecting the PostgreSQL database to Looker Studio to create an interactive and visually appealing dashboard for business users.

# Key Activites:
  - Database Source Connection: Established a live connection between Looker Studio and the googlesheets starfield_HR.csv.
  - Field Configuration: Reviewed and adjusted data types and default aggregations for all fields in Looker Studio.
  - Calculated Fields: Created custom calculated fields within Looker Studio for:
      - Age Grouping: Categorizing employees into age bins (e.g., '18-25', '26-35') for better visualization.
      - Age Group Order: Assigning numerical values to age groups to ensure correct sorting in charts.
      - Performance Rating Order: Assigning numerical values to 'Bottom', 'Average', 'Top' ratings for proper sorting.

  - Dashboard Creation: Designed and built a comprehensive HR dashboard featuring:
      - Bar charts for employee distribution by department, average salary by department, and employees hired per year.
      - Histograms/column charts for age distribution and performance rating distribution.
      - Scatter charts for visualizing salary vs. tenure for individual employees.
      - Pie charts for gender distribution.
      - Scorecards for key performance indicators (e.g., total employees, average salary, average tenure).
      - Bar/Table charts showing average age by gender.
   
  - Interactivity: Added controls like dropdown filters for departments and sliders for age/tenure to allow users to dynamically explore the data.
  - Styling & Layout: Arranged charts logically and applied consistent styling for a professional look.

# Tools:
 - Looker Studio: A free, web-based data visualization and BI tool

# Based on the HR data analysis for Starfield, here are several areas where the company could potentially improve:
1. Compensation Equity and Performance Alignment:
 - Actionable Insight: The analysis of "Employees with High Salary and 'Bottom' Performance Rating" is a critical area. Starfield should investigate these specific cases to understand why high compensation isn't aligning with performance. This might involve re-evaluating performance management processes, providing targeted development plans, or reviewing compensation structures for these roles.
   
 - Further Analysis: Dive deeper into "Average Salary by Department" and "Salary Range and Average Salary by Position." Are there significant disparities that aren't justified by market rates or role complexity? This could indicate a need for a compensation review to ensure fairness and competitiveness.

2. Talent Retention and Tenure:
 - Actionable Insight: The "Average Tenure by Department and Position" analysis can reveal departments or roles with unusually low average tenure. If certain areas show a high turnover rate (low tenure), Starfield should investigate the underlying causes, such as workload, management style, career development opportunities, or compensation in those specific areas.
   
 - Further Analysis: Correlate tenure with performance ratings. Are long-tenured employees consistently high performers, or is there a drop-off? This could inform retention strategies and development programs for different career stages.

3. Workforce Planning and Hiring Trends:
 - Actionable Insight: The "Employees Hired Per Year" analysis provides a historical view of growth. If recent hiring numbers are significantly lower than previous years, and the company is expanding, Starfield might need to ramp up recruitment efforts to meet future interstellar demands. Conversely, a sudden spike might require additional resources for onboarding and integration.
   
4. Performance Management Consistency:
 - Actionable Insight: While the "Performance Rating Distribution" shows the overall breakdown, if the distribution seems unusually skewed (e.g., almost everyone is "Average" or "Top" with very few "Bottom"), it might indicate a lack of rigor or consistency in the performance review process. Starfield could benefit from training for managers on objective performance evaluations and clear rating criteria.
   
5.Diversity and Inclusion (Gender):
 - Actionable Insight: The "Gender Distribution within Departments" and "Average Age by Gender" analyses can highlight areas where certain departments lack gender diversity or where there are significant age differences between genders. Starfield could then set targets for improving representation in underrepresented departments or roles and promote inclusive hiring practices.

By focusing on these areas, Starfield can leverage its HR data to make more informed decisions, optimize its workforce, and ensure it has the right talent to achieve its interstellar renewable energy goals.


# Conclusion:
This project provides me with  a practical foundation for breaking into HR Data Analysts, covering essential skills in data handling, database management, and data visualization. The resulting Looker Studio dashboard serves as a powerful tool for HR departments to monitor key metrics, identify trends, and make data-driven decisions regarding workforce management, compensation, and employee development.
Not only could this project and the skills that it helped me work with, be used in a purely HR Data Analyst function, but also for other HR positions, for example Talent Acquisition or recruiting.



 


