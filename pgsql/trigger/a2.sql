CREATE TRIGGER notification_trigger
AFTER INSERT OR UPDATE OR DELETE
ON employees
FOR EACH ROW
EXECUTE PROCEDURE notification_trigger_function();