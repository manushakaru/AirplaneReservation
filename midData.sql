use airplane;

INSERT INTO `admins` (`admin_id`, `first_name`, `last_name`, `email`, `password`) VALUES ('1', 'dilan', 'sachintha', 'dilan@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d');
INSERT INTO `admins` (`admin_id`, `first_name`, `last_name`, `email`, `password`) VALUES ('2', 'manusha', 'karunathilaka', 'manusha@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d');

INSERT INTO `customer_state` (`customer_state`, `discount`, `bookings_needed`) VALUES ('Frequent', '5', '5');
INSERT INTO `customer_state` (`customer_state`, `discount`, `bookings_needed`) VALUES ('Beginner', '0', '0');
INSERT INTO `customer_state` (`customer_state`, `discount`, `bookings_needed`) VALUES ('Gold', '10', '10');
INSERT INTO `customer_state` (`customer_state`, `discount`, `bookings_needed`) VALUES ('Guest', '0', '0');


INSERT INTO `customer` (`user_id`, `first_name`,`last_name`, `email`, `password`, `birthday`, `customer_type`, `mobile_no`) VALUES ('1', 'Damitha','chathuranga', 'test@123.com', '7c222fb2927d828af22f592134e8932480637c0d', '1996-8-15', 'Gold', '0711234567');
INSERT INTO `customer` (`user_id`, `first_name`, `last_name`, `email`, `password`, `birthday`, `mobile_no`) VALUES ('2', 'dilan', 'sachintha', 'dilan@123.com', '7c222fb2927d828af22f592134e8932480637c0d', '1996-10-25', '0711256567');
INSERT INTO `customer` (`user_id`, `first_name`, `last_name`, `email`, `password`, `birthday`, `customer_type`, `mobile_no`) VALUES ('3', 'erandana', 'kumara', 'erandana@123.com', '7c222fb2927d828af22f592134e8932480637c0d', '1999-5-9', 'Frequent', '0751234567');
INSERT INTO `customer` (`user_id`, `first_name`, `last_name`, `email`, `password`, `birthday`, `customer_type`, `mobile_no`) VALUES ('4', 'mayantha', 'hettiarachchi', 'mayantha@123.com', '7c222fb2927d828af22f592134e8932480637c0d', '2000-5-9', 'Gold', '0751234567');
INSERT INTO `customer` (`user_id`, `first_name`, `last_name`, `email`, `password`, `birthday`,  `mobile_no`) VALUES ('5', 'pinsara', 'weerasinghe', 'pinsara@123.com', '7c222fb2927d828af22f592134e8932480637c0d', '2002-5-9', '0751234567');
INSERT INTO `customer` (`user_id`, `first_name`, `last_name`, `email`, `password`, `birthday`, `customer_type`, `mobile_no`) VALUES ('6', 'chathura', 'senarathne', 'chathura@123.com', '7c222fb2927d828af22f592134e8932480637c0d', '1990-5-9', 'Gold', '0751234567');
INSERT INTO `customer` (`user_id`, `first_name`, `last_name`, `email`, `password`, `birthday`, `customer_type`, `mobile_no`) VALUES ('7', 'wasantha', 'senanayake', 'wasantha@123.com', '7c222fb2927d828af22f592134e8932480637c0d', '1960-5-9', 'Frequent', '0751234567');

INSERT INTO `aircraft` (`craft_id`, `craft_type`) VALUES ('1', 'Boeing 737');
INSERT INTO `aircraft` (`craft_id`, `craft_type`) VALUES ('2', 'Boeing 737');
INSERT INTO `aircraft` (`craft_id`, `craft_type`) VALUES ('3', 'Boeing 757');
INSERT INTO `aircraft` (`craft_id`, `craft_type`) VALUES ('4', 'Airbus A380');
INSERT INTO `aircraft` (`craft_id`, `craft_type`) VALUES ('5', 'Boeing 757');
INSERT INTO `aircraft` (`craft_id`, `craft_type`) VALUES ('6', 'Boeing 757');
INSERT INTO `aircraft` (`craft_id`, `craft_type`) VALUES ('7', 'Boeing 757');
INSERT INTO `aircraft` (`craft_id`, `craft_type`) VALUES ('8', 'Boeing 737');

/*bmi*/
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('1', 'Sri Lanka', NULL);
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('2', 'Katunayake', '1');

/*hri */
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('3', 'Hambantota', '1');
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('4', 'Mattala', '3');

