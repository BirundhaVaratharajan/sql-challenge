--check the tables
SELECT * FROM departments;
SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;


--list the employee number, last name, first name, sex, and salary of each employee
select e.emp_no, e.last_name,e.first_name,e.sex,s.salary
from employees e
join  salaries s
on e.emp_no = s.emp_no 
ORDER BY emp_no ASC;

--List the first name, last name, and hire date for the employees who were hired in 1986
select  first_name, last_name, hire_date
from employees e
where hire_date between '01/01/1986' and '12/31/1986'

--List the manager of each department along with their department number, department name,
--employee number, last name, and first name 

select  dm.dept_no,d.dept_name,dm.Emp_no,e.last_name,e.first_name
from  dept_manager dm
join employees e 
on dm.Emp_no = e.emp_no
join departments d
on d.dept_no = dm.dept_no;

--List the department number for each employee along with that employee’s employee number, 
--last name, first name, and department name.
select e.emp_no,e.last_name,e.first_name,d.dept_name
from employees e
join dept_emp
on dept_emp.emp_no = e.emp_no
join departments d
on d.dept_no = dept_emp.dept_no
 


--List first name, last name, and sex of each employee whose first name is Hercules and 
--whose last name begins with the letter B.
select e.first_name,e.last_name,e.sex
from employees e
where first_name = 'Hercules'and last_name ilike 'b%'


--List each employee in the Sales department, including their employee number, 
--last name, and first name.
select e.emp_no,e.last_name,e.first_name,d.dept_name
from employees e 
join dept_emp
on dept_emp.emp_no = e.emp_no
join departments d
on d.dept_no = dept_emp.dept_no 
where d.dept_name = 'Sales'



--List each employee in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.
select e.emp_no,e.last_name,e.first_name,d.dept_name
from employees e 
join dept_emp
on dept_emp.emp_no = e.emp_no
join departments d
on d.dept_no = dept_emp.dept_no 
where d.dept_name in ('Sales','Development')


--List the frequency counts, in descending order, 
--of all the employee last names (that is, how many employees share each last name)
select last_name ,count(last_name) as "frequency"
from employees 
Group by last_name 
order by "frequency" DESC;


