do $$
declare
    i integer:=0;
    j integer;
begin
    <<outer_loop>>
    loop
        if i > 5 then
            exit outer_loop; -- default exit loop is current loop (i.e. outer_loop)
        end if;
        j = 0;
        <<inner_loop>>
        loop 
            exit inner_loop when j > 5; -- default exit loop is current loop (i.e. inner_loop)
            raise notice 'i: % j: %', i, j;
            j = j+1;
        end loop inner_loop;
        i = i + 1;
    end loop outer_loop;
end;
$$