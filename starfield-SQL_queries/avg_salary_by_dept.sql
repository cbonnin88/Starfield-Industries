-- Average Salary by Department
SELECT
	ROUND(AVG(salary),2) AS avg_salary,
	department
FROM	
	employees
GROUP BY
	department
ORDER BY
	avg_salary DESC;