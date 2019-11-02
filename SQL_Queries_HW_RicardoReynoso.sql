-- List the following details of each employee: employee number, last name, first name, gender, and salary.
-- Get from Employees data and from salaries the income:

SELECT employee.emp_no, employee.last_name, employee.first_name, employee.gender, salary.salary
FROM employees AS employee
JOIN salaries AS salary
ON employee.emp_no = salary.emp_no;

--2. Get those employees who were hired after 1986:

SELECT *
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

-- 3. list the manager acoording as required:

SELECT dept.dept_no, dept.dept_name, deptman.emp_no, employee.first_name, employee.last_name, deptman.from_date, deptman.to_date
FROM departments AS dept
JOIN dept_manager AS deptman
ON dept.dept_no = dept.dept_no
JOIN employees AS employee
ON deptman.emp_no = employee.emp_no;

---- 4. List the department of each employee with the following:

SELECT dept.dept_name,employee.emp_no,employee.last_name, employee.first_name 
FROM employees AS employee
JOIN dept_emp AS deptemp
ON employee.emp_no = deptemp.emp_no
JOIN departments AS dept
ON deptemp.dept_no = dept.dept_no;

---5. List all employees whose first name is "Hercules" and last names begin with "B."

SELECT employee.first_name, employee.last_name
FROM employees AS employee
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

 
-- 6. List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.

SELECT employee.emp_no, employee.last_name, employee.first_name, dept.dept_name
FROM employees AS employee
JOIN dept_emp AS deptemp
ON employee.emp_no = deptemp.emp_no
JOIN departments AS dept
ON deptemp.dept_no = dept.dept_no;

---- 7. List all employees in the Sales and Development departments:

SELECT employee.emp_no, employee.last_name, employee.first_name, dept.dept_name
FROM employees AS employee
JOIN dept_emp AS deptemp
ON employee.emp_no = deptemp.emp_no
JOIN departments AS dept
ON deptemp.dept_no = dept.dept_no
WHERE dept.dept_name = 'Sales' 
OR dept.dept_name = 'Development';

---8. In descending order, list the frequency count of employee last names, 

SELECT last_name,
COUNT (last_name) AS "frecuency"
FROM employees 
GROUP BY last_name
ORDER BY frecuency DESC;


------END OF CODING---------------------------------------------------