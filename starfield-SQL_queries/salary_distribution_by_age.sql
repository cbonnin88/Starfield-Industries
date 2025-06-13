-- Salary Distribution by Age Group
SELECT
	CASE
		WHEN age BETWEEN 18 AND 25 THEN '18-25'
		WHEN age BETWEEN 26 AND 35 THEN '26-35'
		WHEN age BETWEEN 36 AND 45 THEN '36-45'
		WHEN age BETWEEN 46 AND 55 THEN '46-55'
		WHEN age > 55 THEN '55+'
		ELSE 'Unknown'
	END AS age_group,
	COUNT(employee_id) AS total_employees,
	ROUND(AVG(salary),2) AS avg_salary
FROM
	employees
WHERE 
	age IS NOT NULL
GROUP BY
	age_group
ORDER BY
	age_group;