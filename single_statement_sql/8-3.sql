-- a
CREATE TABLE Emp
AS 
SELECT * FROM Employees;

DELETE FROM Emp 
WHERE salary < 5000;

DROP TABLE Emp;

-- b
CREATE TABLE Loc
AS
SELECT * FROM Locations;

DELETE FROM Locations 
WHERE location_id NOT IN (
    SELECT DISTINCT location_id 
    FROM Departments
);

DROP TABLE Loc;

-- c
CREATE TABLE Emp
AS 
SELECT * FROM Employees;

DELETE FROM Emp 
WHERE hire_date < TO_DATE('2005', 'YYYY');

DROP TABLE Emp;