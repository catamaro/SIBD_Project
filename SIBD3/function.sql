delimiter $$
DROP FUNCTION IF EXISTS number_no_shows;

CREATE FUNCTION number_no_shows(gender varchar(10), age_lower integer, age_higher integer, year_ year) 
	RETURNS integer
BEGIN
	DECLARE no_shows_count integer;
	SELECT count(*) INTO no_shows_count
	FROM appointment AS a, client AS cl
	WHERE a.VAT_client = cl.client_VAT AND cl.client_gender = gender AND cl.client_age BETWEEN age_lower AND age_higher AND year(a.date_timestamp) = year_
		AND NOT EXISTS (SELECT * FROM consultation AS c WHERE a.VAT_doctor = c.VAT_doctor AND a.date_timestamp = c.date_timestamp);
	RETURN no_shows_count;
END$$

delimiter ;