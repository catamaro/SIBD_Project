
/*delete 'Jane SweetTooth' from database*/
DELETE FROM employee WHERE employee_name = 'Jane SweetTooth' AND employee_VAT IN (SELECT VAT_doctor FROM doctor);

UPDATE trainee_doctor SET supervisor = (SELECT VAT_permanent FROM permanent_doctor WHERE VAT_permanent <> (SELECT employee_VAT FROM employee WHERE employee_name = 'Jane SweetTooth'))				
	WHERE supervisor = (SELECT employee_VAT FROM employee WHERE employee_name = 'Jane SweetTooth');



