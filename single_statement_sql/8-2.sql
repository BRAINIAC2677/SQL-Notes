-- a
CREATE TABLE Emp
AS
SELECT * FROM Employees;

UPDATE Emp 
SET commission_pct = 0
WHERE commission_pct IS NULL;

DROP TABLE Emp;

-- extra practise
-- ea
CREATE TABLE Emp
AS
SELECT * FROM Employees;

UPDATE Emp 
SET salary = (SELECT MAX(salary) FROM Emp);

DROP TABLE Emp;