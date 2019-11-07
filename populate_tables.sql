/*INSERT EMPLOYEE*/
/*employee_VAT | employee_name | employee_birth_date | employee_street | employee_city | employee_zip | employee_IBAN | employee_salary |*/
INSERT INTO employee VALUES ('628-22-9602', 'Cassius Lydiatt', '1967-8-31', 'Weeping Birch', 'Banquero', '3303', 'GR55 2129 201W VPZF 9YEU I2SS FJI', '€1164,12');
INSERT INTO employee VALUES ('381-06-1913', 'Cullin Yakushkev', '1995-3-14', 'Luster', 'Dete', '3303', 'FR77 4624 0548 32ME NK7I 6NL1 V41', '€664,71');
INSERT INTO employee VALUES ('726-88-9933', 'Margery Doldon', '1950-8-10', 'Becker', 'Bojen Kulon', '6200-759', 'KZ28 5178 B732 RFEM 7ETX', '€2689,50');
INSERT INTO employee VALUES ('253-49-1355', 'Myrvyn Windram', '1974-12-2', 'Northfield', 'Malian', '6250-049', 'GT85 KLBQ LMOY 4VYW 2BNJ GDGR BVCX', '€1432,07');
INSERT INTO employee VALUES ('164-05-0156', 'Orella Simoni', '1968-7-11', 'Old Shore', 'Santa Eulalia', '6300-125', 'FR86 5196 4861 89WR V7OH CPTL K74', '€2860,56');
INSERT INTO employee VALUES ('585-04-1776', 'Xever Deeming', '1977-8-23', 'Maple Wood', 'Cikandang', '1869-222', 'MR28 2395 6680 7261 0719 5549 747', '€2937,02');
INSERT INTO employee VALUES ('611-36-6228', 'Sandor Beckwith', '1993-7-9', 'Lindbergh', 'Tibro', '543 30', 'IE48 RBOF 8838 0571 9407 04', '€1322,72');
INSERT INTO employee VALUES ('554-01-9560', 'Arturo Cohani', '1953-6-21', 'Holy Cross', 'Vimieiro', '4705-656', 'CY78 8308 8983 CJXW TETU THRR K4NH', '€2120,73');
INSERT INTO employee VALUES ('204-53-2647', 'Ciel Eastham', '1999-12-27', 'Meadow Ridge', 'Cikaduen', '4236', 'IT23 E861 0395 289L GKB9 LDWU P9C', '€1159,85');
INSERT INTO employee VALUES ('120-69-0626', 'Aubrey Cokayne', '1994-1-2', 'Mitchell', 'Luzino', '84-242', 'AZ56 PKZV VKLQ 4CA9 TB0H GADX YIWY', '€2967,18');
INSERT INTO employee VALUES ('604-24-1006', 'Jane SweetTooth', '1990-5-a', 'Westport', 'Biguaçu', '88160-000', 'BE53 3506 1083 4657', '€2705,35');
INSERT INTO employee VALUES ('433-46-4246', 'Therine Antram', '1954-3-1', 'Shelley', 'Trollhättan', '461 42', 'BE84 2697 6957 2794', '€619,04');

/*INSERT PHONE_NUMBER*/
/*employee_VAT | phone_number */
INSERT INTO phone_number_employee VALUES ('628-22-9602', '+351966036154');
INSERT INTO phone_number_employee VALUES ('381-06-1913', '966364885');
INSERT INTO phone_number_employee VALUES ('726-88-9933', '969708865');
INSERT INTO phone_number_employee VALUES ('253-49-1355', '962879070');
INSERT INTO phone_number_employee VALUES ('164-05-0156', '965565898');
INSERT INTO phone_number_employee VALUES ('585-04-1776', '962454141');
INSERT INTO phone_number_employee VALUES ('611-36-6228', '964990338');
INSERT INTO phone_number_employee VALUES ('554-01-9560', '967765575');
INSERT INTO phone_number_employee VALUES ('204-53-2647', '965946884');
INSERT INTO phone_number_employee VALUES ('120-69-0626', '964002284');
INSERT INTO phone_number_employee VALUES ('604-24-1006', '962749603');
INSERT INTO phone_number_employee VALUES ('433-46-4246', '966678111');

