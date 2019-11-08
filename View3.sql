DROP VIEW IF EXISTS dim_location_client;

CREATE VIEW dim_location_client AS

	SELECT DISTINCT client_zip, client_city

	FROM client;
    
