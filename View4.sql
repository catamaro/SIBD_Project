select  a.VAT_client as VAT
	  , c.date_timestamp as date
      , clt.client_zip as zip
      , count(pic.procedure_name_) as num_procedures
      , count(p.medication_name) as num_medications
      , count(cd.ID) as num_diagnostic_codes
     
from appointment a
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
	
group by a.VAT_doctor, a.date_timestamp;