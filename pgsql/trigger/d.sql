-- assuming there is a disabled trigger named notification_trigger on employees
ALTER TABLE employees
ENABLE TRIGGER notification_trigger;

-- ALTER TABLE employees
-- ENABLE TRIGGER ALL;