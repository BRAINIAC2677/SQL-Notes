-- extra practise
-- ea
CREATE TABLE Person
(
    nid NUMBER(10, 0),
    name VARCHAR2(50),
    bdate DATE DEFAULT SYSDATE
);

INSERT INTO Person
VALUES(12345, 'Asif Azad', TO_DATE('19 JAN, 2001', 'DD MON, YYYY'));

SELECT * FROM Person;

DROP TABLE Person;

-- eb
CREATE TABLE Emp
AS 
SELECT last_name, phone_number, salary
FROM Employees;

SELECT * FROM Emp;

DROP TABLE Emp;