USE SIBD;

/*INSERT EMPLOYEE*/
/*employee_VAT | employee_name | employee_birth_date | employee_street | employee_city | employee_zip | employee_IBAN | employee_salary |*/
INSERT INTO employee VALUES ('628-22-9602', 'Cassius Lydiatt', '1967-8-31', 'Weeping Birch', 'Banquero', '3303', 'GR55 2129 201W VPZF 9YEU I2SS FJI', 1164.12);
INSERT INTO employee VALUES ('381-06-1913', 'Cullin Yakushkev', '1995-3-14', 'Luster', 'Dete', '3303', 'FR77 4624 0548 32ME NK7I 6NL1 V41', 664.71);
INSERT INTO employee VALUES ('726-88-9933', 'Margery Doldon', '1950-8-10', 'Becker', 'Bojen Kulon', '6200-759', 'KZ28 5178 B732 RFEM 7ETX', 2689.50);
INSERT INTO employee VALUES ('253-49-1355', 'Myrvyn Windram', '1974-12-2', 'Northfield', 'Malian', '6250-049', 'GT85 KLBQ LMOY 4VYW 2BNJ GDGR BVCX', 1432.07);
INSERT INTO employee VALUES ('164-05-0156', 'Orella Simoni', '1968-7-11', 'Old Shore', 'Santa Eulalia', '6300-125', 'FR86 5196 4861 89WR V7OH CPTL K74', 2860.56);
INSERT INTO employee VALUES ('585-04-1776', 'Xever Deeming', '1977-8-23', 'Maple Wood', 'Cikandang', '1869-222', 'MR28 2395 6680 7261 0719 5549 747', 2937.02);
INSERT INTO employee VALUES ('611-36-6228', 'Sandor Beckwith', '1993-7-9', 'Lindbergh', 'Tibro', '543 30', 'IE48 RBOF 8838 0571 9407 04', 1322.72);
INSERT INTO employee VALUES ('554-01-9560', 'Arturo Cohani', '1953-6-21', 'Holy Cross', 'Vimieiro', '4705-656', 'CY78 8308 8983 CJXW TETU THRR K4NH', 2120.73);
INSERT INTO employee VALUES ('204-53-2647', 'Ciel Eastham', '1999-12-27', 'Meadow Ridge', 'Cikaduen', '4236', 'IT23 E861 0395 289L GKB9 LDWU P9C', 1159.85);
INSERT INTO employee VALUES ('120-69-0626', 'Aubrey Cokayne', '1994-1-2', 'Mitchell', 'Luzino', '84-242', 'AZ56 PKZV VKLQ 4CA9 TB0H GADX YIWY', 2967.18);
INSERT INTO employee VALUES ('604-24-1006', 'Jane SweetTooth', '1990-5-2', 'Westport', 'Biguacu', '88160-000', 'BE53 3506 1083 4657', 2705.35);
INSERT INTO employee VALUES ('433-46-4246', 'Therine Antram', '1954-3-1', 'Shelley', 'Trollhattan', '461 42', 'BE84 2697 6957 2794', 619.04);

