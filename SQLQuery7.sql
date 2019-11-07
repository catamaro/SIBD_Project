/*SELECT 
	temp.ID, temp.medication_name

FROM
	(SELECT dc.ID, p.medication_name, COUNT(*) as count_med

	 FROM prescription as p, diagnostic_code as dc

	 WHERE dc.ID = p.ID

	 GROUP BY dc.ID, p.medication_name) as temp

INNER JOIN 
	(SELECT temp_1.ID, MAX(temp_1.count_med) as max_med

	 FROM
		 (SELECT dc.ID, p.medication_name, COUNT(*) as count_med

		  FROM prescription as p, diagnostic_code as dc

		  WHERE dc.ID = p.ID

		  GROUP BY dc.ID, p.medication_name) temp_1

	 GROUP BY ID) as temp_2

ON 
	temp.ID = temp_2.ID AND temp_2.max_med = temp.count_med;
	*/



select medication_name 
from prescription p 
where ID = '0PWK47Z' 
group by medication_name 
having count(medication_name) >= ALL  (select count(medication_name) 
							from prescription p 
							where ID = '0PWK47Z' 
							group by medication_name)

