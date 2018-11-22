use airplane;

INSERT INTO `admins` (`admin_id`, `first_name`, `last_name`, `email`, `password`) VALUES ('1', 'dilan', 'sachintha', 'dilan@gmail.com', '123456');
INSERT INTO `admins` (`admin_id`, `first_name`, `last_name`, `email`, `password`) VALUES ('2', 'manusha', 'karunathilaka', 'manusha@gmail.com', '123456');

INSERT INTO `customer_state` (`customer_state`, `discount`, `bookings_needed`) VALUES ('Frequent', '5000.00', '5');
INSERT INTO `customer_state` (`customer_state`, `discount`, `bookings_needed`) VALUES ('Gold', '10000.00', '10');
INSERT INTO `customer_state` (`customer_state`, `discount`, `bookings_needed`) VALUES ('Guest', '0.00', '0');

INSERT INTO `customer` (`user_id`, `first_name`,`last_name`, `email`, `password`, `age`, `customer_type`, `mobile_no`) VALUES ('1', 'Damitha','chathuranga', 'test@123.com', '123456', '22', 'Gold', '0711234567');
INSERT INTO `customer` (`user_id`, `first_name`, `last_name`, `email`, `password`, `age`, `customer_type`, `mobile_no`) VALUES ('2', 'dilan', 'sachintha', 'dilan@123.com', '123456', '22', 'Frequent', '0711256567');
INSERT INTO `customer` (`user_id`, `first_name`, `last_name`, `email`, `password`, `age`, `customer_type`, `mobile_no`) VALUES ('3', 'erandana', 'kumara', 'erandana@123.com', '123456', '21', 'Frequent', '0751234567');
INSERT INTO `customer` (`user_id`, `first_name`, `last_name`, `email`, `password`, `age`, `customer_type`, `mobile_no`) VALUES ('4', 'dasun', 'madushan', 'dasun@123.com', '123456', '21', 'Gold', '0771234567');
INSERT INTO `customer` (`user_id`, `first_name`, `last_name`, `email`, `password`, `age`, `customer_type`, `mobile_no`) VALUES ('5', 'sanka', 'dineth', 'sanka@123.com', '123456', '21', 'Frequent', '0771034567');
INSERT INTO `customer` (`user_id`, `first_name`, `last_name`, `email`, `password`, `age`, `customer_type`, `mobile_no`) VALUES ('6', 'irosh', 'mayantha', 'irosh@123.com', '123456', '18', 'Guest', '0751231167');
INSERT INTO `customer` (`user_id`, `first_name`, `last_name`, `email`, `password`, `age`, `customer_type`, `mobile_no`) VALUES ('7', 'kasun', 'heshan', 'kasun@123.com', '123456', '19', 'Guest', '0751255167');

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


INSERT INTO `location` (`location_id`, `location`, `locateTo`) VALUES ('6', 'Ratmalana', '1');

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
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('5', '2', '1');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('6', '2', '3');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('7', '2', '4');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('8', '2', '5');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('9', '3', '1');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('10', '3', '2');
INSERT INTO `route` (`route_id`, `origin`, `destination`) VALUES ('11', '3', '4');
/*
INSERT INTO `flight` (`flight_id`, `route_id`) VALUES ('1', '1');
INSERT INTO `flight` (`route_id`) VALUES ('2');
INSERT INTO `flight` (`route_id`) VALUES ('3');
INSERT INTO `flight` (`route_id`) VALUES ('4');
INSERT INTO `flight` (`route_id`) VALUES ('5');
INSERT INTO `flight` (`route_id`) VALUES ('6');
INSERT INTO `flight` (`route_id`) VALUES ('7');
INSERT INTO `flight` (`route_id`) VALUES ('8');
INSERT INTO `flight` (`route_id`) VALUES ('9');
INSERT INTO `flight` (`route_id`) VALUES ('10');
INSERT INTO `flight` (`route_id`) VALUES ('11');*/

INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('1', '1', 'Monday', '07:00:00', '10:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('2', '2', 'Monday', '08:00:00', '12:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('3', '2', 'Tuesday', '05:00:00', '12:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('4', '2', 'Wednesday', '08:00:00', '12:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('5', '2', 'Friday', '08:00:00', '11:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('6', '2', 'Thursday', '08:00:00', '12:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('7', '3', 'Tuesday', '08:00:00', '10:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('8', '4', 'Wednesday', '07:00:00', '12:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('9', '5', 'Friday', '01:00:00', '22:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('10', '6', 'Wednesday', '08:00:00', '14:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('11', '7', 'Monday', '08:00:00', '16:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('12', '8', 'Tuesday', '10:00:00', '12:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('13', '9', 'Sunday', '16:00:00', '18:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('14', '10', 'Thursday', '22:00:00', '00:00:00');
INSERT INTO `predefined_schedule` (`schedule_id`, `route_id`, `day`, `arrival_time`, `departure_time`) VALUES ('15', '11', 'Saturday', '08:00:00', '15:00:00');


INSERT INTO `class` (`route_id`, `price`, `class`) VALUES ('1', '20000', 'Economy');
INSERT INTO `class` (`route_id`, `price`, `class`) VALUES ('1', '30000', 'Buisness');
INSERT INTO `class` (`route_id`, `price`, `class`) VALUES ('1', '40000', 'Platinum');
INSERT INTO `class` (`route_id`, `price`, `class`) VALUES ('2', '50000', 'Economy');
INSERT INTO `class` (`route_id`, `price`, `class`) VALUES ('2', '65000', 'Buisness');
INSERT INTO `class` (`route_id`, `price`, `class`) VALUES ('2', '78000', 'Platinum');
INSERT INTO `class` (`route_id`, `price`, `class`) VALUES ('4', '10000', 'Economy');
INSERT INTO `class` (`route_id`, `price`, `class`) VALUES ('4', '20000', 'Buisness');
INSERT INTO `class` (`route_id`, `price`, `class`) VALUES ('4', '25000', 'Platinum');
INSERT INTO `class` (`route_id`, `price`, `class`) VALUES ('5', '70000', 'Economy');

INSERT INTO `seat` (`seat_id`, `craft_id`, `seat_no`) VALUES ('1', '1', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`) VALUES ('1', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`) VALUES ('1', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`) VALUES ('1', '4');
INSERT INTO `seat` (`craft_id`, `seat_no`) VALUES ('1', '5');
INSERT INTO `seat` (`craft_id`, `seat_no`) VALUES ('1', '6');
INSERT INTO `seat` (`craft_id`, `seat_no`) VALUES ('1', '7');
INSERT INTO `seat` (`craft_id`, `seat_no`) VALUES ('1', '8');
INSERT INTO `seat` (`craft_id`, `seat_no`) VALUES ('1', '9');
INSERT INTO `seat` (`craft_id`, `seat_no`) VALUES ('1', '10');
INSERT INTO `seat` (`craft_id`, `seat_no`) VALUES ('2', '1');
INSERT INTO `seat` (`craft_id`, `seat_no`) VALUES ('2', '2');
INSERT INTO `seat` (`craft_id`, `seat_no`) VALUES ('2', '3');
INSERT INTO `seat` (`craft_id`, `seat_no`) VALUES ('2', '4');
INSERT INTO `seat` (`craft_id`, `seat_no`) VALUES ('2', '5');
INSERT INTO `seat` (`craft_id`, `seat_no`) VALUES ('2', '6');
INSERT INTO `seat` (`craft_id`, `seat_no`) VALUES ('2', '7');
INSERT INTO `seat` (`craft_id`, `seat_no`) VALUES ('2', '8');
INSERT INTO `seat` (`craft_id`, `seat_no`) VALUES ('2', '9');
INSERT INTO `seat` (`craft_id`, `seat_no`) VALUES ('2', '10');

INSERT INTO `delay` (`delay_id`, `departure_delay`, `arrival_delay`) VALUES ('1', '10:13:00', '07:11:00');
INSERT INTO `delay` (`delay_id`, `departure_delay`, `arrival_delay`) VALUES ('2', '08:15:00', NULL);
INSERT INTO `delay` (`delay_id`, `departure_delay`, `arrival_delay`) VALUES ('3', '08:20:00', '11:30:00');
INSERT INTO `delay` (`delay_id`, `departure_delay`, `arrival_delay`) VALUES ('4', NULL, '12:12:00');
INSERT INTO `delay` (`delay_id`, `departure_delay`, `arrival_delay`) VALUES ('5', '01:05:00', NULL);

INSERT INTO `flight_schedule` (`flight_schedule_id`, `delay_id`, `schedule_id`, `craft_id`, `date`) VALUES ('1', NULL, '6', '2', '2018-11-22');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`) VALUES ( '3', '5', '4', '2018-11-23');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`) VALUES ( '2', '15', '3', '2018-11-24');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`) VALUES ( NULL, '13', '2', '2018-11-25');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`) VALUES ( '1', '1', '1', '2018-11-26');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`) VALUES ( NULL, '3', '1', '2018-11-27');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`) VALUES ( '4', '4', '2', '2018-11-28');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`) VALUES ( NULL, '14', '3', '2018-11-29');
INSERT INTO `flight_schedule` ( `delay_id`, `schedule_id`, `craft_id`, `date`) VALUES ( '5', '9', '4', '2018-11-30');


INSERT INTO `booking` (`booking_id`, `user_id`, `schedule_id`, `class_id`, `seat_id`, `booked_date`, `price`) VALUES ('1', '1', '1', '1', '1', '2018-11-22', '20000');
INSERT INTO `booking` ( `user_id`, `schedule_id`, `class_id`, `seat_id`,  `booked_date`, `price`) VALUES ( '2', '1', '1', '2', '2018-11-22',"19500");
INSERT INTO `booking` ( `user_id`, `schedule_id`, `class_id`, `seat_id`,  `booked_date`, `price`) VALUES ( '3', '3', '3', '3',  '2018-11-23',"40000");
INSERT INTO `booking` ( `user_id`, `schedule_id`, `class_id`, `seat_id`,  `booked_date`, `price`) VALUES ( '4', '4', '4', '4', '2018-11-24',"50000");
INSERT INTO `booking` ( `user_id`, `schedule_id`, `class_id`, `seat_id`,  `booked_date`, `price`) VALUES ( '5', '5', '5', '5',  '2018-11-25',"65000");
INSERT INTO `booking` ( `user_id`, `schedule_id`, `class_id`, `seat_id`, `booked_date`, `price`) VALUES ( '6', '14', '7', '6',  '2018-11-26',"10000");