/*INSERT PHONE_NUMBER*/
/*employee_VAT | phone_number */
INSERT INTO phone_number_employee VALUES ('628-22-9602', '966036154');
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
insert into client values ('892-19-9548', 'Jimmie Strettle', '1964-5-5', 'Dwight', 'Kansas City', '64187', 'Male', null);
insert into client values ('703-30-2993', 'Veronika Doughton', '1981-1-2', 'East', 'Kansas City', '64187', 'Female', null);
insert into client values ('264-89-1889', 'Essy Skupinski', '1959-8-12', 'Schmedeman', 'San Salvador', '6300-130', 'Female', null);
insert into client values ('842-73-0131', 'Tiphanie McSharry', '2008-9-11', 'High Crossing', 'Povorino', '397355', 'Female', null);
insert into client values ('463-47-7696', 'Leo Lapthorn', '1957-4-6', 'Carioca', 'Ruo', '1600-610', 'Male', null);
insert into client values ('769-62-0549', 'Justine Michurin', '2003-3-9', 'Cherokee', 'Monte Mor', '13190-000', 'Female', null);
insert into client values ('397-12-3099', 'Cornell Felce', '1965-12-8', 'Butternut', 'Ryczow', '34-115', 'Male', null);
insert into client values ('727-22-5453', 'Raynor Gildersleaves', '1965-1-23', 'Ryan', 'San Antonio', '6407', 'Male', null);
insert into client values ('152-70-3658', 'Baudoin Haile', '1961-10-3', 'Hagan', 'Malko Turnovo', '8359', 'Male', null);
insert into client values ('759-92-5791', 'Bibbie Aldine', '1961-9-12', 'Esch', 'Bagong Sikat', '4903', 'Female', null);
insert into client values ('342-12-5861', 'Evan Simms', '1987-6-18', 'Elm', 'Los Angeles', '90210', 'Male', null);
insert into client values ('542-12-5861', 'Cornell Aldine', '1989-6-18', 'Elm', 'Los Angeles', '90210', 'Male', null);

UPDATE client SET client_age = 
	YEAR(CURDATE()) - YEAR(client_birth_date) - (DATE_FORMAT(client_birth_date, '%m%d') < DATE_FORMAT(CURDATE(), '%m%d'))
	WHERE client_age IS NULL;

/*INSERT PHONE CLIENT*/ 
insert into phone_number_client values ('892-19-9548', '918640458');
insert into phone_number_client values ('703-30-2993', '917518981');
insert into phone_number_client values ('264-89-1889', '919071606');
insert into phone_number_client values ('842-73-0131', '917072540');
insert into phone_number_client values ('463-47-7696', '912941625');
insert into phone_number_client values ('769-62-0549', '917487798');
insert into phone_number_client values ('397-12-3099', '918349267');
insert into phone_number_client values ('727-22-5453', '912673300');
insert into phone_number_client values ('152-70-3658', '911141005');
insert into phone_number_client values ('759-92-5791', '919191541');
insert into phone_number_client values ('542-12-5861', '939191541');

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
insert into supervision_report values ('120-69-0626', '2005-1-2', 'congue vivamus metus arcu insufficient', 4);
insert into supervision_report values ('204-53-2647', '2016-6-15', 'ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam', 2);
insert into supervision_report values ('120-69-0626', '2017-1-4', 'aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio', 4);
insert into supervision_report values ('204-53-2647', '2010-7-27', 'imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit', 5);
insert into supervision_report values ('120-69-0626', '2006-3-30', 'orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis', 1);
insert into supervision_report values ('204-53-2647', '2008-8-11', 'metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam', 4);
insert into supervision_report values ('120-69-0626', '2002-4-24', 'nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing', 2);
insert into supervision_report values ('204-53-2647', '2002-2-24', 'erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus', 5);
insert into supervision_report values ('120-69-0626', '2012-7-15', 'elit insufficient tortor  tortor duis mattis', 4);
insert into supervision_report values ('204-53-2647', '2011-08-22', 'mauris', 1);
insert into supervision_report values ('120-69-0626', '2003-07-02', 'convallis duis consequat dui nec', 2);
insert into supervision_report values ('204-53-2647', '2015-03-25', 'suscipit ligula in', 1);
insert into supervision_report values ('120-69-0626', '2015-05-18', 'dis parturient montes nascetur ridiculus', 5);
insert into supervision_report values ('204-53-2647', '2004-02-03', 'sagittis sapien insufficient', 1);
insert into supervision_report values ('120-69-0626', '2014-02-02', 'tellus nisi', 3);
insert into supervision_report values ('204-53-2647', '2011-04-15', 'id', 4);
insert into supervision_report values ('120-69-0626', '2018-12-09', 'rutrum nulla tellus in', 5);
insert into supervision_report values ('204-53-2647', '2008-05-24', 'dui maecenas', 5);
insert into supervision_report values ('120-69-0626', '2004-10-28', 'dictumst aliquam augue quam sollicitudin', 2);
insert into supervision_report values ('204-53-2647', '2006-06-16', 'et magnis dis parturient montes', 2);
insert into supervision_report values ('120-69-0626', '2016-11-26', 'tristique est et', 1);
insert into supervision_report values ('204-53-2647', '2017-08-29', 'consectetuer eget rutrum', 5);
insert into supervision_report values ('120-69-0626', '2000-12-11', 'vitae ipsum aliquam non', 4);
insert into supervision_report values ('204-53-2647', '2007-05-29', 'sem fusce consequat nulla', 4);
insert into supervision_report values ('120-69-0626', '2010-09-09', 'eget', 1);
insert into supervision_report values ('204-53-2647', '2009-12-18', 'leo rhoncus sed vestibulum', 4);
insert into supervision_report values ('120-69-0626', '2009-07-28', 'lacinia aenean sit amet', 1);
insert into supervision_report values ('204-53-2647', '2002-04-04', 'rutrum neque aenean', 2);
insert into supervision_report values ('120-69-0626', '2012-08-17', 'nec sem duis aliquam', 3);

