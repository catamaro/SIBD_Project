
/*delete 'Jane SweetTooth' from database*/

DELETE FROM procedure_charting WHERE  VAT_Doctor = '604-24-1006';

DELETE FROM procedure_radiology WHERE  VAT_Doctor = '604-24-1006';

DELETE FROM procedure_in_consultation WHERE  VAT_Doctor = '604-24-1006';

DELETE FROM prescription WHERE  VAT_Doctor = '604-24-1006';

DELETE FROM consultation_diagnostic WHERE  VAT_Doctor = '604-24-1006';

DELETE FROM consultation_assistant WHERE  VAT_Doctor = '604-24-1006';

DELETE FROM consultation WHERE VAT_Doctor = '604-24-1006';

DELETE FROM appointment WHERE VAT_Doctor = '604-24-1006';

UPDATE trainee_doctor SET supervisor = (SELECT VAT_permanent FROM permanent_doctor WHERE VAT_permanent <> '604-24-1006')				
	WHERE supervisor = '604-24-1006';

DELETE FROM permanent_doctor WHERE VAT_permanent = '604-24-1006';

DELETE FROM doctor WHERE VAT_doctor = '604-24-1006';

DELETE FROM phone_number_employee WHERE employee_VAT = '604-24-1006';

DELETE FROM employee WHERE employee_name = 'Jane SweetTooth';


