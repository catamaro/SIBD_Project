
	SELECT DISTINCT employee_name
	FROM employee AS e INNER JOIN appointment AS a
	ON e.employee_VAT = a.VAT_doctor
	WHERE a.date_timestamp != '2019-11-04'

Select * from appointment