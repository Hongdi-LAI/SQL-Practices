CREATE TABLE trigger_test(
    message VARCHAR(100)
);

-- A DELIMITER IS SOMETHING LIKE ';'
-- DELIMITER HAS BEEN CHANGED TO '$$' IN THIS CASE
-- NEED TO BE EXECUTED IN MYSQL Command line client 

-- TRIGGER my_trigger BEFORE/AFTER INSERT/DELETE/UPDATE

DELIMITER $$
CREATE
    TRIGGER my_trigger BEFORE INSERT 
    ON employee
    FOR EACH ROW BEGIN
        IF NEW.sex = 'M' THEN
            INSERT INTO trigger_test VALUE('Added male employee');
        ELSEIF NEW.sex = 'F' THEN
            INSERT INTO trigger_test VALUE('Added female employee');
        ELSE 
            INSERT INTO trigger_test VALUE('Added another employee');
        END IF;
    END$$
DELIMITER ;
--CHANGING THE DELIMITER BACK TO ';'

INSERT INTO employee
VALUES(110, 'Kevin', 'Malone', '1978-02-19', 'M', 69000, 106, 3);