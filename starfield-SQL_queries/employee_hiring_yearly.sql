-- Employees Hired per Year
SELECT
	EXTRACT(YEAR FROM hire_date) AS hiring_year,
	COUNT(employee_id) AS employees_hired
FROM
	employees
WHERE
	hire_date IS NOT NULL
GROUP BY
	hiring_year
ORDER BY
	hiring_year DESC;
	