-- Employee Tenure
SELECT
	employee_id,
	first_name,
	last_name,
	tenure AS tenure_years
FROM
	employees
WHERE 
	tenure IS NOT NULL
ORDER BY 
	tenure DESC;
