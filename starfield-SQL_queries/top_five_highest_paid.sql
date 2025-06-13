-- Top 5 Highest paid employees overall, excluding the leadership department
SELECT * FROM employees
WHERE department != 'Leadership'
ORDER BY
	salary DESC
LIMIT 5;

