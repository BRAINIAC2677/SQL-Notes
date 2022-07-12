do $$
declare
    name employees.last_name%type;
begin
    SELECT last_name 
    INTO name
    FROM employees
    WHERE employee_id = 100;

    raise notice 'Employee %s', name;
end;
$$