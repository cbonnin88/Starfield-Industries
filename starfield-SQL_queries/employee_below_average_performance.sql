-- Employees with Below Average Performance
WITH DepartmentAvgPerformance AS (
	SELECT
		department,
		ROUND(AVG(CASE
				WHEN performance = 'Top' THEN 3.0
				WHEN performance = 'Average' THEN 2.0
				WHEN performance = 'Bottom' THEN 1.0
				ELSE NULL
			 END),1) AS avg_dept_performance_score
	FROM
		employees
	WHERE
		performance IS NOT NULL
	GROUP BY
		department
),
EmployeePerformanceScore AS(
	SELECT
		employee_id,
		first_name,
		last_name,
		department,
		performance,
		CASE
			WHEN employees.performance = 'Top' THEN 3.0
			WHEN employees.performance = 'Average' THEN 2.0
			WHEN employees.performance = 'Bottom' THEN 1.0
			ELSE NULL
		END AS employee_performance_score
	FROM
		employees
	WHERE
		performance IS NOT NULL
	
)
SELECT
	eps.employee_id,
	eps.first_name,
	eps.last_name,
	eps.department,
	eps.performance,
	dap.avg_dept_performance_score
FROM
	EmployeePerformanceScore eps
JOIN
	DepartmentAvgPerformance dap ON eps.department = dap.department
WHERE
	eps.employee_performance_score < dap.avg_dept_performance_score
ORDER BY
	eps.department,
	eps.employee_performance_score DESC;
	
