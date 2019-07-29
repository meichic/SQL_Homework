--List the following details of each employee: 
--employee number, last name, first name, gender, and salary.

select e.emp_no, e.last_name, e.first_name, e.gender, s.salary 
	from Employees e join Salaries s on e.emp_no=s.emp_no;
	

--List employees who were hired in 1986.

select e.last_name, e.first_name, e.hire_date 
	from Employees e 
	where e.hire_date between '1/1/1986' and '12/31/1986';
	

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name, 
--and start and end employment dates.

select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, e.hire_date, dm.to_date
	from Departments d 
	right outer join Dept_Managers dm on d.dept_no=dm.dept_no 
	left outer join Employees e on dm.emp_no=e.emp_no;
	

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
	from Departments d 
	join Dept_Employees de on d.dept_no=de.dept_no 
	left outer join Employees e on de.emp_no=e.emp_no;
	
	
--List all employees whose first name is "Hercules" and last names begin with "B."

select first_name, last_name
	from Employees
	where first_name = 'Hercules' and last_name like 'B%'
	

--List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
	from Departments d 
	join Dept_Employees de on d.dept_no=de.dept_no 
	left outer join Employees e on de.emp_no=e.emp_no
	where d.dept_name = 'Sales'	
	
	
--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
	from Departments d 
	join Dept_Employees de on d.dept_no=de.dept_no 
	left outer join Employees e on de.emp_no=e.emp_no
	where d.dept_name = 'Sales'	or d.dept_name = 'Development'
	

--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.

SELect e.last_name, COUNT(last_name) AS "Count of each Last Name"
FROM Employees e
GROUP BY e.last_name
order by "Count of each Last Name" desc



