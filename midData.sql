use airplane;

INSERT INTO `admins` (`admin_id`, `first_name`, `last_name`, `email`, `password`) VALUES ('1', 'dilan', 'sachintha', 'dilan@gmail.com', '123456');
INSERT INTO `admins` (`admin_id`, `first_name`, `last_name`, `email`, `password`) VALUES ('2', 'manusha', 'karunathilaka', 'manusha@gmail.com', '123456');

INSERT INTO `customer_state` (`customer_state`, `discount`, `bookings_needed`) VALUES ('Frequent', '5', '5');
INSERT INTO `customer_state` (`customer_state`, `discount`, `bookings_needed`) VALUES ('Beginner', '0', '0');
INSERT INTO `customer_state` (`customer_state`, `discount`, `bookings_needed`) VALUES ('Gold', '10', '10');
INSERT INTO `customer_state` (`customer_state`, `discount`, `bookings_needed`) VALUES ('Guest', '0', '0');

INSERT INTO `customer` (`user_id`, `first_name`,`last_name`, `email`, `password`, `birthday`, `customer_type`, `mobile_no`) VALUES ('1', 'Damitha','chathuranga', 'test@123.com', '123456', '1996-8-15', 'Gold', '0711234567');
INSERT INTO `customer` (`user_id`, `first_name`, `last_name`, `email`, `password`, `birthday`, `mobile_no`) VALUES ('2', 'dilan', 'sachintha', 'dilan@123.com', '123456', '1996-10-25', '0711256567');
INSERT INTO `customer` (`user_id`, `first_name`, `last_name`, `email`, `password`, `birthday`, `customer_type`, `mobile_no`) VALUES ('3', 'erandana', 'kumara', 'erandana@123.com', '123456', '1998-5-9', 'Frequent', '0751234567');


INSERT INTO `aircraft` (`craft_id`, `craft_type`) VALUES ('1', 'Boeing 737');
INSERT INTO `aircraft` (`craft_id`, `craft_type`) VALUES ('2', 'Boeing 4');
INSERT INTO `aircraft` (`craft_id`, `craft_type`) VALUES ('3', 'Boeing 757');
INSERT INTO `aircraft` (`craft_id`, `craft_type`) VALUES ('4', 'Airbus A380');

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

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '12', 'Sunday', '09:00:00', '10:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '12', 'Monday', '09:00:00', '10:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '12', 'Tuesday', '09:00:00', '10:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '12', 'Wednesday', '09:00:00', '10:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '12', 'Thursday', '08:00:00', '09:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '12', 'Friday', '08:00:00', '09:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '12', 'Saturday', '08:00:00', '09:00:00');

INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '16', 'Sunday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '16', 'Monday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '16', 'Tuesday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '16', 'Wednesday', '11:00:00', '13:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '16', 'Thursday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '16', 'Friday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` ( `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ( '16', 'Saturday', '08:00:00', '11:00:00');


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

INSERT INTO `seat` (`seat_id`, `craft_id`, `seat_no`, `class_id`) VALUES ('1', '1', '1', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '2', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '3', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '4', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '5', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '6', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '7', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '8', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '9', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('1', '10', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '1', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '2', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '3', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '4', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '5', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '6', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '7', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '8', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '9', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`, `class_id`) VALUES ('2', '10', '1');

INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('1', '10:13:00', '07:11:00');
INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('2', '08:15:00', NULL);
INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('3', '08:20:00', '11:30:00');
INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('4', NULL, '12:12:00');
INSERT INTO `delay` (`delay_id`, `arrival_delay`, `departure_delay`) VALUES ('5', '01:05:00', NULL);

INSERT INTO `flight_schedule` (`flight_schedule_id`, `delay_id`, `schedule_id`, `craft_id`, `date`, `route_id`) VALUES ('1', NULL, '6', '2', '2018-11-24', '2');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`, `route_id`) VALUES ( '3', '5', '4', '2018-11-23', '2');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`, `route_id`) VALUES ( '2', '15', '3', '2018-11-24', '11');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`, `route_id`) VALUES ( NULL, '13', '2', '2018-11-25', '9');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`, `route_id`) VALUES ( '1', '1', '1', '2018-11-26', '1');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`, `route_id`) VALUES ( NULL, '3', '1', '2018-11-24', '2');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`, `route_id`) VALUES ( '4', '4', '2', '2018-11-24', '2');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`, `route_id`) VALUES ( NULL, '14', '3', '2018-11-29', '10');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`, `route_id`) VALUES ( '5', '9', '4', '2018-11-30', '5');


INSERT INTO `booking` (`booking_id`, `user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ('1', '1', '1', '11', '2018-11-22', '20000');
INSERT INTO `booking` (`booking_id`, `user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ('2', '1', '1', '13', '2018-11-22', '22000');
INSERT INTO `booking` (`booking_id`, `user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ('3', '1', '1', '15', '2018-11-22', '19000');
INSERT INTO `booking` (`booking_id`, `user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ('4', '1', '1', '16', '2018-11-22', '13000');
INSERT INTO `booking` (`booking_id`, `user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ('5', '1', '1', '17', '2018-11-22', '20000');
INSERT INTO `booking` (`booking_id`, `user_id`, `flight_schedule_id`, `seat_id`, `booked_date`, `price`) VALUES ('6', '1', '2', '1', '2018-11-22', '20000');


