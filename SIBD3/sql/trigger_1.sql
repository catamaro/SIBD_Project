DROP TRIGGER IF EXISTS update_client_age;

DELIMITER $$

CREATE TRIGGER `update_client_age` 
AFTER INSERT ON `appointment` FOR EACH ROW
BEGIN
   	UPDATE client 
		SET client_age = 
		YEAR(CURDATE()) - YEAR(client_birth_date) - (DATE_FORMAT(client_birth_date, '%m%d') < DATE_FORMAT(CURDATE(), '%m%d'));
END$$

DELIMITER ;


