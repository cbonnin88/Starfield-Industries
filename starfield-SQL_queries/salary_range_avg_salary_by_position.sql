-- Salary Range and Average Salary by Position
SELECT
	job_title,
	COUNT(employee_id) AS total_employee_in_position,
	MIN(salary) AS min_salary,
	MAX(salary) AS max_salary,
	ROUND(AVG(salary),2) AS avg_salary_in_position
FROM
	employees
WHERE
	salary IS NOT NULL
		AND job_title IS NOT NULL
		AND department != 'Leadership'
GROUP BY
	job_title
ORDER BY
	avg_salary_in_position DESC;