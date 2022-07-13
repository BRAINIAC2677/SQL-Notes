-- a
SELECT department_id, AVG(salary) average_salary
FROM Employees
GROUP BY department_id
HAVING AVG(salary) <= 50000 
AND department_id IS NOT NULL;

-- extra practise
-- ea
SELECT job_id, 
MAX(DISTINCT salary) maximum_salary, 
MIN(DISTINCT salary) minimum_salary,
SUM(DISTINCT salary) total_distinct_salary,
COUNT(DISTINCT salary) no_of_distinct_salary
FROM Employees
GROUP BY job_id;