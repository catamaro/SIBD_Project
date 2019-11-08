
insert into diagnostic_code values ('0T1T147', 'periodontitis');

						
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
