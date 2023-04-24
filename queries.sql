SELECT s.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM departments.employees as e
INNER JOIN departments.salaries as s
ON s.emp_no = e.emp_no
ORDER BY s.emp_no;

SELECT first_name, last_name, hire_date
FROM departments.employees
WHERE extract(year from hire_date) = 1986;

SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM departments.dept_manager
INNER JOIN departments.departments
ON dept_manager.dept_no = departments.dept_no
INNER JOIN departments.employees
ON dept_manager.emp_no = employees.emp_no
ORDER BY dept_manager.dept_no DESC;

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments.employees as e 
LEFT JOIN departments.dept_emp as de
ON e.emp_no = de.emp_no
INNER JOIN departments.departments as d
ON de.dept_no = d.dept_no
ORDER BY e.emp_no DESC;

SELECT e.first_name, e.last_name, e.sex
FROM departments.employees as e
WHERE e.first_name = 'Hercules' and lower(e.last_name) like 'b%'
ORDER BY e.last_name;

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments.employees as e
INNER JOIN departments.dept_emp as de
ON de.emp_no = e.emp_no
JOIN departments.departments as d
ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments.employees as e
INNER JOIN departments.dept_emp as de
ON de.emp_no = e.emp_no
JOIN departments.departments as d
ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

SELECT e.last_name, COUNT(last_name) AS "last_name_count"
FROM departments.employees as e
GROUP BY last_name
ORDER BY last_name_count DESC;

