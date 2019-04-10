USE employees;


SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

SELECT * FROM employees
WHERE (first_name = 'Irena' OR
    first_name = 'Vidya' OR
    first_name = 'Maya') AND gender = 'M';



-- Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT (first_name, ' ', last_name) FROM employees
WHERE last_name LIKE 'E%' OR
last_name LIKE '%E'
;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name DESC;

SELECT * FROM employees
WHERE last_name LIKE 'E%' OR
last_name LIKE '%E'
 ORDER BY emp_no DESC;


-- For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())
SELECT DATEDIFF(curdate(), hire_date) FROM employees
WHERE hire_date LIKE '199%' AND
      birth_date LIKE '%12-25'
      ORDER BY birth_date ASC, hire_date DESC;