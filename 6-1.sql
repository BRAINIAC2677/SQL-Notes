-- a1
SELECT last_name
FROM Employees
WHERE department_id = 
(
    SELECT department_id
    FROM Departments
    WHERE UPPER(department_name) = 'SALES'
);

-- a2
SELECT last_name 
FROM Employees E, Departments D 
WHERE (E.department_id = D.department_id)
AND UPPER(D.department_name) = 'SALES';

-- b
SELECT last_name, salary
FROM Employees
WHERE salary > ANY 
(
    SELECT salary
    FROM Employees
    WHERE department_id = 
    (
        SELECT department_id
        FROM Departments
        WHERE UPPER(department_name) = 'SALES'
    )
)
ORDER BY salary;

-- c
SELECT last_name, salary
FROM Employees
WHERE salary > ALL 
(
    SELECT salary
    FROM Employees
    WHERE department_id = 
    (
        SELECT department_id
        FROM Departments
        WHERE UPPER(department_name) = 'SALES'
    )
)
ORDER BY salary;

-- d
SELECT last_name, salary
FROM Employees
WHERE salary BETWEEN 
(
    SELECT AVG(salary)
    FROM Employees
    WHERE department_id = 
    (
        SELECT department_id
        FROM Departments
        WHERE UPPER(department_name) = 'SALES'
    )
) - 5000
AND 
(
    SELECT AVG(salary)
    FROM Employees
    WHERE department_id = 
    (
        SELECT department_id
        FROM Departments
        WHERE UPPER(department_name) = 'SALES'
    )
) + 5000
ORDER BY salary;


-- extra practise
-- ea
SELECT AVG(salary), MIN(salary), MAX(salary)
FROM Employees
WHERE department_id = 
(
    SELECT department_id
    FROM Departments
    WHERE UPPER(department_name) = 'SALES'
);

