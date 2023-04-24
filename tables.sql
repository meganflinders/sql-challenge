DROP TABLE IF EXISTS departments.departments CASCADE;
DROP TABLE IF EXISTS departments.dept_emp CASCADE;
DROP TABLE IF EXISTS departments.dept_manager CASCADE;
DROP TABLE IF EXISTS departments.employees CASCADE;
DROP TABLE IF EXISTS departments.salaries CASCADE;
DROP TABLE IF EXISTS departments.titles CASCADE;

CREATE TABLE departments.titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)
);
SELECT * FROM departments.titles LIMIT 10;

CREATE TABLE departments.departments (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY (dept_no)
);

SELECT * FROM departments.departments LIMIT 10;

CREATE TABLE departments.employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

SELECT * FROM departments.employees LIMIT 10;

CREATE TABLE departments.salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES departments.employees(emp_no)
);

SELECT * FROM departments.salaries LIMIT 10;

CREATE TABLE departments.dept_emp  (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES departments.employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments.departments(dept_no)
);

SELECT * FROM departments.dept_emp LIMIT 10;

CREATE TABLE departments.dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments.departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES departments.employees(emp_no)
);

SELECT * FROM departments.dept_manager LIMIT 10;
