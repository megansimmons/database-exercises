use employees;

# --if don't care about what comes after 1985, use a wildcard %
select hire_date from employees
where hire_date LIKE '1985%';


# --wrap pieces of text in wildcards, sus can appear in any part of name
SELECT first_name
FROM employees
WHERE first_name LIKE '%sus%';


SELECT *
FROM employees
WHERE hire_date BETWEEN '%04-01'
AND '%04-30';

SELECT *
FROM employees
WHERE hire_date like
      '%-04-%';

SELECT emp_no, first_name, last_name
FROM employees
where last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no < 10026;

SELECT * FROM titles;

SELECT * FROM titles
WHERE to_date IS NOT NULL;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name IN ('Herber','Baek')
  AND emp_no < 20000;