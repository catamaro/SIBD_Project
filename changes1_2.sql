/*change 1*/
UPDATE employee AS e
SET e.employee_city = 'Covilhã', e.employee_street = 'Montes Hermínios'
WHERE e.employee_VAT = (
	SELECT d.VAT_doctor
	FROM doctor AS d
	WHERE  e.employee_name = 'Jane SweetTooth'
		AND e.employee_VAT = d.VAT_doctor);

/*change 2*/
UPDATE employee
SET employee_salary = (employee_salary*1.05)
WHERE employee_VAT IN (
	SELECT a.VAT_doctor
	FROM appointment AS a
	GROUP BY a.VAT_doctor
	HAVING COUNT(a.VAT_doctor) > 100); /*nota meter 100*/