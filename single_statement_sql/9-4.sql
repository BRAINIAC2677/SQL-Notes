-- extra practise
-- ea
CREATE TABLE Person
(
    nid NUMBER(10, 0)
);

ALTER TABLE Person
ADD name VARCHAR2(50);

DESCRIBE Person;

ALTER TABLE Person
DROP COLUMN nid;

DESCRIBE Person;

DROP TABLE Person;