/*INSERT APPOINTMENT*/
/*('Vat_Doctor', 'VAT_Client', 'date_timestamp', 'appointment_description')*/
insert into appointment values ('204-53-2647', '892-19-9548', '2013-7-16 13:12:32', 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse');
insert into appointment values ('120-69-0626', '892-19-9548', '2005-1-2 12:14:25',  'nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio');
insert into appointment values ('604-24-1006', '264-89-1889', '2016-6-15 13:18:41', 'lectus aliquam sit amet diam in magna bibendum imperdiet nullam');
insert into appointment values ('433-46-4246', '842-73-0131', '2017-1-4 9:38:39',  'sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique');
insert into appointment values ('204-53-2647', '463-47-7696', '2010-7-27 9:27:06', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('120-69-0626', '769-62-0549', '2006-3-30 15:32:16', 'tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet');
insert into appointment values ('604-24-1006', '397-12-3099', '2008-8-11 9:32:08', 'nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel');
insert into appointment values ('433-46-4246', '463-47-7696', '2002-4-24 15:51:34','phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi');
insert into appointment values ('204-53-2647', '769-62-0549', '2002-4-24 11:20:15', 'dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum');
insert into appointment values ('120-69-0626', '397-12-3099', '2012-7-15 11:02:16', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed');
insert into appointment values ('204-53-2647', '769-62-0549', '2015-7-16 15:15:15', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed');
insert into appointment values ('433-46-4246', '842-73-0131', '2019-4-8 12:55:12', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('120-69-0626', '397-12-3099', '2019-11-21 10:49:29', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('204-53-2647', '397-12-3099', '2012-4-17 13:11:38', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed');
insert into appointment values ('120-69-0626', '342-12-5861', '2019-4-12 13:05:29', 'libera me domine et morte eterna in die il la tremenda in die illa');
insert into appointment values ('433-46-4246', '842-73-0131', '2018-11-23 11:24:57', 'quoniam tu solo sanctus tu solo dominus tu solo altissimus');
insert into appointment values ('204-53-2647', '842-73-0131', '2019-6-21 14:48:21', 'quoniam tu solo sanctus tu solo dominus tu solo altissimus');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-7-16 11:03:07', 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-1-2 10:40:55',  'nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-6-15 12:15:13', 'lectus aliquam sit amet diam in magna bibendum imperdiet nullam');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-1-4 15:25:18',  'sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-7-27 11:06:41', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-3-30 12:05:46', 'tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-8-11 13:35:07', 'nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-4-24 12:38:49','phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-4-25 13:09:06', 'dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-7-15 13:05:18', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-7-19 13:19:42', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-4-9 10:53:26', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-11-11 16:52:07', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-10-8 13:22:15', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-7-31 13:45:21', 'libera me domine et morte eterna in die il la tremenda in die illa');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-8-26 13:12:36', 'quoniam tu solo sanctus tu solo dominus tu solo altissimus');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-4-17 14:51:18', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-5-10 14:16:29', 'libera me domine et morte eterna in die il la tremenda in die illa');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-11-23 14:25:29', 'quoniam tu solo sanctus tu solo dominus tu solo altissimus');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-6-27 12:06:43', 'quoniam tu solo sanctus tu solo dominus tu solo altissimus');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-8-1 16:44:24', 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-8-2 14:54:10',  'nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-8-3 14:20:25', 'lectus aliquam sit amet diam in magna bibendum imperdiet nullam');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-8-4 12:28:37',  'sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-8-5 13:02:13', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-8-6 9:23:12', 'tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-8-7 15:13:13', 'nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-8-8 12:56:06','phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-8-9 12:08:06', 'dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-8-10 15:11:24', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-8-12 12:31:50', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-8-13 14:23:23', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-8-14 11:38:26', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-8-15 15:02:20', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-8-16 15:46:01', 'libera me domine et morte eterna in die il la tremenda in die illa');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-8-17 10:44:07', 'quoniam tu solo sanctus tu solo dominus tu solo altissimus');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-8-18 9:43:44', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-8-19 12:32:42', 'libera me domine et morte eterna in die il la tremenda in die illa');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-8-20 12:34:17', 'quoniam tu solo sanctus tu solo dominus tu solo altissimus');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-8-21 16:00:53', 'quoniam tu solo sanctus tu solo dominus tu solo altissimus');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-2-1 13:22:51', 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-2-2 13:36:32',  'nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-2-3 10:44:59', 'lectus aliquam sit amet diam in magna bibendum imperdiet nullam');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-2-4 10:02:35',  'sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-2-5 15:06:36', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-2-6 15:08:21', 'tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-2-7 15:37:41', 'nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-2-8 12:38:39','phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-2-9 14:51:53', 'dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-2-10 16:47:16', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-2-12 10:32:57', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-2-13 9:46:40', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-2-14 15:56:59', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-2-15 9:20:50', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-2-16 12:01:38', 'libera me domine et morte eterna in die il la tremenda in die illa');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-2-17 11:24:08' , 'quoniam tu solo sanctus tu solo dominus tu solo altissimus');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-2-18 16:35:31', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-2-19 11:47:39', 'libera me domine et morte eterna in die il la tremenda in die illa');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-2-20 10:13:08', 'quoniam tu solo sanctus tu solo dominus tu solo altissimus');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-2-21 13:16:31', 'quoniam tu solo sanctus tu solo dominus tu solo altissimus');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-12-1 10:01:26', 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-12-2 13:03:44',  'nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-12-3 13:35:19', 'lectus aliquam sit amet diam in magna bibendum imperdiet nullam');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-12-4 13:26:26',  'sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-12-5 9:38:42', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-12-6 16:20:54', 'tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-12-7 12:48:26', 'nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-12-8 10:14:10','phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-12-9 16:31:06', 'dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-12-10 15:36:49', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-12-12 14:44:28', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-12-13 14:52:39', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-12-14 16:50:36', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-12-15 12:31:57', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-12-16 11:22:32', 'libera me domine et morte eterna in die il la tremenda in die illa');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-12-17 13:13:58', 'quoniam tu solo sanctus tu solo dominus tu solo altissimus');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-12-18 15:56:54', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-12-19 13:04:59', 'libera me domine et morte eterna in die il la tremenda in die illa');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-12-20 16:36:48', 'quoniam tu solo sanctus tu solo dominus tu solo altissimus');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-12-21 9:27:21', 'quoniam tu solo sanctus tu solo dominus tu solo altissimus');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-3-1 13:05:34', 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-3-2 10:06:15',  'nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-3-3 9:56:29', 'lectus aliquam sit amet diam in magna bibendum imperdiet nullam');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-3-4 11:47:09',  'sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-3-5 10:54:50', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-3-6 14:02:42', 'tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-3-7 14:38:14', 'nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-3-8 12:56:50','phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-3-9 10:02:38', 'dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-3-10 11:55:44', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-3-12 14:04:13', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-3-13 16:54:11', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-3-14 12:59:45', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-3-15 15:26:23', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-3-16 10:37:21', 'libera me domine et morte eterna in die il la tremenda in die illa');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-3-17 14:06:28', 'quoniam tu solo sanctus tu solo dominus tu solo altissimus');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-3-18 15:25:50', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-3-19 10:01:02', 'libera me domine et morte eterna in die il la tremenda in die illa');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-3-20 9:15:58', 'quoniam tu solo sanctus tu solo dominus tu solo altissimus');
insert into appointment values ('433-46-4246', '892-19-9548', '2019-3-21 11:55:55', 'quoniam tu solo sanctus tu solo dominus tu solo altissimus');
insert into appointment values ('433-46-4246', '542-12-5861', '2019-8-22 13:33:46', 'quoniam tu solo sanctus tu solo dominus tu solo altissimus');
insert into appointment values ('433-46-4246', '542-12-5861', '2019-8-23 13:56:24', 'quoniam tu solo sanctus tu solo dominus tu solo altissimus');
insert into appointment values ('120-69-0626', '842-73-0131', '2019-10-7 12:11:36', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into appointment values ('120-69-0626', '342-12-5861', '2012-7-16 10:16:32', 'libera me domine et morte eterna in die il la tremenda in die illa');
insert into appointment values ('204-53-2647', '842-73-0131', '2015-8-26 15:16:02', 'quoniam tu solo sanctus tu solo dominus tu solo altissimus');
/*INSERT CONSULTATION*/  
/*('VAT_Doctor', 'Date', Description)*/
insert into consultation values ('204-53-2647', '2013-7-16 13:12:32', 'ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras', 'lorem id ligula gingivitis ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem', 'id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius', 'rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id');
insert into consultation values ('120-69-0626', '2005-1-2 12:14:25', 'nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel', 'sapien cum gingivitis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque', 'ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia', 'luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper');
insert into consultation values ('604-24-1006', '2016-6-15 13:18:41', 'vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec', 'periodontitis et gingivitis posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec', 'orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris', 'est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna');
insert into consultation values ('433-46-4246', '2017-1-4 9:38:39',  'urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue', 'venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris', 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo', 'proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut');
insert into consultation values ('204-53-2647', '2010-7-27 9:27:06',  'condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui', 'et ultrices periodontitis cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat', 'aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur', 'ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel');
insert into consultation values ('120-69-0626', '2006-3-30 15:32:16', 'tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla', 'in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus', 'non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum', 'amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor');
insert into consultation values ('604-24-1006', '2008-8-11 9:32:08',  'id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus', 'semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor', 'luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit', 'amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus');
insert into consultation values ('433-46-4246', '2002-4-24 15:51:34','ac diam cras pellentesque volutpat dui maecenas tristique est et tempus', 'vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra', 'maecenas tristique est et tempus semper est quam pharetra magna ac', 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus');
insert into consultation values ('204-53-2647', '2002-4-24 11:20:15', 'augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices', 'consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in', 'nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel', 'malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum');
insert into consultation values ('120-69-0626', '2012-7-15 11:02:16', 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet', 'nonummy gingivitis tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat', 'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', 'consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam');
insert into consultation values ('204-53-2647', '2015-7-16 15:15:15', 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet', 'nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat', 'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', 'consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam');
insert into consultation values ('433-46-4246', '2019-4-8 12:55:12', 'condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui', 'et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat', 'aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur', 'ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel');
insert into consultation values ('120-69-0626', '2019-11-21 10:49:29', 'condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui', 'et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat', 'aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur', 'ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel');
insert into consultation values ('204-53-2647', '2012-4-17 13:11:38', 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet', 'nonummy gingivitis tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat', 'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', 'consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam');
insert into consultation values ('120-69-0626', '2019-4-12 13:05:29', 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet', 'nonummy gingivitis tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat', 'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', 'consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam');
insert into consultation values ('433-46-4246', '2018-11-23 11:24:57', 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet', 'nonummy gingivitis tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat', 'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', 'consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam');
insert into consultation values ('204-53-2647', '2019-6-21 14:48:21', 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet', 'nonummy gingivitis tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat', 'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', 'consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam');

/*INSERT CONSULTATION_ASSISTANT*/
/*('VAT_Doctor', 'Date', VAT_Nurse)*/
insert into consultation_assistant values ('204-53-2647', '2013-7-16 13:12:32', '164-05-0156');
insert into consultation_assistant values ('120-69-0626', '2005-1-2 12:14:25', '585-04-1776');
insert into consultation_assistant values ('604-24-1006', '2016-6-15 13:18:41', '611-36-6228');
insert into consultation_assistant values ('433-46-4246', '2017-1-4 9:38:39',  '554-01-9560');
insert into consultation_assistant values ('204-53-2647', '2010-7-27 9:27:06',  '164-05-0156');
insert into consultation_assistant values ('120-69-0626', '2006-3-30 15:32:16', '585-04-1776');
insert into consultation_assistant values ('604-24-1006', '2008-8-11 9:32:08',  '554-01-9560');
insert into consultation_assistant values ('433-46-4246', '2002-4-24 15:51:34','611-36-6228');
insert into consultation_assistant values ('204-53-2647', '2002-4-24 11:20:15', '611-36-6228');
insert into consultation_assistant values ('120-69-0626', '2012-7-15 11:02:16','554-01-9560');
insert into consultation_assistant values ('204-53-2647', '2015-7-16 15:15:15','611-36-6228' );
insert into consultation_assistant values ('433-46-4246', '2019-4-8 12:55:12',  '611-36-6228' );
insert into consultation_assistant values ('120-69-0626', '2019-11-21 10:49:29', '164-05-0156' );
insert into consultation_assistant values ('204-53-2647', '2012-4-17 13:11:38','611-36-6228');
insert into consultation_assistant values ('120-69-0626', '2019-4-12 13:05:29','554-01-9560' );
insert into consultation_assistant values ('433-46-4246', '2018-11-23 11:24:57', '554-01-9560' );
insert into consultation_assistant values ('204-53-2647', '2019-6-21 14:48:21', '554-01-9560' );


/*INSERT DIAGNOSTIC_CODE*/
/*('ID', 'diagnostic_description')*/
insert into diagnostic_code values ('0PWK47Z', 'sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse');
insert into diagnostic_code values ('0JH630Z', 'nulla pede ullamcorper augue a suscipit nulla elit ac nulla');
insert into diagnostic_code values ('09N3XZZ', 'etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia');
insert into diagnostic_code values ('037Y356', 'morbi non quam nec dui rutrum nulla tellus in sagittis dui');
insert into diagnostic_code values ('0SH544Z', 'gingivitis');
insert into diagnostic_code values ('0CWY8DZ', 'habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent');
insert into diagnostic_code values ('08J3YBZ', 'incipit lacrimarae jubilate deo dental cavities kyrie');
insert into diagnostic_code values ('0A2SE6T', 'filius clivis punctum dental cavities podatus porrectus');
insert into diagnostic_code values ('0J7LTW4', 'agnus dei qui tollis pecatta mundi dental cavities nobis infectious disease');
insert into diagnostic_code values ('18J4YBZ', 'incipit lacrimarae jubilate deo dental cavities kyrie');
insert into diagnostic_code values ('1A2SE6T', 'filius clivis punctum dental cavities podatus porrectus');
insert into diagnostic_code values ('1J7LTW4', 'agnus dei qui tollis pecatta mundi dental cavities nobis infectious disease');

/*INSERT DIAGNOSTIC_CODE_RELATION*/
/*('ID_1', 'ID_2', '')*/
insert into diagnostic_code_relation values ('037Y356', '0PWK47Z', 'type1');
insert into diagnostic_code_relation values ('0SH544Z', '0JH630Z', 'type2');
insert into diagnostic_code_relation values ('0CWY8DZ', '09N3XZZ', 'type3');

/*INSERT CONSULTATION_DIAGNOSTIC*/
/*VAT_doctor | date_timestamp | ID*/
insert into consultation_diagnostic values ('204-53-2647', '2013-7-16 13:12:32', '0PWK47Z');
insert into consultation_diagnostic values ('120-69-0626', '2005-1-2 12:14:25',  '0JH630Z');
insert into consultation_diagnostic values ('604-24-1006', '2016-6-15 13:18:41','09N3XZZ ');
insert into consultation_diagnostic values ('433-46-4246', '2017-1-4 9:38:39',  '037Y356' );
insert into consultation_diagnostic values ('204-53-2647', '2010-7-27 9:27:06',  '0SH544Z');
insert into consultation_diagnostic values ('120-69-0626', '2006-3-30 15:32:16', '0CWY8DZ');
insert into consultation_diagnostic values ('604-24-1006', '2008-8-11 9:32:08',  '037Y356');
insert into consultation_diagnostic values ('433-46-4246', '2002-4-24 15:51:34','037Y356' );
insert into consultation_diagnostic values ('204-53-2647', '2002-4-24 11:20:15','0CWY8DZ' );
insert into consultation_diagnostic values ('120-69-0626', '2012-7-15 11:02:16', '08J3YBZ');
insert into consultation_diagnostic values ('204-53-2647', '2015-7-16 15:15:15', '08J3YBZ');
insert into consultation_diagnostic values ('433-46-4246', '2019-4-8 12:55:12','0J7LTW4'  );
insert into consultation_diagnostic values ('120-69-0626', '2019-11-21 10:49:29','0A2SE6T');

/*INSERT MEDICATION*/
insert into medication values ('Norflex', 'Graceway Pharmaceuticals, LLC');
insert into medication values ('Acyclovir', 'PD-Rx Pharmaceuticals, Inc.');
insert into medication values ('Walgreens Sunscreen', 'WALGREEN CO.');
insert into medication values ('SELZENTRY', 'Pfizer Laboratories Div Pfizer Inc');
insert into medication values ('Velvet Grass', 'Nelco Laboratories, Inc.');
insert into medication values ('Scrub Pine', 'Nelco Laboratories, Inc.');
insert into medication values ('aspirin', 'H E B');
insert into medication values ('Leader SleepTime', 'Cardinal Health');
insert into medication values ('Dentex Cav', 'Franz Laboratories, Inc.');
insert into medication values ('CavityDentex', 'Lorant CO');
insert into medication values ('Elix Dentis', 'Cardinal Health');
insert into medication values ('Infex', 'Velma Laboratories, Inc.');

/*INSERT PRESCRIPTION*/
/* medication_name | medication_lab | VAT_doctor  | date_timestamp | ID | dosage | prescription_description*/
insert into prescription values ('Norflex', 'Graceway Pharmaceuticals, LLC'   ,		'204-53-2647', '2013-7-16 13:12:32', '0PWK47Z','10mg', 'Monthly');
insert into prescription values ('Acyclovir', 'PD-Rx Pharmaceuticals, Inc.'   ,		'120-69-0626', '2005-1-2 12:14:25',  '0JH630Z','20mg', 'Weekly');
insert into prescription values ('Walgreens Sunscreen', 'WALGREEN CO.'		  ,		'604-24-1006', '2016-6-15 13:18:41','09N3XZZ ','30mg' , 'Weekly');
insert into prescription values ('SELZENTRY', 'Pfizer Laboratories Div Pfizer Inc',	'433-46-4246', '2017-1-4 9:38:39',  '037Y356' ,'4mg', 'Daily');
insert into prescription values ('Velvet Grass', 'Nelco Laboratories, Inc.'   ,		'204-53-2647', '2010-7-27 9:27:06',  '0SH544Z','100mg', 'Never');
insert into prescription values ('Velvet Grass', 'Nelco Laboratories, Inc.'   ,     '120-69-0626', '2006-3-30 15:32:16', '0CWY8DZ','100mg', 'Never');
insert into prescription values ('Velvet Grass', 'Nelco Laboratories, Inc.'   ,     '604-24-1006', '2008-8-11 9:32:08',  '037Y356','50mg', 'Daily');
insert into prescription values ('Leader SleepTime', 'Cardinal Health'   ,          '433-46-4246', '2002-4-24 15:51:34','037Y356' ,'10mg', 'Weekly');
insert into prescription values ('Dentex Cav', 'Franz Laboratories, Inc.'   ,		'204-53-2647', '2002-4-24 11:20:15','0CWY8DZ' ,'50mg', '2 times a day');
insert into prescription values ('CavityDentex', 'Lorant CO'   ,		            '120-69-0626', '2012-7-15 11:02:16', '08J3YBZ','50mg', '2 times a day');
insert into prescription values ('Elix Dentis', 'Cardinal Health'   ,		        '204-53-2647', '2015-7-16 15:15:15', '08J3YBZ','15mg', 'Daily');																							  
insert into prescription values ('Infex', 'Velma Laboratories, Inc.'   ,		    '433-46-4246', '2019-4-8 12:55:12','0J7LTW4' , '15mg', 'Daily');             
/*INSERT PROCEDURE*/
insert into procedure_ values ('Extraction', 'Teeth Removal');
insert into procedure_ values ('maxillary molar periapical radiograph', 'Radiography Exam');
insert into procedure_ values ('Gum Surgery', 'Surgery');
insert into procedure_ values ('Sealants', 'Sealants application');
insert into procedure_ values ('Dental Charting', 'in-office bleaching');

/*INSERT PROCEDURE_IN_CONSULTATION*/
/* procedure_name_ | VAT_doctor | date_timestamp | p_in_c_description*/
insert into procedure_in_consultation values ('Extraction',								'204-53-2647', '2013-7-16 13:12:32', 'descp1');
insert into procedure_in_consultation values ('maxillary molar periapical radiograph',	'120-69-0626', '2005-1-2 12:14:25',  'descp2');
insert into procedure_in_consultation values ('Gum Surgery', 							'604-24-1006', '2016-6-15 13:18:41','descp3');
insert into procedure_in_consultation values ('Sealants', 								'433-46-4246', '2017-1-4 9:38:39',   'descp4');
insert into procedure_in_consultation values ('Dental Charting',						'204-53-2647', '2010-7-27 9:27:06',  'descp5');
insert into procedure_in_consultation values ('maxillary molar periapical radiograph',	'120-69-0626', '2006-3-30 15:32:16','descp3'); 
/*INSERT PROCEDURE_RADIOLOGY*/
/*procedure_name_ | VAT_doctor  | date_timestamp | file_path*/
insert into procedure_radiology values ('Extraction',							'204-53-2647', '2013-7-16 13:12:32','AeneanFermentumDonec.mp3');	
insert into procedure_radiology values ('maxillary molar periapical radiograph','120-69-0626', '2005-1-2 12:14:25', 'AugueLuctus.ppt');
insert into procedure_radiology values ('Gum Surgery',							'604-24-1006', '2016-6-15 13:18:41','Nulla.txt');
insert into procedure_radiology values ('Sealants',								'433-46-4246', '2017-1-4 9:38:39',   'NullaSed.xls');

/*INSERT TEETH*/                                                                
insert into teeth values (3, 1,'top right central incisor');
insert into teeth values (2, 8,'top right lateral incisor');
insert into teeth values (1, 6,'top right cuspid');
insert into teeth values (1, 2,'top left lateral incisor');
insert into teeth values (2, 4,'top left cuspid');


/*INSERT PROCEDURE_CHARTING*/
/* procedure_name_ | VAT_doctor | date_timestamp | quadrant | number | procedure_charting_descp | measure*/
insert into procedure_charting values ('Dental Charting',						'204-53-2647', '2010-7-27 9:27:06', 3, 1,'descp1', 2);
insert into procedure_charting values ('Dental Charting',						'204-53-2647', '2010-7-27 9:27:06', 2, 8,'descp5', 5);
                                                                               
                                                                               