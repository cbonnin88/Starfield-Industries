-- Average Salary by Gender
SELECT
	ROUND(AVG(salary),2) AS avg_salary,
	gender
FROM
	employees
GROUP BY
	gender
ORDER BY 
	avg_salary DESC;