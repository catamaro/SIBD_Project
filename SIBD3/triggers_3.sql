DROP TRIGGER IF EXISTS employee_check_phone;
DROP TRIGGER IF EXISTS client_check_phone;

DELIMITER $$
CREATE TRIGGER employee_check_phone
BEFORE INSERT ON phone_number_employee
FOR EACH ROW
  BEGIN
    IF (SELECT EXISTS(SELECT *
                      FROM  phone_number_employee p
                      WHERE p.phone_number = new.phone_number))
		THEN
			CALL ERROR('Error: Phone number already exists in employee table.');
	ELSEIF (SELECT EXISTS(SELECT *
                      FROM phone_number_client c
                      WHERE c.phone_number = new.phone_number))
		THEN
			CALL ERROR('Error: Phone number already exists in client table.');
    END IF;
  END$$

DELIMITER ;

DELIMITER $$
CREATE TRIGGER client_check_phone
BEFORE INSERT ON phone_number_client
FOR EACH ROW
  BEGIN
    IF (SELECT EXISTS(SELECT *
                      FROM  phone_number_employee p
                      WHERE p.phone_number = new.phone_number))
		THEN
			CALL ERROR('Error: Phone number already exists in employee table.');
	ELSEIF (SELECT EXISTS(SELECT *
                      FROM phone_number_client c
                      WHERE c.phone_number = new.phone_number))
		THEN
			CALL ERROR('Error: Phone number already exists in client table.');
    END IF;
  END$$

DELIMITER ;
