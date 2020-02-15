-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
From employees as e join salaries as s on e.emp_no = s.emp_no;

-- 2. List employees who were hired in 1986.
select * from employees where hire_date LIKE '1986-%';

-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, s.from_date, s.to_date
From dept_manager as m join departments as d on m.dept_no = d.dept_no
Join employees as e on m.emp_no = e.emp_no
Join salaries as s on s.emp_no = e.emp_no;

-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
From employees as e join dept_emp on e.emp_no = dept_emp.emp_no
Join departments as d on dept_emp.dept_no = d.dept_no;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
select * from employees where first_name = 'Hercules' AND last_name LIKE 'B%';


-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
From employees as e join dept_emp on e.emp_no = dept_emp.emp_no
Join departments as d on dept_emp.dept_no = d.dept_no
WHERE dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
From employees as e join dept_emp on e.emp_no = dept_emp.emp_no
Join departments as d on dept_emp.dept_no = d.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name)
From employees
Group by last_name
order by count(last_name) desc;
