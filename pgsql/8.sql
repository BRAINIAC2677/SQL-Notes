do $$
declare
    employee employees%rowtype;
    input_employee_id employees.employee_id%type:= 200;
begin 
    SELECT *
    INTO employee
    FROM employees
    WHERE employee_id = input_employee_id;

    if not found then
        raise notice 'Employee with %s id does not exist', input_employee_id;
    elseif employee.salary BETWEEN 2100.00 AND 9400.00 then
        raise notice 'Employee % %s has 3rd grade salary', employee.first_name, employee.last_name;
    elseif employee.salary BETWEEN 9400.01 AND 16700.00 then 
        raise notice 'Employee %s %s has 2nd grade salary', employee.first_name, employee.last_name;
    else 
        raise notice 'Employee %s %s has 1st grade salary', employee.first_name, employee.last_name;
    end if;
end;
$$