USE proj_part2;
/* DROP ALL TABLES IF EXIST*/
DROP TABLE IF EXISTS procedure_charting;
DROP TABLE IF EXISTS teeth;
DROP TABLE IF EXISTS procedure_radiology;
DROP TABLE IF EXISTS procedure_in_consultation;
DROP TABLE IF EXISTS procedure_;
DROP TABLE IF EXISTS prescription;
DROP TABLE IF EXISTS medication;
DROP TABLE IF EXISTS consultation_diagnostic;
DROP TABLE IF EXISTS diagnostic_code_relation;
DROP TABLE IF EXISTS diagnostic_code;
DROP TABLE IF EXISTS consultation_assistant;
DROP TABLE IF EXISTS consultation;
DROP TABLE IF EXISTS appointment;
DROP TABLE IF EXISTS supervision_report;
DROP TABLE IF EXISTS trainee_doctor;
DROP TABLE IF EXISTS permanent_doctor;
DROP TABLE IF EXISTS phone_number_client;
DROP TABLE IF EXISTS client;
DROP TABLE IF EXISTS nurse;
DROP TABLE IF EXISTS doctor;
DROP TABLE IF EXISTS receptionist;
DROP TABLE IF EXISTS phone_number_employee;
DROP TABLE IF EXISTS employee;

/* CREATE NEW TABLES*/
CREATE TABLE employee (

	employee_VAT						VARCHAR(255)		NOT NULL,
	employee_name						VARCHAR(255)		NOT NULL,
	employee_birth_date					DATE				NOT NULL,
	employee_street					VARCHAR(255)		NOT NULL,
	employee_city						VARCHAR(255)		NOT NULL, 
	employee_zip						VARCHAR(255)		NOT NULL,
	employee_IBAN						VARCHAR(255)		NOT NULL,
	employee_salary						FLOAT				NOT NULL,
	PRIMARY KEY(employee_VAT),
	UNIQUE(employee_IBAN),
	CHECK (employee_salary >= 0)
	/*all employees are nurse, doctor or receptionist*/
);

CREATE TABLE phone_number_employee (

	employee_VAT						VARCHAR(255)		NOT NULL,
	phone_number						VARCHAR(255)		NOT NULL,
	PRIMARY KEY (employee_VAT, phone_number),
	FOREIGN KEY (employee_VAT)							REFERENCES		employee(employee_VAT) ON UPDATE CASCADE ON DELETE CASCADE

);

CREATE TABLE receptionist (

	VAT_receptionist					VARCHAR(255)		NOT NULL,
	PRIMARY KEY (VAT_receptionist),
	FOREIGN KEY (VAT_receptionist)						REFERENCES		employee(employee_VAT) ON UPDATE CASCADE ON DELETE CASCADE

);

CREATE TABLE doctor (

	VAT_doctor							VARCHAR(255)		NOT NULL,
	specialization						VARCHAR(255)		NOT NULL,
	biography							VARCHAR(255)		NOT NULL,
	email								VARCHAR(255)		NOT NULL,
	PRIMARY KEY(VAT_doctor),
	UNIQUE(email),
	FOREIGN KEY (VAT_doctor)							REFERENCES		employee(employee_VAT) ON UPDATE CASCADE ON DELETE CASCADE
	/*ADD TRIGGER: all doctor must be trainee OR permanent*/
);

