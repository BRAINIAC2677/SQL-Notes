-- a1
SELECT last_name, salary, job_title
FROM Employees JOIN Jobs USING(job_id);

--a2
SELECT last_name, salary, job_title
FROM Employees E JOIN Jobs J
ON (E.job_id = J.job_id);

-- a3
SELECT last_name, salary, job_title
FROM Employees E, Jobs J
WHERE (E.job_id = J.job_id);

-- b1
SELECT department_name, country_name
FROM Departments D, Locations L, Countries C 
WHERE (D.location_id = L.location_id)
AND (L.country_id = C.country_id);

-- b2
SELECT department_name, country_name
FROM Departments D JOIN Locations L 
ON (D.location_id = L.location_id)
JOIN Countries C 
ON (L.country_id = C.country_id);

-- c
SELECT country_name, COUNT(*) total_departments
FROM Departments D, Locations L, Countries C 
WHERE (D.location_id = L.location_id) 
AND (L.country_id = C.country_id)
GROUP BY country_name;

-- d
SELECT employee_id, COUNT(*) job_switches
FROM Job_History
GROUP BY employee_id;

-- e
SELECT department_name, job_title, COUNT(*) total_employees
FROM Employees E, Departments D, Jobs J 
WHERE (E.department_id = D.department_id) 
AND (E.job_id = J.job_id)
GROUP BY department_name, job_title;

-- f
SELECT E1.last_name, COUNT(*) total_employees
FROM Employees E1, Employees E2
WHERE E2.hire_date < E1.hire_date
GROUP BY E1.last_name
ORDER BY E1.last_name;

-- g
SELECT E1.last_name, 
COUNT(DISTINCT E2.employee_id) hired_before,
COUNT(DISTINCT E3.employee_id) hired_after
FROM Employees E1, Employees E2, Employees E3
WHERE (E2.hire_date < E1.hire_date)
AND (E3.hire_date > E1.hire_date)
GROUP BY E1.last_name
ORDER BY E1.last_name;

-- h
SELECT E1.last_name
FROM Employees E1, Employees E2
WHERE (E1.salary > E2.salary)
GROUP BY E1.last_name
HAVING (COUNT(*) >= 3)
ORDER BY E1.last_name;

-- i
SELECT E1.last_name, E1.salary, COUNT(*) rank
FROM Employees E1, Employees E2 
WHERE (E1.salary < E2.salary)
GROUP BY E1.last_name, E1.salary
ORDER BY rank;


-- extra practise
-- ea
SELECT LAST_NAME, DEPARTMENT_NAME
FROM EMPLOYEES JOIN DEPARTMENTS USING (DEPARTMENT_ID);

-- eb
SELECT E.LAST_NAME, D.DEPARTMENT_NAME
FROM EMPLOYEES E JOIN DEPARTMENTS D USING (DEPARTMENT_ID);

-- ec
SELECT E.LAST_NAME, D.DEPARTMENT_NAME
FROM EMPLOYEES E JOIN DEPARTMENTS D 
ON (E.DEPARTMENT_ID = D.DEPARTMENT_ID);

-- ed
SELECT E1.LAST_NAME "EMPLOYEE NAME", E2.LAST_NAME "HIS MANAGER"
FROM EMPLOYEES E1 JOIN EMPLOYEES E2 
ON (E1.MANAGER_ID = E2.EMPLOYEE_ID);

