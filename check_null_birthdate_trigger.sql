DELIMITER //
CREATE TRIGGER  check_null_birthdate
AFTER INSERT ON customers
FOR EACH ROW
BEGIN
  IF NEW.BirthDate IS NULL THEN
   INSERT INTO messages(MessageID,Message)
   VALUES(NEW.CustomerID,CONCAT('Hi ', NEW.CustomerName, '  ,please update your date of birth.'));
  END IF;
END //

DELIMITER ;
