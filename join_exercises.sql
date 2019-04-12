USE employees;

# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.

SELECT title FROM titles;


SELECT dept_name FROM departments;

SELECT dept_name AS 'Department Name' FROM departments;

SELECT * from dept_manager WHERE to_date = '9999-01-01';

SELECT departments.dept_name as 'Department Name',
CONCAT(employees.first_name, ' ', employees.last_name) as 'Department Manager'
FROM departments
JOIN dept_manager
ON dept_manager.dept_no = departments.dept_no
JOIN employees
ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date > current_date ()
ORDER BY `Department Name`;

# --walk through version
select d.dept_name as 'Department Name', concat(e.first_name, e.last_name)         as 'Department Manager'
from employees e
       join dept_manager dm on e.emp_no = dm.emp_no
       join departments d on dm.dept_no = d.dept_no
where dm.to_date > curdate()
order by d.dept_name;

# Find the name of all departments currently managed by women.
select d.dept_name as 'Department Name', concat(e.first_name, e.last_name)         as 'Department Manager'
from employees e
            join dept_manager dm on e.emp_no = dm.emp_no
            join departments d on dm.dept_no = d.dept_no
where dm.to_date > curdate() and e.gender = 'F'
order by d.dept_name;

# Find the current titles of employees currently working in the Customer Service department.


SELECT t.title, COUNT(title)
FROM titles t
            JOIN dept_emp de ON de.emp_no = t.emp_no
WHERE t.to_date > CURDATE()
  AND dept_no = 'd009'
  AND de.to_date > CURDATE()
GROUP BY t.title;



# Find the current salary of all current managers.

SELECT employees.departments.dept_name AS "Department Name",
       CONCAT(employees.employees.first_name, ' ', employees.employees.last_name)
                                       AS 'Department Manager',
       employees.salaries.salary       AS 'Salary'
FROM departments
            JOIN dept_manager on departments.dept_no = dept_manager.dept_no
            JOIN employees on dept_manager.emp_no = employees.emp_no
            JOIN salaries on dept_manager.emp_no = salaries.emp_no
WHERE employees.dept_manager.to_date = '9999=01-01'
  AND employees.salaries.to_date = '9999=01-01'
ORDER BY dept_name;