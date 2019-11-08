/*********************************query 1*********************************/
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

/*********************************query 2*********************************/
SELECT t.VAT_trainee, e.employee_name, e2.employee_name, report_evaluation, report_description  
FROM employee AS e, employee AS e2, trainee_doctor AS t, supervision_report AS sr
WHERE (sr.report_evaluation < 3 OR sr.report_description LIKE '%insufficient%')
	AND e.employee_VAT = t.VAT_trainee
	AND sr.VAT_trainee = t.VAT_trainee
	AND e2.employee_VAT = t.supervisor
ORDER BY (report_evaluation) DESC;

/*********************************query 3*********************************/
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
				
/*********************************query 4*********************************/
SELECT DISTINCT cl.client_name, cl.client_VAT, cl.client_street, cl.client_city, cl.client_zip
FROM client AS cl 
WHERE cl.client_VAT IN (SELECT a.VAT_client FROM appointment AS a WHERE a.VAT_client NOT IN 
		(SELECT a.VAT_client FROM appointment AS a INNER JOIN consultation AS c
		ON a.VAT_doctor = c.VAT_doctor AND a.date_timestamp = c.date_timestamp));                
                
/*********************************query 5*********************************/
SELECT dc.ID, dc.diagnostic_description, COUNT(p.medication_name) as diferent_medication
FROM prescription as p, diagnostic_code dc
WHERE dc.ID = p.ID
GROUP BY dc.ID
ORDER BY diferent_medication ASC;

/*********************************query 6*********************************/
SELECT dc.ID, dc.diagnostic_description, COUNT(p.medication_name) as diferent_medication
FROM prescription as p, diagnostic_code dc
WHERE dc.ID = p.ID
GROUP BY dc.ID
ORDER BY diferent_medication ASC;

SELECT 
    AVG(COUNT(ca.VAT_nurse)) AS 'Number of Nurses',
    AVG(COUNT(pic.procedure_name_)) AS 'Number of Procedures',
    AVG(COUNT(dc.ID)) AS 'Number of Diagnostic Codes',
    AVG(COUNT(p.medication_name)) AS 'Number of Procedures'
FROM
    consultation_assistant AS ca,
    procedure_in_consultation AS pic,
    diagnostic_code AS dc,
    prescription AS p,
    client AS cl,
    consultation AS c,
    consultation_diagnostic AS cd
WHERE
    YEAR(p.date_timestamp) = 2019
        AND ca.VAT_doctor = c.VAT_doctor
        AND ca.date_timestamp = c.date_timestamp
        AND pic.VAT_doctor = c.VAT_doctor
        AND pic.date_timestamp = c.date_timestamp
        AND dc.ID = cd.ID
        AND cd.VAT_doctor = c.VAT_doctor
        AND cd.date_timestamp = c.date_timestamp
        AND cd.ID = p.ID
        AND p.VAT_doctor = c.VAT_doctor
        AND p.date_timestamp = c.date_timestamp
GROUP BY cl.client_age;

/*********************************query 7*********************************/
SELECT temp.ID, temp.medication_name
FROM
	(SELECT dc.ID, p.medication_name, COUNT(*) as count_med
	 FROM prescription as p, diagnostic_code as dc
	 WHERE dc.ID = p.ID
	 GROUP BY dc.ID, p.medication_name) as temp
INNER JOIN 
	(SELECT temp_1.ID, MAX(temp_1.count_med) as max_med
	 FROM (SELECT dc.ID, p.medication_name, COUNT(*) as count_med
		   FROM prescription as p, diagnostic_code as dc
		   WHERE dc.ID = p.ID
		   GROUP BY dc.ID, p.medication_name) temp_1
	 GROUP BY ID) as temp_2
ON temp.ID = temp_2.ID AND temp_2.max_med = temp.count_med;

/*********************************query 8*********************************/
SELECT p.medication_name, p.medication_lab
FROM
    prescription AS p,
    diagnostic_code AS dc
WHERE
    dc.ID IN (  SELECT dc.ID
				FROM diagnostic_code AS dc
				WHERE dc.diagnostic_description LIKE '%dental cavities%')
				AND dc.ID NOT IN (SELECT dc.ID
				FROM diagnostic_code AS dc
				WHERE dc.diagnostic_description LIKE '%infectious disease%') AND dc.ID = p.ID AND YEAR(p.date_timestamp) = 2019
ORDER BY p.medication_name , p.medication_lab;

/*********************************query 9*********************************/
SELECT cl.client_name, cl.client_street , cl.client_city , cl.client_zip
FROM appointment as a, client as cl
LEFT JOIN ( SELECT a.VAT_client, a.date_timestamp		
	    FROM consultation as c
	    RIGHT JOIN appointment as a ON c.VAT_doctor = a.VAT_doctor AND a.date_timestamp = c.date_timestamp	
	    WHERE c.VAT_doctor IS NULL AND year(a.date_timestamp) = 2019) as missed on cl.client_VAT = missed.VAT_client
WHERE missed.VAT_client IS NULL AND cl.client_VAT = a.VAT_client AND year(a.date_timestamp) = 2019;


