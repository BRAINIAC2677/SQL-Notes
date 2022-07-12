do $$
declare
    i integer:=0;
begin
    while i <= 5 loop
        raise notice 'i %',i;
        i = i + 1;
    end loop;
end;
$$