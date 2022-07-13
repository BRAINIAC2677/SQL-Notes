-- extra practise
-- ea1
CREATE TABLE Person
(
    nid NUMBER(10, 0) CONSTRAINT PK PRIMARY KEY,
    name VARCHAR2(50) CONSTRAINT NAME_NOT_NULL NOT NULL,
    bdate DATE CONSTRAINT BDATE_UNIQUE UNIQUE
);

DROP TABLE Person;

--ea2
CREATE TABLE Person
(
    nid NUMBER(10, 0) PRIMARY KEY,
    name VARCHAR2(50) NOT NULL,
    bdate DATE UNIQUE
);

DROP TABLE Person;

--eb1
CREATE TABLE Person
(
    nid NUMBER(10, 0),
    name VARCHAR2(50),
    bdate DATE,
    CONSTRAINT PK PRIMARY KEY(nid),
    -- NOT NULL can't be written separately
    CONSTRAINT BDATE_UNIQUE UNIQUE(bdate)
);

DROP TABLE Person;

--eb2
CREATE TABLE Person
(
    nid NUMBER(10, 0),
    name VARCHAR2(50),
    bdate DATE,
    PRIMARY KEY(nid),
    -- NOT NULL can't be written separately
    UNIQUE(bdate)
);

DROP TABLE Person;

-- ec
CREATE TABLE Person
(
    person_id NUMBER(10, 0),
    country_id NUMBER(10, 0),
    name VARCHAR2(50) UNIQUE,
    bdate DATE UNIQUE NOT NULL,
    CONSTRAINT PK PRIMARY KEY(person_id, country_id)
);

DROP TABLE Person;

-- ed | FOREIGN KEY constraint
CREATE TABLE Person
(
    nid NUMBER(10, 0) PRIMARY KEY,
    name VARCHAR2(50)
);

CREATE TABLE PersonAddress
(
    pid NUMBER(10, 0),
    address VARCHAR2(120) NOT NULL,
    FOREIGN KEY(pid) REFERENCES Person(nid)
);

-- try to drop table Person before PersonAddress. Default rejection policy.
DROP TABLE PersonAddress;
DROP TABLE Person;

-- ee | CHECK constraint
CREATE TABLE Person
(
    nid Number(10, 0) PRIMARY KEY,
    name VARCHAR2(50) CHECK (name LIKE 'A%'),
    age NUMBER CONSTRAINT AGE_CONS CHECK (age > 0)
);

DROP TABLE Person;