/*rathmalana*/
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('6', 'Ratmalana', '1');

/*usa*/
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('7', 'USA', NULL);
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('8', 'New York State', '7');
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('9', 'New York city', '8');

/*CGK INDONISIA*/
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('10', 'Indonesia', NULL);
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('11', 'Banten', '10');
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('12', 'Tangerang City', '11');

/*DPS INDONISIA*/
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('13', 'Bali', '10');
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('14', 'Kabupaten Badung', '13');
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('15', 'Kuta', '14');
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('16', 'Tuban', '15');
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('17', 'Jalan Raya Gusti Ngurah Rai', '16');

/*DEL INDIA */
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('18', 'India', Null);
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('19', 'Delhi', '18');
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('20', 'New Delhi', '19');

/*BOM INDIA*/
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('21', 'Maharashtra', '18');
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('22', 'Mumbai', '21');

/*MAA INDIA*/
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('23', 'Tamil Nadu', '18');
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('24', 'Chennai', '23');
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('25', 'Meenambakkam', '24');
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('26', 'GST Rd', '25');

/*bkk Thailand*/
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('27', 'Thailand', Null);
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('28', 'Chang Wat Samut Prakan', '27');
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('29', 'Amphoe Bang Phli', '28');
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('30', '999 หมู่ 1 Nong Prue', '29');

/*dmk thailand*/
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('31', 'Krung Thep Maha Nakhon', '27');
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('32', 'Khet Don Mueang', '31');
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('33', 'Khwaeng Sanambin', '32');
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('34', '222 Vibhavadi Rangsit Rd', '33');

/*sin Singapore*/
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('35', 'Singapore', Null);
INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('36', 'Airport Blvd', '35');

INSERT INTO `airport` (`airport_code`, `location_id`, `airport_name`) VALUES ('1', '2', 'BMI Airport');
INSERT INTO `airport` (`airport_code`, `location_id`, `airport_name`) VALUES ('2', '4', 'HRI Airport');
INSERT INTO `airport` (`airport_code`, `location_id`, `airport_name`) VALUES ('3', '12', 'CGK Airport');
INSERT INTO `airport` (`airport_code`, `location_id`, `airport_name`) VALUES ('4', '17', 'DPS Airport');
INSERT INTO `airport` (`airport_code`, `location_id`, `airport_name`) VALUES ('5', '20', 'DEL Airport');
INSERT INTO `airport` (`airport_code`, `location_id`, `airport_name`) VALUES ('6', '22', 'BOM Airport');
INSERT INTO `airport` (`airport_code`, `location_id`, `airport_name`) VALUES ('7', '26', 'MAA Airport');
INSERT INTO `airport` (`airport_code`, `location_id`, `airport_name`) VALUES ('8', '30', 'BKK Airport');
INSERT INTO `airport` (`airport_code`, `location_id`, `airport_name`) VALUES ('9', '34', 'DMK Airport');
INSERT INTO `airport` (`airport_code`, `location_id`, `airport_name`) VALUES ('10', '36', 'SIN Airport');
INSERT INTO `airport` (`airport_code`, `location_id`, `airport_name`) VALUES ('11', '36', 'Ratmalana Airport');
INSERT INTO `airport` (`airport_code`, `location_id`, `airport_name`) VALUES ('12', '9', 'JFK Airport');


INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('1', '1', '2');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('2', '1', '3');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('3', '1', '4');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('4', '1', '5');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('5', '1', '6');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('6', '1', '7');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('7', '1', '8');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('8', '1', '9');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('9', '1', '10');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('10', '1', '12');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('11', '3', '1');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('12', '3', '2');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('13', '3', '4');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('14', '3', '5');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('15', '3', '6');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('16', '3', '7');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('17', '3', '8');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('18', '3', '9');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('19', '3', '10');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('20', '3', '11');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('21', '2', '1');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('22', '2', '3');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('23', '2', '4');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('24', '2', '5');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('25', '2', '6');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('26', '2', '7');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('27', '2', '8');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('28', '2', '9');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('29', '2', '10');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('30', '2', '11');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('31', '2', '12');

INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('32', '4', '1');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('33', '4', '2');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('34', '4', '3');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('35', '4', '5');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('36', '4', '6');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('37', '4', '7');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('38', '4', '8');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('39', '4', '9');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('40', '4', '10');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('41', '4', '11');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('42', '4', '12');

INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('43', '5', '2');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('44', '5', '3');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('45', '5', '4');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('46', '5', '6');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('47', '5', '7');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('48', '5', '8');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('49', '5', '9');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('50', '5', '10');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('51', '5', '11');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('52', '5', '12');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('53', '5', '1');

INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('54', '6', '3');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('55', '6', '4');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('56', '6', '5');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('57', '6', '7');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('58', '6', '8');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('59', '6', '9');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('60', '6', '10');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('61', '6', '11');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('62', '6', '12');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('63', '6', '1');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('64', '6', '2');


INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('65', '7', '4');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('66', '7', '5');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('67', '7', '6');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('68', '7', '8');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('69', '7', '9');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('70', '7', '10');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('71', '7', '11');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('72', '7', '12');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('73', '7', '1');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('74', '7', '2');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('75', '7', '3');


INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('76', '8', '5');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('77', '8', '6');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('78', '8', '7');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('79', '8', '9');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('80', '8', '10');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('81', '8', '11');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('82', '8', '12');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('83', '8', '1');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('84', '8', '2');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('85', '8', '3');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('86', '8', '4');


INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('87', '9', '6');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('88', '9', '7');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('89', '9', '8');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('90', '9', '10');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('91', '9', '11');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('92', '9', '12');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('93', '9', '1');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('94', '9', '2');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('95', '9', '3');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('96', '9', '4');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('97', '9', '5');


INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('98', '10', '7');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('99', '10', '8');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('100', '10', '9');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('101', '10', '11');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('102', '10', '12');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('103', '10', '1');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('104', '10', '2');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('105', '10', '3');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('106', '10', '4');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('107', '10', '5');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('108', '10', '6');


INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('109', '11', '8');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('110', '11', '9');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('111', '11', '10');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('112', '11', '12');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('113', '11', '1');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('114', '11', '2');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('115', '11', '3');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('116', '11', '4');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('117', '11', '5');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('118', '11', '6');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('119', '11', '7');


INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('120', '12', '9');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('121', '12', '10');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('122', '12', '11');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('123', '12', '1');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('124', '12', '2');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('125', '12', '3');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('126', '12', '4');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('127', '12', '5');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('128', '12', '6');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('129', '12', '7');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('130', '12', '8');

INSERT INTO `class` (`class_id`, `class`) VALUES ('1', 'Economy');
INSERT INTO `class` (`class`) VALUES ('Buisness');
INSERT INTO `class` (`class`) VALUES ('Platinum');


INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('1', '2', 'Sunday', '07:00:00', '10:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('2', '2', 'Monday', '07:00:00', '10:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('3', '2', 'Tuesday', '07:00:00', '10:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('4', '2', 'Wednesday', '07:00:00', '10:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('5', '2', 'Thursday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('6', '2', 'Friday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('7', '1', 'Tuesday', '08:00:00', '10:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('8', '1', 'Wednesday', '07:00:00', '12:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('9', '1', 'Friday', '01:00:00', '22:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('10', '1', 'Wednesday', '08:00:00', '14:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('11', '3', 'Monday', '08:00:00', '10:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('12', '3', 'Tuesday', '10:00:00', '12:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('13', '3', 'Sunday', '16:00:00', '18:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('14', '3', 'Thursday', '22:00:00', '00:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('15', '3', 'Saturday', '08:00:00', '10:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '4', 'Sunday', '09:00:00', '10:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '4', 'Monday', '09:00:00', '10:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '4', 'Tuesday', '09:00:00', '10:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '4', 'Wednesday', '09:00:00', '10:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '4', 'Thursday', '08:00:00', '09:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '4', 'Friday', '08:00:00', '09:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '4', 'Saturday', '08:00:00', '09:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '5', 'Sunday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '5', 'Monday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '5', 'Tuesday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '5', 'Wednesday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '5', 'Thursday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '5', 'Friday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '5', 'Saturday', '08:00:00', '11:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '6', 'Sunday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '6', 'Monday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '6', 'Tuesday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '6', 'Wednesday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '6', 'Thursday', '08:00:00', '16:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '6', 'Friday', '08:00:00', '16:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '6', 'Saturday', '08:00:00', '16:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '7', 'Saturday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '8', 'Saturday', '08:00:00', '11:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '9', 'Sunday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '9', 'Monday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '9', 'Tuesday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '9', 'Wednesday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '9', 'Thursday', '08:00:00', '16:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '9', 'Friday', '08:00:00', '16:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '9', 'Saturday', '08:00:00', '16:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '10', 'Sunday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '10', 'Monday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '10', 'Tuesday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '10', 'Wednesday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '10', 'Thursday', '08:00:00', '16:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '10', 'Friday', '08:00:00', '16:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '10', 'Saturday', '08:00:00', '16:00:00');


INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '11', 'Thursday', '08:00:00', '16:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '12', 'Sunday', '09:00:00', '10:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '12', 'Monday', '09:00:00', '10:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '12', 'Tuesday', '09:00:00', '10:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '12', 'Wednesday', '09:00:00', '10:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '12', 'Thursday', '08:00:00', '09:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '12', 'Friday', '08:00:00', '09:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '12', 'Saturday', '08:00:00', '09:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '13', 'Thursday', '08:00:00', '16:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '14', 'Wednesday', '09:00:00', '20:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '15', 'Wednesday', '09:00:00', '20:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '16', 'Sunday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '16', 'Monday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '16', 'Tuesday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '16', 'Wednesday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '16', 'Thursday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '16', 'Friday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '16', 'Saturday', '08:00:00', '11:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '17', 'Sunday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '18', 'Monday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '19', 'Tuesday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '20', 'Sunday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '20', 'Monday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '20', 'Tuesday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '20', 'Wednesday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '20', 'Thursday', '08:00:00', '29:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '20', 'Friday', '08:00:00', '29:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '20', 'Saturday', '08:00:00', '29:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '21', 'Sunday', '09:00:00', '20:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '23', 'Monday', '09:00:00', '20:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '23', 'Tuesday', '09:00:00', '20:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '23', 'Wednesday', '09:00:00', '20:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '22', 'Thursday', '08:00:00', '09:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '23', 'Friday', '08:00:00', '09:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '23', 'Saturday', '08:00:00', '09:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '24', 'Sunday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '29', 'Monday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '29', 'Tuesday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '29', 'Wednesday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '25', 'Thursday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '29', 'Friday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '29', 'Saturday', '08:00:00', '11:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '30', 'Sunday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '30', 'Monday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '30', 'Tuesday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '26', 'Wednesday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '30', 'Thursday', '08:00:00', '38:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '30', 'Friday', '08:00:00', '38:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '30', 'Saturday', '08:00:00', '38:00:00');


INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '32', 'Sunday', '09:00:00', '30:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '27', 'Monday', '09:00:00', '30:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '32', 'Tuesday', '09:00:00', '30:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '32', 'Wednesday', '09:00:00', '30:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '28', 'Thursday', '08:00:00', '09:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '32', 'Friday', '08:00:00', '09:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '29', 'Saturday', '08:00:00', '09:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '31', 'Sunday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '38', 'Monday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '38', 'Tuesday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '33', 'Wednesday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '38', 'Thursday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '38', 'Friday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '34', 'Saturday', '08:00:00', '11:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '35', 'Sunday', '09:00:00', '50:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '36', 'Monday', '09:00:00', '50:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '37', 'Tuesday', '09:00:00', '50:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '38', 'Wednesday', '09:00:00', '50:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '39', 'Thursday', '08:00:00', '09:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '40', 'Friday', '08:00:00', '09:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '47', 'Saturday', '08:00:00', '09:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '50', 'Sunday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '50', 'Monday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '50', 'Tuesday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '50', 'Wednesday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '50', 'Thursday', '08:00:00', '61:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '50', 'Friday', '08:00:00', '61:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '50', 'Saturday', '08:00:00', '61:00:00');


INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '57', 'Sunday', '09:00:00', '50:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '57', 'Monday', '09:00:00', '50:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '57', 'Tuesday', '09:00:00', '50:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '57', 'Wednesday', '09:00:00', '50:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '57', 'Thursday', '08:00:00', '09:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '57', 'Friday', '08:00:00', '09:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '57', 'Saturday', '08:00:00', '09:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '61', 'Sunday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '61', 'Monday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '61', 'Tuesday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '61', 'Wednesday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '61', 'Thursday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '61', 'Friday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '61', 'Saturday', '08:00:00', '11:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '74', 'Sunday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '74', 'Monday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '74', 'Tuesday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '74', 'Wednesday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '74', 'Thursday', '08:00:00', '82:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '74', 'Friday', '08:00:00', '82:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '74', 'Saturday', '08:00:00', '82:00:00');


INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '78', 'Sunday', '09:00:00', '74:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '78', 'Monday', '09:00:00', '74:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '78', 'Tuesday', '09:00:00', '74:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '78', 'Wednesday', '09:00:00', '74:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '78', 'Thursday', '08:00:00', '09:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '78', 'Friday', '08:00:00', '09:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '78', 'Saturday', '08:00:00', '09:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '82', 'Sunday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '82', 'Monday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '82', 'Tuesday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '82', 'Wednesday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '82', 'Thursday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '82', 'Friday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '82', 'Saturday', '08:00:00', '11:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '85', 'Sunday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '85', 'Monday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '85', 'Tuesday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '85', 'Wednesday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '85', 'Thursday', '08:00:00', '98:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '85', 'Friday', '08:00:00', '98:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '85', 'Saturday', '08:00:00', '98:00:00');


INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '93', 'Sunday', '09:00:00', '85:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '93', 'Monday', '09:00:00', '85:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '93', 'Tuesday', '09:00:00', '85:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '93', 'Wednesday', '09:00:00', '85:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '93', 'Thursday', '08:00:00', '09:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '93', 'Friday', '08:00:00', '09:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '93', 'Saturday', '08:00:00', '09:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '98', 'Sunday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '98', 'Monday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '98', 'Tuesday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '98', 'Wednesday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '98', 'Thursday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '98', 'Friday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '98', 'Saturday', '08:00:00', '11:00:00');


INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '105', 'Sunday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '105', 'Monday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '105', 'Tuesday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '105', 'Wednesday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '105', 'Thursday', '08:00:00', '112:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '105', 'Friday', '08:00:00', '112:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '105', 'Saturday', '08:00:00', '112:00:00');


INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '109', 'Sunday', '09:00:00', '105:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '109', 'Monday', '09:00:00', '105:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '109', 'Tuesday', '09:00:00', '105:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '109', 'Wednesday', '09:00:00', '105:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '109', 'Thursday', '08:00:00', '09:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '109', 'Friday', '08:00:00', '09:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '109', 'Saturday', '08:00:00', '09:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '112', 'Sunday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '112', 'Monday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '112', 'Tuesday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '112', 'Wednesday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '112', 'Thursday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '112', 'Friday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '112', 'Saturday', '08:00:00', '11:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '123', 'Sunday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '123', 'Monday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '123', 'Tuesday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '123', 'Wednesday', '05:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '123', 'Thursday', '08:00:00', '130:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '123', 'Friday', '08:00:00', '130:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '123', 'Saturday', '08:00:00', '130:00:00');


INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '126', 'Sunday', '09:00:00', '123:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '126', 'Monday', '09:00:00', '123:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '126', 'Tuesday', '09:00:00', '123:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '126', 'Wednesday', '09:00:00', '123:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '126', 'Thursday', '08:00:00', '09:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '126', 'Friday', '08:00:00', '09:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '126', 'Saturday', '08:00:00', '09:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '130', 'Sunday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '130', 'Monday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '130', 'Tuesday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '130', 'Wednesday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '130', 'Thursday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '130', 'Friday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '130', 'Saturday', '08:00:00', '11:00:00');

/*mayantha*/
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','1','10000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','1','20000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','1','30000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','2','40000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','2','50000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','2','60000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','3','70000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','3','80000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','3','90000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','4','10000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','4','25000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','4','34000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','5','45000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','5','55000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','5','65000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','6','25000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','6','35000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','6','45000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','7','65000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','7','79000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','7','90000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','8','60000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','8','70000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','8','95000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','9','63000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','9','78000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','9','91000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','10','40000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','10','50000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','10','60000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','11','20000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','11','30000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','11','45000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','12','30000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','12','50000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','12','60000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','13','15000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','13','20000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','13','25000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','14','60000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','14','70000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','14','95000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','15','40000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','15','50000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','15','65000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','16','160000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','16','170000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','16','195000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','17','50000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','17','70000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','17','80000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','18','160000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','18','170000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','18','18000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','19','40000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','19','50000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','19','60000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','20','120000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','20','130000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','20','140000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','21','60000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','21','70000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','21','80000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','22','60000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','22','70000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','22','95000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','23','20000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','23','30000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','23','45000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','24','50000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','24','60000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','24','80000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','25','10000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','25','15000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','25','25000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','26','60000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','26','70000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','26','90000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','27','30000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','27','40000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','27','50000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','28','70000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','28','75000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','28','85000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','29','65000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','29','77000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','29','85000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('1','30','15000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('2','30','25000');
INSERT INTO `price` (`class_id`, `route_id`, `price`) VALUES ('3','30','35000');



INSERT INTO `seat` (`seat_id`, `craft_id`, `seat_no`, `class_id`) VALUES ('1', '1', '1', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '2', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '3', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '4', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '5', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '6', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '7', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '8', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '9', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '10', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '11', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '12', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '13', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '14', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '15', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '16', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '17', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '18', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '19', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '20', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '21', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '22', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '23', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '24', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '25', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '26', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '27', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '28', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '29', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '30', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '31', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '32', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '33', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '34', '3');

INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '1', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '2', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '3', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '4', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '5', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '6', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '7', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '8', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '9', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '10', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '11', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '12', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '13', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '14', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '15', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '16', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '17', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '18', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '19', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '20', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '21', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '22', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '23', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '24', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '25', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '26', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '27', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '28', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '29', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '30', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '31', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '32', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '33', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '34', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '35', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '36', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '37', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '38', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '39', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '40', '3');

INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '1', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '2', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '3', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '4', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '5', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '6', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '7', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '8', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '9', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '10', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '11', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '12', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '13', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '14', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '15', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '16', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '17', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '18', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '19', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '20', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '21', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '22', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '23', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '24', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '25', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '26', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '27', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '28', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '29', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '30', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '31', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '32', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '33', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '34', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '35', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '36', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '37', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '38', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '39', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('3', '40', '3');

INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '1', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '2', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '3', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '4', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '5', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '6', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '7', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '8', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '9', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '10', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '11', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '12', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '13', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '14', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '15', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '16', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '17', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '18', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '19', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '20', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '21', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '22', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '23', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '24', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '25', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '26', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '27', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '28', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '29', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '30', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '31', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '32', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '33', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '34', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '35', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '36', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '37', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '38', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '39', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('4', '40', '3');

INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '1', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '2', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '3', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '4', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '5', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '6', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '7', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '8', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '9', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '10', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '11', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '12', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '13', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '14', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '15', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '16', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '17', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '18', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '19', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '20', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '21', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '22', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '23', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '24', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '25', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '26', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '27', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '28', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '29', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '30', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '31', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '32', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '33', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '34', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '35', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '36', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '37', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '38', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '39', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('5', '40', '3');

INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '1', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '2', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '3', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '4', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '5', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '6', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '7', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '8', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '9', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '10', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '11', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '12', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '13', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '14', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '15', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '16', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '17', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '18', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '19', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '20', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '21', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '22', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '23', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '24', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '25', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '26', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '27', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '28', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '29', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '30', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '31', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '32', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '33', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '34', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '35', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '36', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '37', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '38', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '39', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('6', '40', '3');

INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '1', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '2', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '3', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '4', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '5', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '6', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '7', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '8', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '9', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '10', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '11', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '12', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '13', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '14', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '15', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '16', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '17', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '18', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '19', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '20', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '21', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '22', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '23', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '24', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '25', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '26', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '27', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '28', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '29', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '30', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '31', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '32', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '33', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '34', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '35', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '36', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '37', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '38', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '39', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('7', '40', '3');

INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '1', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '2', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '3', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '4', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '5', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '6', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '7', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '8', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '9', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '10', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '11', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '12', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '13', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '14', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '15', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '16', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '17', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '18', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '19', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '20', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '21', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '22', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '23', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '24', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '25', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '26', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '27', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '28', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '29', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '30', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '31', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '32', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '33', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '34', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '35', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '36', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '37', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '38', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '39', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('8', '40', '3');




INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('1', '00:13:00', '00:11:00');
INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('2', '00:15:00', '00:00:00');
INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('3', '00:20:00', '00:30:00');
INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('4', '00:00:00', '00:12:00');
INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('5', '00:05:00', '00:00:00');
INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('6', '00:12:00', '00:11:00');
INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('7', '00:14:00', '00:00:00');
INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('8', '00:30:00', '00:30:00');
INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('9', '00:50:00', '00:55:00');
INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('10', '00:25:00', '00:10:00');
INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('11', '00:13:00', '00:11:00');
INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('12', '00:15:00', '00:00:00');
INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('13', '00:20:00', '00:30:00');
INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('14', '00:00:00', '00:12:00');
INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('15', '00:05:00', '00:00:00');
INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('16', '00:12:00', '00:11:00');
INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('17', '00:14:00', '00:00:00');
INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('18', '00:30:00', '00:30:00');
INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('19', '00:50:00', '00:55:00');



INSERT INTO `flight_schedule` (`flight_schedule_id`, `delay_id`, `schedule_id`, `craft_id`, `date`, `route_id`) VALUES ('1', '1', '6', '2', '2018-11-24', '2');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`, `route_id`) VALUES ( '2', '5', '4', '2018-11-23', '2');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`, `route_id`) VALUES ( '3', '15', '3', '2018-11-24', '11');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`, `route_id`) VALUES ( '4', '13', '2', '2018-11-25', '9');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`, `route_id`) VALUES ( '5', '1', '1', '2018-11-26', '1');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`, `route_id`) VALUES ( '6', '3', '1', '2018-11-24', '2');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`, `route_id`) VALUES ( '7', '4', '2', '2018-11-24', '2');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`, `route_id`) VALUES ( NULL, '14', '3', '2018-11-29', '10');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`,`route_id`, `date`, `craft_id` ) VALUES ( NULL, '10', '1', '2018-11-29', '8');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`,`route_id`, `date`, `craft_id` ) VALUES ( NULL,  '8', '1', '2018-11-29', '3');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`,`route_id`, `date`, `craft_id` ) VALUES ( NULL, '4', '2', '2018-11-29', '4');

INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '9', '1', '2018-11-30', '5');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '6', '2', '2018-11-30', '1');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '21', '4', '2018-11-30', '2');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '28', '5', '2018-11-30', '3');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '15', '3', '2018-12-01', '5');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '22', '4', '2018-12-01', '6');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '29', '5', '2018-12-01', '7');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '37', '7', '2018-12-01', '8');

INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '1', '2', '2018-12-02', '1');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '13', '3', '2018-12-02', '2');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '16', '4', '2018-12-02', '3');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '71', '17', '2018-12-02', '4');

INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '2', '2', '2018-12-03', '5');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '11', '3', '2018-12-03', '6');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '17', '4', '2018-12-03', '7');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '24', '5', '2018-12-03', '8');

INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '3', '2', '2018-12-04', '5');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '7', '1', '2018-12-04', '6');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '12', '3', '2018-12-04', '1');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '18', '4', '2018-12-04', '8');

INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '4', '2', '2018-12-05', '5');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '8', '1', '2018-12-05', '6');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '10', '1', '2018-12-05', '3');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '19', '4', '2018-12-05', '4');

INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '5', '2', '2018-12-06', '5');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '14', '3', '2018-12-06', '1');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '20', '4', '2018-12-06', '2');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '27', '5', '2018-12-06', '8');

INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '6', '2', '2018-12-07', '6');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '9', '1', '2018-12-07', '4');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '21', '4', '2018-12-07', '7');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `route_id`, `date`, `craft_id`) VALUES ( NULL, '28', '5', '2018-12-07', '8');



INSERT INTO `booking` (`booking_id`, `user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ('1', '1', '1', '11', '2018-11-22', '20000');
INSERT INTO `booking` (`booking_id`, `user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ('2', '1', '1', '13', '2018-11-22', '22000');
INSERT INTO `booking` (`booking_id`, `user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ('3', '1', '1', '15', '2018-11-22', '19000');
INSERT INTO `booking` (`booking_id`, `user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ('4', '1', '1', '16', '2018-11-22', '13000');
INSERT INTO `booking` (`booking_id`, `user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ('5', '1', '1', '17', '2018-11-22', '20000');
INSERT INTO `booking` (`booking_id`, `user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ('6', '1', '2', '1', '2018-11-22', '20000');



INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '1', '2', '2', '2018-11-23', '20000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '1', '2', '3', '2018-11-23', '20000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '1', '2', '4', '2018-11-23', '20000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '1', '2', '5', '2018-11-23', '20000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '1', '2', '6', '2018-11-23', '20000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '4', '2', '7', '2018-11-23', '20000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '4', '2', '8', '2018-11-23', '20000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '4', '2', '9', '2018-11-23', '20000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '4', '2', '10', '2018-11-23', '20000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '2', '11', '2018-11-23', '20000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '2', '12', '2018-11-23', '20000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '2', '13', '2018-11-23', '20000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '2', '14', '2018-11-23', '20000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '2', '15', '2018-11-23', '15000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '2', '16', '2018-11-23', '15000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '2', '17', '2018-11-23', '15000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '2', '18', '2018-11-23', '15000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '3', '2', '19', '2018-11-23', '15000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '3', '2', '20', '2018-11-23', '15000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '3', '2', '21', '2018-11-23', '15000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '3', '2', '22', '2018-11-23', '15000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '2', '2', '23', '2018-11-23', '15000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '2', '2', '24', '2018-11-23', '15000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '5', '2', '25', '2018-11-23', '15000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '5', '2', '26', '2018-11-23', '15000');


INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '4', '3', '3', '2018-11-24', '50000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '4', '3', '4', '2018-11-24', '50000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '4', '3', '5', '2018-11-24', '50000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '4', '3', '6', '2018-11-24', '50000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '3', '7', '2018-11-24', '50000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '3', '8', '2018-11-24', '50000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '3', '9', '2018-11-24', '50000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '3', '10', '2018-11-24', '50000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '3', '3', '11', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '3', '3', '12', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '3', '3', '13', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '3', '3', '14', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '3', '15', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '3', '16', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '3', '17', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '3', '18', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '5', '3', '19', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '5', '3', '20', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '5', '3', '21', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '5', '3', '22', '2018-11-24', '45000');

INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '4', '6', '4', '2018-11-24', '50000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '4', '6', '5', '2018-11-24', '50000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '4', '6', '6', '2018-11-24', '50000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '6', '7', '2018-11-24', '50000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '6', '8', '2018-11-24', '50000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '6', '9', '2018-11-24', '50000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '6', '10', '2018-11-24', '50000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '3', '6', '11', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '3', '6', '12', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '3', '6', '13', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '3', '6', '14', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '6', '15', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '6', '16', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '6', '17', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '6', '18', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '5', '6', '19', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '5', '6', '20', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '5', '6', '21', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '5', '6', '22', '2018-11-24', '45000');

INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '4', '7', '4', '2018-11-24', '50000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '4', '7', '5', '2018-11-24', '50000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '4', '7', '6', '2018-11-24', '50000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '7', '7', '2018-11-24', '50000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '7', '8', '2018-11-24', '50000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '7', '9', '2018-11-24', '50000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '7', '10', '2018-11-24', '50000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '3', '7', '11', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '3', '7', '12', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '3', '7', '13', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '3', '7', '14', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '7', '15', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '7', '16', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '7', '17', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '7', '18', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '5', '7', '19', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '5', '7', '20', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '5', '7', '21', '2018-11-24', '45000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '5', '7', '22', '2018-11-24', '45000');


INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '4', '4', '4', '2018-11-25', '35000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '4', '4', '5', '2018-11-25', '35000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '4', '4', '6', '2018-11-25', '35000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '4', '7', '2018-11-25', '35000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '4', '8', '2018-11-25', '35000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '4', '9', '2018-11-25', '35000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '4', '10', '2018-11-25', '35000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '3', '4', '11', '2018-11-25', '30000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '3', '4', '12', '2018-11-25', '30000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '3', '4', '13', '2018-11-25', '30000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '3', '4', '14', '2018-11-25', '30000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '4', '15', '2018-11-25', '30000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '4', '16', '2018-11-25', '30000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '4', '17', '2018-11-25', '30000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '4', '18', '2018-11-25', '30000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '5', '4', '19', '2018-11-25', '30000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '5', '4', '20', '2018-11-25', '30000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '5', '4', '21', '2018-11-25', '30000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '5', '4', '22', '2018-11-25', '30000');

INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '4', '5', '4', '2018-11-26', '43000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '4', '5', '5', '2018-11-26', '43000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '5', '6', '2018-11-26', '43000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '5', '7', '2018-11-26', '43000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '5', '8', '2018-11-26', '43000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '5', '9', '2018-11-26', '43000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '5', '10', '2018-11-26', '43000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '3', '5', '11', '2018-11-26', '37000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '3', '5', '12', '2018-11-26', '37000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '2', '5', '13', '2018-11-26', '37000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '2', '5', '14', '2018-11-26', '37000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '5', '15', '2018-11-26', '37000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '5', '16', '2018-11-26', '37000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '5', '17', '2018-11-26', '37000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '7', '5', '18', '2018-11-26', '37000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '5', '5', '19', '2018-11-26', '37000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '5', '5', '20', '2018-11-26', '37000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '5', '5', '21', '2018-11-26', '37000');
INSERT INTO `booking` (`user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ( '5', '5', '22', '2018-11-26', '37000');







