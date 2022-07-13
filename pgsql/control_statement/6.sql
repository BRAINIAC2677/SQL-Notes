do $$
declare
    employee employees%rowtype;
    input_employee_id employees.employee_id%type:= 1;
begin 
    SELECT *
    INTO employee
    FROM employees
    WHERE employee_id = input_employee_id;
    -- The found is a global variable that is available in PL/pgSQL procedure language. If the select into statement sets the found variable if a row is assigned or false if no row is returned.
    if not found then
        raise notice 'Employee % does not exist', input_employee_id;
    end if;
end;
$$

