WITH CompanyAvgSalary AS(
	SELECT
		ROUND(AVG(salary),2) AS overall_avg_salary
	FROM employees
	WHERE
		salary IS NOT NULL
)
SELECT
	e.department,
	ROUND(AVG(e.salary),2) AS department_avg_salary,
	cas.overall_avg_salary,
	(ROUND(AVG(e.salary),2)- cas.overall_avg_salary) AS difference_from_company_avg
FROM
	employees e,
	CompanyAvgSalary cas
WHERE
	e.salary IS NOT NULL AND e.department IS NOT NULL
GROUP BY
	e.department,
	cas.overall_avg_salary
ORDER BY
	difference_from_company_avg DESC;