-- Employee Count by Department

SELECT
	COUNT(employee_id) AS total_employees,
	department
FROM employees
GROUP BY
	department
ORDER BY
	COUNT(employee_id) DESC;