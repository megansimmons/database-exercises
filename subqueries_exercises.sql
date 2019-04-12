USE employees;


# Find all the employees with the same hire date as employee 101010 using a sub-query.
#69 rows

SELECT *
FROM employees
WHERE hire_date = (
  SELECT hire_date FROM employees
  WHERE emp_no = '101010'
  );



#
# Find all the titles held by all employees with the first name Aamod.

SELECT *
FROM employees
WHERE first_name = 'Aamod';


SELECT title FROM titles
WHERE emp_no IN (
  select emp_no
  FROM employees
  Where first_name = 'Aamod')

#
# 314 total titles, 6 unique titles
#
# Find all the current department managers that are female.

SELECT * FROM employees
WHERE gender = 'F'
  and emp_no in (select emp_no from dept_manager where to_date > now());

SELECT *
FROM employees JOIN dept_manager dm ON employees.emp_no = dm.emp_no AND dm.to_date > now();



# bonus
SELECT dept_name
FROM departments
WHERE dept_no IN (
  SELECT dept_no
  FROM dept_manager
    JOIN employees e on dept_manager.emp_no = e.emp_no
  WHERE to_date > now()
  ANd e.gender = 'F');

# bonus 2

SELECT * FROM salaries;

SELECT max(salary), emp_no from salaries group by emp_no;

SELEct * from salaries where salaray = 158220;

SELECT emp_no from salaries where salary = (select max(salary) from salaries);