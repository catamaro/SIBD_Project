﻿USE proj_part2;  
 
/*query 1*/
 
SELECT c.client_VAT, c.client_name, p.phone_number
    FROM client AS c, appointment AS a, phone_number_client AS p
    WHERE c.client_VAT = p.client_VAT
		AND c.client_VAT = a.VAT_client
		AND a.VAT_doctor IN (
			SELECT VAT_doctor
			FROM appointment AS a, employee AS e
			WHERE e.employee_name = 'Jane SweetTooth'
				AND e.employee_VAT = a.VAT_doctor)
				AND a.date_timestamp IN (
					SELECT date_timestamp
					FROM consultation AS c, employee AS e
					WHERE e.employee_name = 'Jane SweetTooth'
						AND e.employee_VAT = c.VAT_doctor)
	GROUP BY(c.client_name);

/*query 2*/


