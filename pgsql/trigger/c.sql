-- assuming there is a enabled trigger named notification_trigger on employees
ALTER TABLE employees
DISABLE TRIGGER notification_trigger;

-- ALTER TABLE employees
-- DISABLE TRIGGER ALL;