CREATE TABLE nurse (

	VAT_nurse							VARCHAR(255)		NOT NULL,
	PRIMARY KEY(VAT_nurse),
	FOREIGN KEY (VAT_nurse)								REFERENCES		employee(employee_VAT) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE client (

	client_VAT							VARCHAR(255)		NOT NULL,
	client_name							VARCHAR(255)		NOT NULL,
	client_birth_date					DATE				NOT NULL,
	client_street						VARCHAR(255)		NOT NULL,
	client_city							VARCHAR(255)		NOT NULL,
	client_zip							VARCHAR(255)		NOT NULL,
	client_gender						VARCHAR(255)		NOT NULL,
	client_age							INTEGER, /*falta isto no popular*/
	PRIMARY KEY(client_VAT)
);

CREATE TABLE phone_number_client(

	client_VAT							VARCHAR(255)		NOT NULL,
	phone_number						INTEGER				NOT NULL,
	PRIMARY KEY (client_VAT, phone_number),
	FOREIGN KEY (client_VAT)							REFERENCES		client(client_VAT) ON UPDATE CASCADE ON DELETE CASCADE

);

CREATE TABLE permanent_doctor (

	VAT_permanent						VARCHAR(255)		NOT NULL,
	years_of_experience					INTEGER				NOT NULL,
	PRIMARY KEY(VAT_permanent),
	FOREIGN KEY (VAT_permanent)							REFERENCES		doctor(VAT_doctor) ON UPDATE CASCADE ON DELETE CASCADE

);

CREATE TABLE trainee_doctor (

	VAT_trainee							VARCHAR(255)		NOT NULL,
	supervisor							VARCHAR(255),
	PRIMARY KEY(VAT_trainee),
	FOREIGN KEY (VAT_trainee)							REFERENCES		doctor(VAT_doctor) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (supervisor)							REFERENCES		permanent_doctor(VAT_permanent) ON DELETE SET NULL

);

CREATE TABLE supervision_report (

	VAT_trainee							VARCHAR(255),
	date_timestamp							DATE				NOT NULL,
	report_description				VARCHAR(255)		NOT NULL,
	report_evaluation					INTEGER				NOT NULL,
	CHECK (report_evaluation between 1 and 5),
	PRIMARY KEY (VAT_trainee, date_timestamp),
	FOREIGN KEY (VAT_trainee)							REFERENCES		trainee_doctor(VAT_trainee) ON UPDATE CASCADE ON DELETE CASCADE

);


CREATE TABLE appointment (

	VAT_doctor							VARCHAR(255)		NOT NULL,
	VAT_client							VARCHAR(255)		NOT NULL,
	date_timestamp							DATE				NOT NULL,
	appointment_description			VARCHAR(255)		NOT NULL,
	PRIMARY KEY (VAT_doctor, date_timestamp),
	FOREIGN KEY (VAT_doctor)							REFERENCES		doctor(VAT_doctor) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (VAT_client)							REFERENCES		client(client_VAT) ON UPDATE CASCADE ON DELETE CASCADE	

);

CREATE TABLE consultation (

	VAT_doctor							VARCHAR(255)		NOT NULL,
	date_timestamp							DATE				NOT NULL,
	SOAP_S								VARCHAR(255)		NOT NULL,
	SOAP_O								VARCHAR(255)		NOT NULL,
	SOAP_A								VARCHAR(255)		NOT NULL,
	SOAP_P								VARCHAR(255)		NOT NULL,

	PRIMARY KEY (VAT_doctor, date_timestamp),
	FOREIGN KEY (VAT_doctor, date_timestamp)			REFERENCES		appointment(VAT_doctor, date_timestamp) ON UPDATE CASCADE ON DELETE CASCADE
/*IC: must have nurse assigned*/
);

CREATE TABLE consultation_assistant (

	VAT_doctor							VARCHAR(255)		NOT NULL,
	date_timestamp						DATE					NOT NULL,
	VAT_nurse							VARCHAR(255)		NOT NULL,
	PRIMARY KEY (VAT_doctor, date_timestamp),
	FOREIGN KEY (VAT_doctor,date_timestamp)				REFERENCES		consultation(VAT_doctor, date_timestamp) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (VAT_nurse)										REFERENCES		nurse(VAT_nurse) ON UPDATE CASCADE ON DELETE CASCADE

);

CREATE TABLE diagnostic_code (

	ID											VARCHAR(255)		NOT NULL,
	diagnostic_description				VARCHAR(255)		NOT NULL,
	PRIMARY KEY (ID)
);


CREATE TABLE diagnostic_code_relation (

	ID_1								VARCHAR(255)		NOT NULL,
	ID_2								VARCHAR(255)		NOT NULL,
	diagnostic_type						VARCHAR(255)		NOT NULL,
	PRIMARY KEY (ID_1, ID_2),
	FOREIGN KEY (ID_1)							REFERENCES		diagnostic_code(ID) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (ID_2)							REFERENCES		diagnostic_code(ID) ON UPDATE CASCADE ON DELETE CASCADE

);

CREATE TABLE consultation_diagnostic (

	VAT_doctor							VARCHAR(255)		NOT NULL,
	date_timestamp							DATE				NOT NULL,
	ID										VARCHAR(255)		NOT NULL,
	PRIMARY KEY (VAT_doctor, date_timestamp, ID),
	FOREIGN KEY (VAT_doctor, date_timestamp)			REFERENCES		consultation(VAT_doctor, date_timestamp) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (ID)											REFERENCES		diagnostic_code(ID) ON UPDATE CASCADE ON DELETE CASCADE

);

CREATE TABLE medication (

	medication_name						VARCHAR(255)		NOT NULL,
	medication_lab							VARCHAR(255)		NOT NULL,
	PRIMARY KEY (medication_name, medication_lab)

);

CREATE TABLE prescription (

	medication_name						VARCHAR(255)		NOT NULL,
	medication_lab							VARCHAR(255)		NOT NULL,
	VAT_doctor								VARCHAR(50)			NOT NULL,
	date_timestamp								DATE				NOT NULL,
	ID											VARCHAR(50)			NOT NULL,
	dosage									VARCHAR(50)			NOT NULL,
	prescription_description			VARCHAR(255)		NOT NULL,
	PRIMARY KEY (medication_name, medication_lab, VAT_doctor, date_timestamp, ID),
	FOREIGN KEY (VAT_doctor, date_timestamp, ID)		REFERENCES		consultation_diagnostic(VAT_doctor, date_timestamp, ID) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (medication_name, medication_lab)	REFERENCES		medication(medication_name, medication_lab) ON UPDATE CASCADE ON DELETE CASCADE

);

CREATE TABLE procedure_ (

	procedure_name_						VARCHAR(255)		NOT NULL,
	procedure_type							VARCHAR(255)		NOT NULL,
	PRIMARY KEY (procedure_name_)

);

CREATE TABLE procedure_in_consultation (

	procedure_name_						VARCHAR(255)		NOT NULL,
	VAT_doctor								VARCHAR(255)		NOT NULL,
	date_timestamp								DATE				NOT NULL,
	p_in_c_description					VARCHAR(255)		NOT NULL,
	PRIMARY KEY (procedure_name_, VAT_doctor, date_timestamp),
	FOREIGN KEY (procedure_name_)							REFERENCES		procedure_(procedure_name_) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (VAT_doctor, date_timestamp)			REFERENCES		consultation(VAT_doctor, date_timestamp) ON UPDATE CASCADE ON DELETE CASCADE

);

CREATE TABLE procedure_radiology (

	procedure_name_						VARCHAR(255)		NOT NULL,
	VAT_doctor								VARCHAR(255)		NOT NULL,
	date_timestamp								DATE				NOT NULL,
	file_path								VARCHAR(255)		NOT NULL,					
	PRIMARY KEY (procedure_name_, VAT_doctor, date_timestamp, file_path),
	FOREIGN KEY (procedure_name_, VAT_doctor, date_timestamp)	REFERENCES procedure_in_consultation(procedure_name_, VAT_doctor, date_timestamp) ON UPDATE CASCADE ON DELETE CASCADE

);

CREATE TABLE teeth (

	quadrant								INTEGER				NOT NULL,
	number								INTEGER				NOT NULL,
	teeth_name							VARCHAR(255)		NOT NULL,
	PRIMARY KEY (quadrant, number)

);

CREATE TABLE procedure_charting (

	procedure_name_						VARCHAR(255)		NOT NULL,
	VAT_doctor								VARCHAR(255)		NOT NULL,
	date_timestamp								DATE				NOT NULL,
	quadrant									INTEGER				NOT NULL,
	number									INTEGER				NOT NULL,
	procedure_charting_descp			VARCHAR(255)		NOT NULL,	
	measure									INTEGER				NOT NULL,	
	PRIMARY KEY (procedure_name_, VAT_doctor, date_timestamp, quadrant, number),
	FOREIGN KEY (procedure_name_, VAT_doctor, date_timestamp)		REFERENCES procedure_in_consultation(procedure_name_, VAT_doctor, date_timestamp) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (quadrant, number)											REFERENCES teeth(quadrant, number) ON UPDATE CASCADE ON DELETE CASCADE

);





