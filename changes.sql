/*********************************change 1*********************************/
UPDATE employee AS e
SET e.employee_city = 'Covilhã', e.employee_street = 'Montes Hermínios'
WHERE e.employee_VAT = (
	SELECT d.VAT_doctor
	FROM doctor AS d
	WHERE  e.employee_name = 'Jane SweetTooth'
		AND e.employee_VAT = d.VAT_doctor);

/*********************************change 2*********************************/
UPDATE employee
SET employee_salary = (employee_salary*1.05)
WHERE employee_VAT IN (
	SELECT a.VAT_doctor
	FROM appointment AS a
	GROUP BY a.VAT_doctor
	HAVING COUNT(a.VAT_doctor) > 100); /*nota meter 100*/
    
    
/*********************************change 3*********************************/
/*delete 'Jane SweetTooth' from database*/
DELETE FROM employee WHERE employee_name = 'Jane SweetTooth' AND employee_VAT IN (SELECT VAT_doctor FROM doctor);

UPDATE trainee_doctor SET supervisor = (SELECT VAT_permanent FROM permanent_doctor)				
	WHERE supervisor IS NULL;

/*********************************change 4*********************************/
INSERT INTO diagnostic_code values ('0T1T147', 'periodontitis');

UPDATE (consultation_diagnostic AS c INNER JOIN prescription AS p INNER JOIN procedure_charting AS pc
						ON c.ID = p.ID
						AND c.VAT_doctor = p.VAT_doctor
						AND c.VAT_doctor = pc.VAT_doctor
						AND c.date_timestamp = p.date_timestamp
						AND c.date_timestamp = pc.date_timestamp  
						AND c.ID = (SELECT d.ID
									FROM diagnostic_code AS d
									WHERE d.diagnostic_description LIKE '%gingivitis%')
						AND pc.measure > 4)
                        
SET c.ID = (SELECT d.ID
			FROM diagnostic_code AS d
			WHERE d.diagnostic_description LIKE '%periodontitis%');					
