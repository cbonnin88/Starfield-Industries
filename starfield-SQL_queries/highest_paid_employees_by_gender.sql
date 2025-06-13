-- Five Highest paid male employees (excluding leadership)
SELECT * FROM employees
WHERE gender = 'Male'
	AND department != 'Leadership'
ORDER BY
	salary DESC
LIMIT 5;

-- Five Highest paid female employees (excluding leadership)
SELECT * FROM employees
WHERE gender = 'Female'
	AND department != 'Leadership'
ORDER BY 
	salary DESC
LIMIT 5;