-- % = any number of characters, _ = one character

-- Find any client's who are an LLC

SELECT *
FROM client
WHERE client_name LIKE '%LLC';
-- LIKE'%LLC' means any number of characters can come before LLC as long as LLC as an end

-- Find any branch suppliers who are in the label business
SELECT *
FROM branch_supplier
WHERE supplier_name LIKE '%Lab%';
-- LIKE '%Lab%' means any number of characters can come before and after 'Lab'

-- Find any employee born in October
SELECT *
FROM employee
WHERE birth_day LIKE '____-10%';

-- Four consecutive '_' represent the year 'YYYY' and then specifies the month 

