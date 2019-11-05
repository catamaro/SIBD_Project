
DROP VIEW IF EXISTS dim_date;

CREATE VIEW dim_date AS 
	SELECT a.date_timestamp, DAY(a.date_timestamp), MONTH(a.date_timestamp), YEAR(a.date_timestamp)
	FROM	appointment AS a;
	
