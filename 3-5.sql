-- a1


-- a2
SELECT 
TO_CHAR(HIRE_DATE, 'DD Month, YYYY') HD 
FROM EMPLOYEES;

-- extra practises
-- ea
SELECT LAST_NAME,
TO_CHAR(HIRE_DATE, 'DD-MON-YYYY') HD
FROM EMPLOYEES
WHERE HIRE_DATE > TO_DATE('01-JAN-1997', 'DD-MON-YYYY')
ORDER BY HIRE_DATE ASC ;