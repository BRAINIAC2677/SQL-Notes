-- a
SELECT employee_id
FROM Employees
MINUS
(
    SELECT manager_id
    FROM Employees
);

-- b
SELECT last_name
FROM Employees
MINUS
(
    SELECT last_name
    FROM Employees
    WHERE employee_id = ANY
    (
        SELECT manager_id
        FROM Employees
    )
);

-- c
SELECT location_id
FROM Locations
MINUS 
(
    SELECT location_id
    FROM Departments
);