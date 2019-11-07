SELECT cl.client_name, cl.client_street , cl.client_city , cl.client_zip

FROM appointment as a, client as cl

LEFT JOIN ( SELECT a.VAT_client, a.date_timestamp
		
	    FROM consultation as c

	    RIGHT JOIN appointment as a ON c.VAT_doctor = a.VAT_doctor AND a.date_timestamp = c.date_timestamp
	
	    WHERE c.VAT_doctor IS NULL AND year(a.date_timestamp) = 2019) as missed on cl.client_VAT = missed.VAT_client

WHERE missed.VAT_client IS NULL AND cl.client_VAT = a.VAT_client AND year(a.date_timestamp) = 2019


