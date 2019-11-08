DROP VIEW IF EXISTS fact_consults;
DROP VIEW IF EXISTS dim_date;
DROP VIEW IF EXISTS dim_client;
DROP VIEW IF EXISTS dim_location_client;

/*********************************view 1*********************************/
CREATE VIEW dim_date AS 
	SELECT DISTINCT a.date_timestamp, DAY(a.date_timestamp), MONTH(a.date_timestamp), YEAR(a.date_timestamp)
	FROM	appointment AS a;
	
/*********************************view 2*********************************/
CREATE VIEW dim_client AS

	SELECT client_VAT, client_gender, client_age
	FROM client;

/*********************************view 3*********************************/
CREATE VIEW dim_location_client AS

	SELECT DISTINCT client_zip, client_city
	FROM client;
    
/*********************************view 4*********************************/
CREATE VIEW fact_consults as
	SELECT  dc.client_VAT as VAT
		  , dd.date_timestamp as date
		  , dlc.client_zip as zip
		  , count(distinct pic.procedure_name_) as num_procedures
		  , count(distinct p.medication_name, p.medication_lab, p.ID) as num_medications
		  , count(distinct cd.ID) as num_diagnostic_codes
		 
	FROM dim_date dd, dim_client dc, dim_location_client dlc, appointment a
	left join client clt
		on a.VAT_client = clt.client_VAT
	inner join consultation c
		on a.VAT_doctor = c.VAT_doctor AND a.date_timestamp = c.date_timestamp 
	left join consultation_diagnostic cd 
		on a.VAT_doctor = cd.VAT_doctor AND a.date_timestamp = cd.date_timestamp
	left join prescription p
		on a.VAT_doctor = p.VAT_doctor AND a.date_timestamp = p.date_timestamp
	left join procedure_in_consultation pic
		on a.VAT_doctor = pic.VAT_doctor AND a.date_timestamp = pic.date_timestamp
        
	where dc.client_VAT = a.VAT_client AND clt.client_zip = dlc.client_zip AND dd.date_timestamp = a.date_timestamp
	group by dc.client_VAT, dd.date_timestamp;