/*INSERT RECEPTIONIST*/
/*VAT_receptionist*/
INSERT INTO receptionist VALUES ('628-22-9602');
INSERT INTO receptionist VALUES ('381-06-1913');
INSERT INTO receptionist VALUES ('726-88-9933');
INSERT INTO receptionist VALUES ('253-49-1355');

/*INSERT DOCTOR*/
/* VAT_doctor  | specialization   | biography | email*/
insert into doctor values ('204-53-2647','Dental Manager', 'hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel', 'kseabon0@wired.com');
insert into doctor values ('120-69-0626','Dental Hygienist', 'orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a', 'cgarie1@reddit.com');
insert into doctor values ('604-24-1006','Cirurgeon', 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet', 'mpauel2@loc.gov');
insert into doctor values ('433-46-4246','Pediatrician', 'turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in', 'ewillment3@wikipedia.org');

/*INSERT NURSE*/
insert into nurse values ('164-05-0156');
insert into nurse values ('585-04-1776');
insert into nurse values ('611-36-6228');
insert into nurse values ('554-01-9560');

/*INSERT CLIENT*/
/*client_VAT  | client_name | client_birth_date | client_street | client_city | client_zip | client_gender | client_age*/
insert into client values ('892-19-9548', 'Jimmie Strettle', '1964-5-5', 'Dwight', 'Kansas City', '64187', 'Male', null); /*falta age*/
insert into client values ('703-30-2993', 'Veronika Doughton', '1981-1-2', 'East', 'Fray Bentos', '6200-759', 'Female', null);
insert into client values ('264-89-1889', 'Essy Skupinski', '1959-8-12', 'Schmedeman', 'San Salvador', '6300-130', 'Female', null);
insert into client values ('842-73-0131', 'Tiphanie McSharry', '2008-9-11', 'High Crossing', 'Povorino', '397355', 'Female', null);
insert into client values ('463-47-7696', 'Leo Lapthorn', '1957-4-6', 'Carioca', 'Ruo', '1600-610', 'Male', null);
insert into client values ('769-62-0549', 'Justine Michurin', '2003-3-9', 'Cherokee', 'Monte Mor', '13190-000', 'Female', null);
insert into client values ('397-12-3099', 'Cornell Felce', '1965-12-8', 'Butternut', 'Ryczów', '34-115', 'Male', null);
insert into client values ('727-22-5453', 'Raynor Gildersleaves', '1965-1-23', 'Ryan', 'San Antonio', '6407', 'Male', null);
insert into client values ('152-70-3658', 'Baudoin Haile', '1961-10-3', 'Hagan', 'Malko Tŭrnovo', '8359', 'Male', null);
insert into client values ('759-92-5791', 'Bibbie Aldine', '1961-9-12', 'Esch', 'Bagong Sikat', '4903', 'Female', null);

UPDATE client SET client_age = (SELECT YEAR(CURDATE()) - YEAR(client_birth_date) - (DATE_FORMAT(client_birth_date, '%m%d') < DATE_FORMAT(CURDATE(), '%m%d'))
				FROM client);

/*INSERT PHONE CLIENT*/ 
insert into phone_number_client values ('892-19-9548', '+351918640458');
insert into phone_number_client values ('703-30-2993', '917518981');
insert into phone_number_client values ('264-89-1889', '919071606');
insert into phone_number_client values ('842-73-0131', '917072540');
insert into phone_number_client values ('463-47-7696', '912941625');
insert into phone_number_client values ('769-62-0549', '917487798');
insert into phone_number_client values ('397-12-3099', '918349267');
insert into phone_number_client values ('727-22-5453', '912673300');
insert into phone_number_client values ('152-70-3658', '911141005');
insert into phone_number_client values ('759-92-5791', '919191541');

/*INSERT PERMANENT*/
/*VAT_permanent | years_of_experience*/
insert into permanent_doctor values ('604-24-1006', 8);
insert into permanent_doctor values ('433-46-4246', 14);

/*INSERT TRAINEE*/
/* VAT_trainee | supervisor*/
insert into trainee_doctor values ('204-53-2647', '604-24-1006');
insert into trainee_doctor values ('120-69-0626', '433-46-4246');

/*INSERT SUPERVISION_REPORT*/
/* VAT_trainee | date_timestamp | report_description | report_evaluation*/
insert into supervision_report values ('204-53-2647', '2013-7-16', 'fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer', 4);
insert into supervision_report values ('120-69-0626', '2005-1-2', 'congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus', 4);
insert into supervision_report values ('204-53-2647', '2016-6-15', 'ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam', 2);
insert into supervision_report values ('120-69-0626', '2017-1-4', 'aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio', 4);
insert into supervision_report values ('204-53-2647', '2010-7-27', 'imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit', 5);
insert into supervision_report values ('120-69-0626', '2006-3-30', 'orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis', 1);
insert into supervision_report values ('204-53-2647', '2008-8-11', 'metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam', 4);
insert into supervision_report values ('120-69-0626', '2002-4-24', 'nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing', 2);
insert into supervision_report values ('204-53-2647', '2002-2-24', 'erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus', 5);
insert into supervision_report values ('120-69-0626', '2012-7-15', 'elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis', 4);

/*INSERT APPOINTMENT*/
/*('Vat_Doctor', 'VAT_Client', 'date_timestamp', 'appointment_description')*/
insert into appointment values ('204-53-2647', '892-19-9548', '2013-7-16', 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse');
insert into appointment values ('120-69-0626', '703-30-2993', '2005-1-2',  'nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio');
insert into appointment values ('604-24-1006', '264-89-1889', '2016-6-15', 'lectus aliquam sit amet diam in magna bibendum imperdiet nullam');
insert into appointment values ('433-46-4246', '842-73-0131', '2017-1-4',  'sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique');
insert into appointment values ('204-53-2647', '463-47-7696', '2010-7-27', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('120-69-0626', '769-62-0549', '2006-3-30', 'tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet');
insert into appointment values ('604-24-1006', '397-12-3099', '2008-8-11', 'nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel');
insert into appointment values ('433-46-4246', '463-47-7696', '2002-4-24','phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi');
insert into appointment values ('204-53-2647', '769-62-0549', '2002-2-24', 'dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum');
insert into appointment values ('120-69-0626', '397-12-3099', '2012-7-15', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed');
insert into appointment values ('204-53-2647', '769-62-0549', '2015-7-16', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed');
insert into appointment values ('433-46-4246', '842-73-0131', '2019-4-8', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('120-69-0626', '397-12-3099', '2019-11-21', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('120-69-0626', '842-73-0131', '2019-10-7', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');


/*INSERT CONSULTATION*/         
/*('VAT_Doctor', 'Date', Description)*/
insert into consultation values ('204-53-2647', '2013-7-16', 'ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras', 'lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem', 'id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius', 'rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id');
insert into consultation values ('120-69-0626', '2005-1-2', 'nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel', 'sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque', 'ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia', 'luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper');
insert into consultation values ('604-24-1006', '2016-6-15', 'vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec', 'luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec', 'orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris', 'est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna');
insert into consultation values ('433-46-4246', '2017-1-4', 'urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue', 'venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris', 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo', 'proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut');
insert into consultation values ('204-53-2647', '2010-7-27', 'condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui', 'et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat', 'aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur', 'ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel');
insert into consultation values ('120-69-0626', '2006-3-30', 'tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla', 'in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus', 'non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum', 'amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor');
insert into consultation values ('604-24-1006', '2008-8-11', 'id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus', 'semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor', 'luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit', 'amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus');
insert into consultation values ('433-46-4246', '2002-4-24', 'ac diam cras pellentesque volutpat dui maecenas tristique est et tempus', 'vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra', 'maecenas tristique est et tempus semper est quam pharetra magna ac', 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus');
insert into consultation values ('204-53-2647', '2002-2-24', 'augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices', 'consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in', 'nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel', 'malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum');
insert into consultation values ('120-69-0626', '2012-7-15', 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet', 'nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat', 'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', 'consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam');
insert into consultation values ('204-53-2647', '2015-7-16', 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet', 'nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat', 'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', 'consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam');
insert into consultation values ('433-46-4246', '2019-4-8', 'condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui', 'et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat', 'aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur', 'ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel');
insert into consultation values ('120-69-0626', '2019-11-21', 'condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui', 'et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat', 'aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur', 'ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel');


/*INSERT CONSULTATION_ASSISTANT*/
/*('VAT_Doctor', 'Date', VAT_Nurse)*/
insert into consultation_assistant values ('204-53-2647', '2013-7-16', '164-05-0156');
insert into consultation_assistant values ('120-69-0626', '2005-1-2', '585-04-1776');
insert into consultation_assistant values ('604-24-1006', '2016-6-15', '611-36-6228');
insert into consultation_assistant values ('433-46-4246', '2017-1-4', '554-01-9560');
insert into consultation_assistant values ('204-53-2647', '2010-7-27', '164-05-0156');
insert into consultation_assistant values ('120-69-0626', '2006-3-30', '585-04-1776');
insert into consultation_assistant values ('604-24-1006', '2008-8-11','611-36-6228');
insert into consultation_assistant values ('433-46-4246', '2002-4-24','554-01-9560');
insert into consultation_assistant values ('204-53-2647', '2002-2-24', '554-01-9560');
insert into consultation_assistant values ('120-69-0626', '2012-7-15', '554-01-9560');
insert into consultation_assistant values ('204-53-2647', '2015-7-16', '554-01-9560');
insert into consultation_assistant values ('433-46-4246', '2019-4-8', '611-36-6228');
insert into consultation_assistant values ('120-69-0626', '2019-11-21', '611-36-6228');


/*INSERT DIAGNOSTIC_CODE*/
/*('ID', 'diagnostic_description')*/
insert into diagnostic_code values ('0PWK47Z', 'sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse');
insert into diagnostic_code values ('0JH630Z', 'nulla pede ullamcorper augue a suscipit nulla elit ac nulla');
insert into diagnostic_code values ('09N3XZZ', 'etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia');
insert into diagnostic_code values ('037Y356', 'morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui');
insert into diagnostic_code values ('0SH544Z', 'molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam');
insert into diagnostic_code values ('0CWY8DZ', 'habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent');


/*INSERT DIAGNOSTIC_CODE_RELATION*/
/*('ID_1', 'ID_2', '')*/
insert into diagnostic_code_relation values ('037Y356', '0PWK47Z', 'type1');
insert into diagnostic_code_relation values ('0SH544Z', '0JH630Z', 'type2');
insert into diagnostic_code_relation values ('0CWY8DZ', '09N3XZZ', 'type3');

/*INSERT CONSULTATION_DIAGNOSTIC*/
/*VAT_doctor | date_timestamp | ID*/
insert into consultation_diagnostic values ('204-53-2647', '2013-7-16', '0PWK47Z');
insert into consultation_diagnostic values ('120-69-0626', '2005-1-2',  '0JH630Z');
insert into consultation_diagnostic values ('604-24-1006', '2016-6-15','09N3XZZ');
insert into consultation_diagnostic values ('433-46-4246', '2017-1-4', '037Y356');
insert into consultation_diagnostic values ('204-53-2647', '2010-7-27', '0SH544Z');
insert into consultation_diagnostic values ('120-69-0626', '2006-3-30', '0CWY8DZ');
insert into consultation_diagnostic values ('204-53-2647', '2015-7-16', '037Y356');
insert into consultation_diagnostic values ('433-46-4246', '2019-4-8', '037Y356');


/*INSERT MEDICATION*/
insert into medication values ('Norflex', 'Graceway Pharmaceuticals, LLC');
insert into medication values ('Acyclovir', 'PD-Rx Pharmaceuticals, Inc.');
insert into medication values ('Walgreens Sunscreen', 'WALGREEN CO.');
insert into medication values ('SELZENTRY', 'Pfizer Laboratories Div Pfizer Inc');
insert into medication values ('Velvet Grass', 'Nelco Laboratories, Inc.');
insert into medication values ('Scrub Pine', 'Nelco Laboratories, Inc.');
insert into medication values ('aspirin', 'H E B');
insert into medication values ('Leader SleepTime', 'Cardinal Health');

/*INSERT PRESCRIPTION*/
/* medication_name | medication_lab | VAT_doctor  | date_timestamp | ID | dosage | prescription_description*/
insert into prescription values ('Norflex', 'Graceway Pharmaceuticals, LLC'   ,		'204-53-2647', '2013-7-16', '0PWK47Z','10mg', 'Monthly');
insert into prescription values ('Acyclovir', 'PD-Rx Pharmaceuticals, Inc.'   ,		'120-69-0626', '2005-1-2',  '0JH630Z','20mg', 'Weekly');
insert into prescription values ('Walgreens Sunscreen', 'WALGREEN CO.'		  ,		'604-24-1006', '2016-6-15','09N3XZZ','30mg' , 'Weekly');
insert into prescription values ('SELZENTRY', 'Pfizer Laboratories Div Pfizer Inc',	'433-46-4246', '2017-1-4', '037Y356','4mg', 'Daily');
insert into prescription values ('Velvet Grass', 'Nelco Laboratories, Inc.'   ,		'204-53-2647', '2010-7-27', '0SH544Z','100mg', 'Never');
insert into prescription values ('Velvet Grass', 'Nelco Laboratories, Inc.'   ,     '204-53-2647', '2015-7-16', '037Y356','100mg', 'Never');
insert into prescription values ('Velvet Grass', 'Nelco Laboratories, Inc.'   ,     '433-46-4246', '2019-4-8', '037Y356','50mg', 'Daily');
											
											
/*INSERT PROCEDURE*/
insert into procedure_ values ('Extraction', 'Teeth Removal');
insert into procedure_ values ('maxillary molar periapical radiograph', 'Radiography Exam');
insert into procedure_ values ('Gum Surgery', 'Surgery');
insert into procedure_ values ('Sealants', 'Sealants application');
insert into procedure_ values ('Teeth Whitening', 'in-office bleaching');

/*INSERT PROCEDURE_IN_CONSULTATION*/
/* procedure_name_ | VAT_doctor | date_timestamp | p_in_c_description*/
insert into procedure_in_consultation values ('Extraction','204-53-2647', '2013-7-16', 'descp1');
insert into procedure_in_consultation values ('maxillary molar periapical radiograph',	'120-69-0626', '2005-1-2', 'descp2');
insert into procedure_in_consultation values ('Gum Surgery','604-24-1006', '2016-6-15','descp3');
insert into procedure_in_consultation values ('Sealants', '433-46-4246', '2017-1-4', 'descp4');
insert into procedure_in_consultation values ('Teeth Whitening','204-53-2647', '2010-7-27','descp5');

/*INSERT PROCEDURE_RADIOLOGY*/
/*procedure_name_ | VAT_doctor  | date_timestamp | file_path*/
insert into procedure_radiology values ('Extraction','204-53-2647','2013-7-16', 'AeneanFermentumDonec.mp3');	
insert into procedure_radiology values ('maxillary molar periapical radiograph','120-69-0626', '2005-1-2', 'AugueLuctus.ppt');
insert into procedure_radiology values ('Gum Surgery','604-24-1006', '2016-6-15','Nulla.txt');
insert into procedure_radiology values ('Sealants','433-46-4246', '2017-1-4',  'NullaSed.xls');
insert into procedure_radiology values ('Teeth Whitening','204-53-2647', '2010-7-27','AcNequeDuis.mpeg');

/*INSERT TEETH*/
insert into teeth values (3, 1,'top right central incisor');
insert into teeth values (2, 8,'top right lateral incisor');
insert into teeth values (1, 6,'top right cuspid,');

/*INSERT PROCEDURE_CHARTING*/
/* procedure_name_ | VAT_doctor | date_timestamp | quadrant | number | procedure_charting_descp | measure*/
insert into procedure_charting values ('Extraction','204-53-2647', '2013-7-16', 3, 1,'descp1', 2);
insert into procedure_charting values ('maxillary molar periapical radiograph',	'120-69-0626', '2005-1-2',2, 8,'descp2', 3);
insert into procedure_charting values ('Gum Surgery','604-24-1006', '2016-6-15',1, 6,'descp3', 5);
insert into procedure_charting values ('Sealants','433-46-4246', '2017-1-4', 3, 1,'descp4', 8);
insert into procedure_charting values ('Teeth Whitening','204-53-2647', '2010-7-27',2, 8,'descp5', 4);