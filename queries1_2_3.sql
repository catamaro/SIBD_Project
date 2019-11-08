
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
SELECT c.client_name, c.client_city, c.client_VAT
FROM client AS c 
	WHERE c.client_VAT IN (
		SELECT new.VAT_client
		FROM (SELECT a.VAT_client, cn.SOAP_O, MAX(a.date_timestamp)
				FROM consultation AS cn INNER JOIN appointment AS a
					ON a.VAT_doctor = cn.VAT_doctor
					AND a.date_timestamp = cn.date_timestamp
					GROUP BY(a.VAT_client)) AS new
		WHERE new.SOAP_O LIKE '%gingivitis%' OR new.SOAP_O LIKE '%periodontitis%');
				



