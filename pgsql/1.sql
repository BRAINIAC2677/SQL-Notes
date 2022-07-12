do $$
-- anonymous block
declare
    country_count integer;
begin
    SELECT COUNT(*)
    INTO country_count
    FROM countries;
    raise notice 'There are % countries', country_count;
end;
$$