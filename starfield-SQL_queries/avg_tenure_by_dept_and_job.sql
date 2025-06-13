SELECT
	department,
	job_title,
	ROUND(AVG(tenure),0) AS average_tenure_years,
	COUNT(employee_id) AS total_employees
FROM
	employees
WHERE
	department IS NOT NULL AND job_title IS NOT NULL
		AND tenure IS NOT NULL
GROUP BY
	department,
	job_title
HAVING
	COUNT(employee_id) > 1
ORDER BY
	department,
	average_tenure_years DESC;