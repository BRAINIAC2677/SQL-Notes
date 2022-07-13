CREATE FUNCTION notification_trigger_function()
RETURNS TRIGGER 
LANGUAGE PLPGSQL
AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        RAISE NOTICE 'inserted: %', NEW;
    ELSEIF TG_OP = 'UPDATE' THEN
        RAISE NOTICE 'updated from: % to %', OLD, NEW;
    ELSEIF TG_OP = 'DELETE' THEN
        RAISE NOTICE 'deleted: %', OLD;
    END IF;

    RETURN NEW;
END;
$$

