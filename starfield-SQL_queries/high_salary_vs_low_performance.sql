-- Employees with High Salaries and 'Bottom' performance rate
SELECT * FROM employees
WHERE
	performance = 'Bottom' AND salary >(SELECT ROUND(AVG(salary),2) FROM employees)
ORDER BY
	salary DESC;