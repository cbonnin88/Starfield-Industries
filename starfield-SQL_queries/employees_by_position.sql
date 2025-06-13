-- Employee by Position
SELECT
	job_title,
	COUNT(employee_id) AS total_employees
FROM
	employees
WHERE
	job_title IS NOT NULL
GROUP BY
	job_title
ORDER BY 
	total_employees DESC;