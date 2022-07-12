do $$
-- block named labelled as outer_block
<<outer_block>>
declare
    counter integer:=1;
begin
    counter = counter + 1;
    raise notice 'outer block counter = %', counter;
    -- anonymous sub-block
    declare
        counter integer:=0;
    begin
        raise notice 'inner block counter = %', counter;
        raise notice 'outer block counter from inner block %', outer_block.counter;
    end;
end outer_block;
$$