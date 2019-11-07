USE proj_part2;


DROP TRIGGER IF EXISTS permanent_check;
DROP TRIGGER IF EXISTS trainee_check;

DROP TRIGGER IF EXISTS receptionist_check;
DROP TRIGGER IF EXISTS nurse_check;
DROP TRIGGER IF EXISTS doctor_check;

DELIMITER $$
CREATE TRIGGER doctor_check
BEFORE INSERT ON doctor
FOR EACH ROW
  BEGIN
    IF (SELECT EXISTS(SELECT *
                      FROM receptionist r
                      WHERE r.VAT_receptionist = new.VAT_doctor))
		THEN
			CALL ERROR('Error: The same VAT exists on receptionists table.');
	ELSEIF (SELECT EXISTS(SELECT *
                      FROM nurse n
                      WHERE n.VAT_nurse = new.VAT_doctor))
		THEN
			CALL ERROR('Error: The same VAT exists on nurses table.');
    END IF;
  END$$

DELIMITER ;

DELIMITER $$
CREATE TRIGGER nurse_check
BEFORE INSERT ON nurse
FOR EACH ROW
  BEGIN
    IF (SELECT EXISTS(SELECT *
                      FROM receptionist r
                      WHERE r.VAT_receptionist = new.VAT_nurse))
		THEN
			CALL ERROR('Error: The same VAT exists on receptionists table.');
	ELSEIF (SELECT EXISTS(SELECT *
                      FROM doctor d
                      WHERE d.VAT_doctor = new.VAT_nurse))
		THEN
			CALL ERROR('Error: The same VAT exists on doctors table.');
    END IF;
  END$$

DELIMITER ;

DELIMITER $$
CREATE TRIGGER receptionist_check
BEFORE INSERT ON receptionist
FOR EACH ROW
  BEGIN
    IF (SELECT EXISTS(SELECT *
                      FROM nurse n
                      WHERE n.VAT_nurse= new.VAT_receptionist))
		THEN
			CALL ERROR('Error: The same VAT exists on nurses table.');
	ELSEIF (SELECT EXISTS(SELECT *
                      FROM doctor d
                      WHERE d.VAT_doctor = new.VAT_receptionist))
		THEN
			CALL ERROR('Error: The same VAT exists on doctors table.');
    END IF;
  END$$

DELIMITER ;

DELIMITER $$
CREATE TRIGGER trainee_check
BEFORE INSERT ON trainee_doctor
FOR EACH ROW
  BEGIN
    IF (SELECT EXISTS(SELECT *
                      FROM permanent_doctor p
                      WHERE p.VAT_permanent = new.VAT_trainee))
    THEN
      CALL ERROR('Error: The same VAT exists on permanent_doctor table.');
    END IF;
  END$$

DELIMITER ;

DELIMITER $$
CREATE TRIGGER permanent_check
BEFORE INSERT ON permanent_doctor
FOR EACH ROW
  BEGIN
    IF (SELECT EXISTS(SELECT *
                      FROM trainee_doctor t
                      WHERE t.VAT_trainee = new.VAT_permanent))
    THEN
      CALL ERROR('Error: The same VAT exists on trainee_doctor table.');
    END IF;
  END$$

DELIMITER ;