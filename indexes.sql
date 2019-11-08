
DROP INDEX by_score ON supervision_report;
DROP INDEX by_client_name ON client;


CREATE INDEX by_client_name ON client (client_name);
CREATE INDEX by_score ON supervision_report (report_evaluation);