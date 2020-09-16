INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);
SELECT * FROM branch;

-- Find all branches and the names of their managers
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;
-- JOIN the data on a specific column where they have in common.  
-- Only combining the data when the employee id equals to the branch manager id

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;

-- LEFT JOIN means that its gonna include all rows from employee

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;
-- RIGHT JOIN means that its gonna include all row from branch

-- SELECT column_name(s)
-- FROM table1
-- FULL OUTER JOIN table2
-- ON table1.column_name = table2.column_name
-- WHERE condition;

-- The FULL OUTER JOIN keyword returns all matching records from both tables 
-- whether the other table matches or not. 
-- So, if there are rows in "Customers" that do not have matches in "Orders", 
-- or if there are rows in "Orders" that do not have matches in "Customers", 
-- those rows will be listed as well.
