SELECT employee_id, last_name, salary
FROM employees
WHERE salary BETWEEN 2000 AND 5000 AND
manager_id NOT IN(101, 200);


SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee_name, d.department_name AS Department_name
FROM employees e
JOIN departments d
WHERE e.department_id = d.department_id
ORDER BY d.department_name;


SELECT department_id, COUNT(employee_id) AS NO_of_employees, AVG(salary) AS Average_Salary
FROM employees 
GROUP BY department_id;


