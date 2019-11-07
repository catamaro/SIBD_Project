SELECT dc.ID, dc.diagnostic_description, COUNT(p.medication_name) as diferent_medication

FROM prescription as p, diagnostic_code dc

WHERE dc.ID = p.ID

GROUP BY dc.ID

ORDER BY diferent_medication ASC

