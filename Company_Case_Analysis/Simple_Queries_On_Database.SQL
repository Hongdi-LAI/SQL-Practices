--Find All Empolyees
SELECT * 
FROM employee;

--Find All Employees order by salary

SELECT *
FROM employee
ORDER BY salary DESC;

--Find All Employees order by sex and then name

SELECT *
FROM employee
ORDER BY sex, first_name,last_name;

--Find the first 5 employees in the table

SELECT *
FROM employee
LIMIT 5;

--Find the first and last name of all employees, naming the 'first_name' as Forename and 'last_name' as Surname

SELECT first_name AS Forename, last_name AS Surname
FROM employee;

--Find out all the different Genders

SELECT DISTINCT sex
FROM employee;

--Find All Clients
SELECT *
FROM client;