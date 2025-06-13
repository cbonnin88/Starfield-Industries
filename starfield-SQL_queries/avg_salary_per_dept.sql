-- Average Salary by Gender per Department
SELECT
	ROUND(AVG(salary),2) AS avg_salary,
	gender,
	department
FROM
	employees
GROUP BY
	gender,
	department
ORDER BY
	department,
	avg_salary DESC;