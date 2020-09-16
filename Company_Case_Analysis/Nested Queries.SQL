-- Find names of all employees who have
-- sold over 30,000 dollar to a single client
-- IN keyword

SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
    SELECT works_with.emp_id
    FROM works_with
    WHERE works_with.total_sales > 30000
);

-- Find all clients who are handled by the branch
-- that Michael Scott manages
-- Knowing id of Michael Scott

SELECT client.client_name
FROM client
WHERE client.branch_id IN (
    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = 102
);

-- IF using WHERE client.branch_id = ();
-- to get the value equal
-- better have LIMIT 1 in the end so 
-- it wont return multiple value