-- a
SELECT manager_id, COUNT(*)
FROM Employees
GROUP BY manager_id;

-- b
SELECT department_id, COUNT(*)
FROM Employees
WHERE salary > 3000
GROUP BY department_id;

-- c
SELECT department_id,
MIN(salary) minimum_salary,
MAX(salary) maximum_salary, 
AVG(salary) average_salary
FROM Employees
WHERE department_id <> 80
GROUP BY department_id
ORDER BY AVG(salary) DESC, MAX(salary) DESC, MIN(salary) DESC;