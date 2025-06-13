-- Employee count by gender per department
SELECT
	COUNT(employee_id) AS total_employees,
	department,
	gender
FROM
	employees
GROUP BY
	department,
	gender
ORDER BY
	department,
	gender;