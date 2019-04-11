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


--date, and time down to the minute
SELECT now();

SELECT CONCAT('Fer',' ' ,'Mendoz', ' ', ' Rodriguez');


--ws means white-space
SELECT CONCAT_WS(' ', 'Fer', 'Mendoza', 'Rodriguez');

SELECT CONCAT_WS('-','(210)','123', '345');


--step one for formatting table, see how it appears initially
SELECT * FROM employees;


-- to format a table , this is a temporary output!!! just modifying output at moment of execution
SELECT CONCAT(first_name, ' ', last_name) from employees;

--AS is for alias to save a format as a variable that can be picked up by java

SELECT CONCAT(first_name, ' ', last_name) AS 'full_name' FROM employees ORDER BY full_name;

--store procedures are declaring variables?
--use when you have a really complicated task

-- SET


SELECT *, CONCAT(first_name, ' ', last_name) AS 'full_name' FROM employees;

-- String cols = DB.column.concat

-- SELECT UNIX_TIMESTAMP();
--
-- SELECT CONCAT(
-- 'Teaching people to code for ',
-- (UNIX_TIMESTAMP()-UNIX_TIMESTMP('2014-02-04'))/ 3600,
--  ' mins');


SELECT * FROM salaries;


SELECT avg(salary) AS 'sum of salaries' FROM salaries LIMIT 5;