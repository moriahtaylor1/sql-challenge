-- 1. employee number, last name, first name, sex, and salary.
SELECT E.emp_no, last_name, first_name, sex, salary
FROM employees AS E
JOIN salaries AS S
	ON E.emp_no = S.emp_no
;
	
-- 2. first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986
;

-- 3. manager of each department with: department number, department name, the manager's employee number, last name, first name.
SELECT mgr.dept_no, d.dept_name, mgr.emp_no, last_name, first_name
FROM dept_manager AS mgr
JOIN employees AS e
	ON mgr.emp_no = e.emp_no
JOIN departments AS d
	ON mgr.dept_no = d.dept_no
;

-- 4. department of each employee with: employee number, last name, first name, and department name.
SELECT e_dept.dept_no, e.emp_no, last_name, first_name, dept.dept_name
FROM employees AS e
JOIN dept_emp AS e_dept
	ON e.emp_no = e_dept.emp_no
JOIN departments AS dept
	ON e_dept.dept_no = dept.dept_no
;

-- 5. first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name='Hercules'
AND last_name LIKE 'B%'
;

-- 6. all employees in the Sales department with their employee number, last name, first name, and department name.
SELECT e.emp_no, last_name, first_name, dept.dept_name
FROM employees AS e
JOIN dept_emp AS e_dept
	ON e.emp_no = e_dept.emp_no
JOIN departments AS dept
	ON e_dept.dept_no = dept.dept_no
WHERE dept.dept_name = 'Sales'
;

-- 7. all employees in the Sales and Development departments with their employee number, last name, first name, and department name.
SELECT e.emp_no, last_name, first_name, dept.dept_name
FROM employees AS e
JOIN dept_emp AS e_dept
	ON e.emp_no = e_dept.emp_no
JOIN departments AS dept
	ON e_dept.dept_no = dept.dept_no
WHERE dept.dept_name = 'Sales'
OR dept.dept_name = 'Development'
;

-- 8. list the frequency count of employee last names (how many employees share each last name) in descending order
