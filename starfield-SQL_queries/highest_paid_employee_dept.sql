-- Top 5 highest paid employees per department

-- Product & Tech;
SELECT * FROM employees
WHERE department = 'Product & Tech'
ORDER BY 
	salary DESC
LIMIT 5;

-- Finance:
SELECT * FROM employees
WHERE department = 'Finance'
ORDER BY
	salary DESC
LIMIT 5;

-- Sales:
SELECT * FROM employees
WHERE department = 'Sales'
ORDER BY
	salary DESC
LIMIT 5;

-- Human Resources
SELECT * FROM employees
WHERE department = 'Human Resources'
ORDER BY
	salary DESC
LIMIT 5;

-- Leadership:
SELECT * FROM employees
WHERE department = 'Leadership'
ORDER BY
	salary DESC
LIMIT 5;

-- Engineering
SELECT * FROM employees
WHERE department = 'Engineering'
ORDER BY
	salary DESC
LIMIT 5;

-- Marketing
SELECT * FROM employees
WHERE department = 'Marketing'
ORDER BY
	salary DESC
LIMIT 5;