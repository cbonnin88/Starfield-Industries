CREATE TABLE employees(
	employee_id INT PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	age INT,
	tenure INT,
	hire_date DATE,
	gender VARCHAR(10),
	region VARCHAR(100),
	job_title VARCHAR(100),
	department VARCHAR(50),
	manager VARCHAR(10),
	hours INT,
	salary_band VARCHAR(10),
	salary NUMERIC(15,2),
	performance VARCHAR(50),
	satisfaction NUMERIC(3,1)
);