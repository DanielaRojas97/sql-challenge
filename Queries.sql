--1.List the employee number, last name, first name, sex, and salary of each employee.
--SELECT employees.first_name, 
--employees.last_name, 
--employees.sex, 
--salaries.salary
--FROM employees
--INNER JOIN salaries ON employees.emp_no = salaries.emp_no;



--2.List the first name, last name, and hire date for the employees who were hired 
--in 1986.
--SELECT TO_DATE(employees.hire_date, 'MM-DD-YYYY') AS converted_date, 
--employees.first_name, 
--employees.last_name,
--employees.hire_date
--from employees
--WHERE EXTRACT(YEAR FROM TO_DATE(employees.hire_date, 'MM-DD-YYYY')) = 1986



--3.List the manager of each department along with their department number,
--department name, employee number, last name, and first name.
--SELECT 
 --   dm.dept_no,
 --   d.dept_name,
 --   dm.emp_no,
 --   e.last_name,
 --   e.first_name
--FROM 
   -- "Dept_manager" dm
--JOIN 
   -- "Departments" d ON dm.dept_no = d.dept_no
--JOIN 
   -- "employees" e ON dm.emp_no = e.emp_no;



--4.List the department number for each employee along with that employee’s 
--employee number, last name, first name, and department name.
--SELECT 
--"Departments".dept_no, 
--"Departments".dept_name, 
--"employees".emp_no,
--"employees".first_name, 
--"employees".last_name	   
--FROM "Dept_emp" 
--JOIN "Departments" ON "Dept_emp".dept_no = "Departments".dept_no
--JOIN "employees" ON "employees".emp_no = "Dept_emp".emp_no;



--5. List first name, last name, and sex of each employee whose first name is 
--Hercules and whose last name begins with the letter B.
--SELECT 
--"employees".first_name,
--"employees".last_name,	
--"employees".sex  
--FROM "employees" 
--WHERE "employees".first_name = 'Hercules' and "employees".last_name LIKE 'B%';



--6.List each employee in the Sales department, including their employee number, 
--last name, and first name.
--SELECT 
--"employees".first_name,
--"employees".last_name,	
--"employees".emp_no,
--"Departments".dept_name
--FROM "employees" 
--JOIN "Dept_emp" ON "employees".emp_no = "Dept_emp".emp_no
--JOIN "Departments" ON "Dept_emp".dept_no = "Departments".dept_no
--WHERE "Departments".dept_name = 'Sales';



 --7. List each employee in the Sales and Development departments, 
 --including their employee number, last name, first name, and department name.
--SELECT 
--"employees".first_name,
--"employees".last_name,	
--"employees".emp_no,
--"Departments".dept_name
--FROM "employees" 
--JOIN "Dept_emp" ON "employees".emp_no = "Dept_emp".emp_no
--JOIN "Departments" ON "Dept_emp".dept_no = "Departments".dept_no
--WHERE "Departments".dept_name = 'Sales' or "Departments".dept_name = 'Development';
 


--8. List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name).
--SELECT "employees".last_name, COUNT(*) AS count
--FROM "employees"
--GROUP BY "employees".last_name
--HAVING COUNT(*) > 1
--ORDER BY count DESC;

