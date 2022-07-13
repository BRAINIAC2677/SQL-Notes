-- a
SELECT TRUNC(salary/5000)+1 salary_group, COUNT(*) total
FROM Employees
GROUP BY TRUNC(salary/5000)+1
ORDER BY TRUNC(salary/5000)+1;

-- b
SELECT TO_CHAR(hire_date, 'YYYY') year, job_id, COUNT(*) total
FROM Employees
GROUP BY TO_CHAR(hire_date, 'YYYY'), job_id
ORDER BY year;