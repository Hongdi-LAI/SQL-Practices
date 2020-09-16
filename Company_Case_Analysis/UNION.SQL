-- Find a list of employee and branch names
SELECT first_name AS company_names
FROM employee
UNION
SELECT branch_name
FROM branch
UNION 
SELECT client_name
FROM client;

-- branch name be adding to the end of the employee list
-- UNION needs same column to add and same data type ('INT' and '')

-- Find a list of all clients & branch suppliers' name
SELECT client_name, client.branch_id
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;