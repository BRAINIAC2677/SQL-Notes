CREATE OR REPLACE FUNCTION get_employee_count_by_salary(from_salary NUMERIC, to_salary NUMERIC)
RETURNS INT
LANGUAGE PLPGSQL
AS $$
DECLARE
    count INT:=0;
BEGIN
    SELECT COUNT(*)
    INTO count 
    FROM employees
    WHERE salary BETWEEN from_salary AND to_salary;

    RETURN count;
END;
$$