do $$
declare
    employee employees%rowtype;
begin
    SELECT *
    INTO employee
    FROM employees
    WHERE employee_id = 100;

    raise notice 'The full name of the employee is %s %s', employee.first_name, employee.last_name;
end;
$$