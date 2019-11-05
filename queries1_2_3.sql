
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

SELECT t.VAT_trainee, e.employee_name, e2.employee_name, report_evaluation, report_description  
FROM employee AS e, employee AS e2, trainee_doctor AS t, supervision_report AS sr
WHERE (sr.report_evaluation < 3 OR sr.report_description LIKE '%insufficient%')
	AND e.employee_VAT = t.VAT_trainee
	AND sr.VAT_trainee = t.VAT_trainee
	AND e2.employee_VAT = t.supervisor
ORDER BY (report_evaluation) DESC;

/*query 3*/

SELECT c.client_name, c.client_city, c.client_VAT, cn.date_timestamp
FROM client AS c, consultation AS cn, appointment AS a
WHERE (cn.SOAP_O LIKE '%gengivitis%' OR cn.SOAP_O LIKE '%periodontis%')
	AND a.VAT_doctor = cn.VAT_doctor
	AND a.date_timestamp = cn.date_timestamp
	AND c.client_VAT = a.VAT_client 
ORDER BY(cn.date_timestamp) DESC
LIMIT 1;

