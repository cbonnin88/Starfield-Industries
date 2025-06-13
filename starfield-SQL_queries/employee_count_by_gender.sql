-- Employee Count by Gender
SELECT 
	count(gender) AS total_employee_gender,
	gender
FROM
	employees
GROUP BY
	gender
ORDER BY
	COUNT(gender)DESC;