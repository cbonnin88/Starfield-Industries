-- Performance Rating Distribution by Tenure Group
SELECT
	CASE
		WHEN tenure BETWEEN 0 AND 1 THEN '0-1 Year'
		WHEN tenure BETWEEN 2 AND 5 THEN '2-5 Years'
		WHEN tenure BETWEEN 6 AND 10 THEN '6-10 Years'
		WHEN tenure > 10 THEN '10+ Years'
		ELSE 'Unkown'
	END AS tenure_group,
	performance,
	COUNT(employee_id) AS total_employees
FROM
	employees
WHERE
	tenure IS NOT NULL AND performance IS NOT NULL
GROUP BY
	tenure_group,
	performance
ORDER BY
	tenure_group,
	CASE
		WHEN performance = 'Top' THEN 1
		WHEN performance = 'Average' THEN 2
		WHEN performance = 'Bottom' THEN 3
		ELSE 4
	END;