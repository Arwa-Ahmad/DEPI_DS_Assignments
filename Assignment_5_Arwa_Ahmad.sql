SELECT * FROM employees;


SELECT e.employee_id,
CONCAT(e.first_name, ' ', e.last_name) AS full_name,
e.department_id
FROM employees e 
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
WHERE e.department_id = d.department_id
AND l.location_id = d.location_id;



SELECT DISTINCT department_id 
FROM employees;



CREATE TABLE students (
id INT PRIMARY KEY NOT NULL,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL DEFAULT 'Unknown',
address VARCHAR(100) DEFAULT 'N/A', 
city VARCHAR(20) DEFAULT 'N/A', 
birth_date DATE
);

DROP TABLE students;


INSERT INTO students VALUES (
1,
'Ahmed',
'Ali',
'Downtown',
'Cairo',
'1995-01-01');

UPDATE students
SET address = 'Garden City'
WHERE first_name = 'Ahmed';


DELETE FROM students
WHERE city = 'Cairo';
ROLLBACK;



