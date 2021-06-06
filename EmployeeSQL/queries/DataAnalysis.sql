SELECT * FROM employees

SELECT * FROM salaries

SELECT * FROM dept_manager

SELECT * FROM departaments

SELECT * FROM dept_emp

-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s. salary
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no=s.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE extract('year' from hire_date)=1986;

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
SELECT m.dept_no, d.dept_name, m.emp_no, e.first_name, e.last_name
FROM dept_manager AS m inner join departaments AS d ON m.dept_no=d.dept_no
INNER JOIN employees AS e ON m.emp_no=e.emp_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e INNER JOIN dept_emp as p ON e.emp_no=p.emp_no
INNER JOIN departaments AS d ON d.dept_no=p.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e INNER JOIN dept_emp as p ON e.emp_no=p.emp_no
INNER JOIN departaments AS d ON d.dept_no=p.dept_no
WHERE d.dept_name='Sales';

-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e INNER JOIN dept_emp as p ON e.emp_no=p.emp_no
INNER JOIN departaments AS d ON d.dept_no=p.dept_no
WHERE d.dept_name='Sales' OR d.dept_name='Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, count(emp_no) AS count
FROM employees
GROUP BY last_name
ORDER BY count DESC;






