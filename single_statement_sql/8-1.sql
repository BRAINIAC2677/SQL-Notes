-- extra practise
CREATE TABLE Student
(
    sid NUMBER(10, 0),
    name VARCHAR2(50),
    bdate DATE DEFAULT SYSDATE
);

--ea
INSERT INTO Student(sid, name, bdate)
VALUES(2677, 'Asif Azad', TO_DATE('19 JAN, 2001', 'DD MON, YYYY'));

--eb
INSERT INTO Student
VALUES(2674, 'Ashiquzzaman',  TO_DATE('1 SEPTEMBER, 2000', 'DD MON, YYYY'));

--ec
INSERT INTO Student(sid)
VALUES(2673);

SELECT * FROM Student;

CREATE TABLE Person
(
    nid NUMBER(10, 0),
    name VARCHAR2(50)
);

--ed
INSERT INTO Person
SELECT sid, name
FROM Student
WHERE name IS NOT NULL;

SELECT * FROM Person;

DROP TABLE Student;
DROP TABLE Person;


