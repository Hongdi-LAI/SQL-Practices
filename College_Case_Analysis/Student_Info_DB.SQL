CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(20),
    student_major VARCHAR(20)
    
);

DESCRIBE student;

DROP TABLE student; --delete table called 'student'

ALTER TABLE student ADD gpa DECIMAL(3,2); -- decimal of three total digits with two behind the points X.XX

ALTER TABLE student DROP COLUMN gpa; -- delete column called 'gpa'