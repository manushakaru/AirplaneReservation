CREATE FUNCTION hash_pass (password VARCHAR(20))
RETURNS VARCHAR(50) DETERMINISTIC
RETURN sha1(password);

grant execute on function hash_pass to 'customer'@'localhost';
grant execute on function hash_pass to 'admin'@'localhost';

delimiter //
CREATE PROCEDURE `login`(IN email varchar(250), IN password varchar(255))
  BEGIN  
    SELECT user_id FROM customer where customer.email=email and customer.password = password;
  END //
delimiter ;

grant execute on procedure login to 'customer'@'localhost';

delimiter //
CREATE PROCEDURE `get_airport`()
  BEGIN  
    Select airport_name from airport;
  END //
delimiter ;

grant execute on procedure get_airport to 'customer'@'localhost';

delimiter //
CREATE PROCEDURE `get_flights`(IN airport_from varchar(100), IN airport_to varchar(100), IN day date)
  BEGIN  
    select * from (select * from flight_schedule where route_id=(select route_id from route where origin=(select airport_code from airport where airport_name=airport_from) and destination=(select airport_code from airport where airport_name=airport_to)) and date= day) as A natural left join delay as B natural left join predefined_schedule;
  END //
delimiter ;

grant execute on procedure get_flights to 'customer'@'localhost';

delimiter //
CREATE PROCEDURE `get_classes`(IN airport_from varchar(100), IN airport_to varchar(100))
  BEGIN  
    select * from (select * from price where route_id=(select route_id from route where origin=(select airport_code from airport where airport_name=airport_from) and destination=(select airport_code from airport where airport_name=airport_to))) as A natural left join class;
  END //
delimiter ;

grant execute on procedure get_classes to 'customer'@'localhost';

delimiter //
CREATE PROCEDURE `get_seats`(IN schedule_id varchar(100))
  BEGIN  
    select seat_no,class,seat_id from (select * from (select * from (select * from flight_schedule where flight_schedule_id=schedule_id) as A natural left join aircraft natural left join seat) as B natural left join class) as D left join booking using(flight_schedule_id,seat_id) where booking_id is null;
  END //
delimiter ;

grant execute on procedure get_seats to 'customer'@'localhost';

delimiter //
CREATE PROCEDURE `get_state`(IN u_id varchar(100))
  BEGIN  
    select * from customer_state where customer_state=(select customer_type from customer where user_id=u_id);
  END //
delimiter ;

grant execute on procedure get_state to 'customer'@'localhost';

delimiter //
CREATE PROCEDURE `get_next_states`(IN u_id varchar(100))
  BEGIN  
    select * from customer_state where bookings_needed>(select count(booking_id) from booking where user_id=u_id);
  END //
delimiter ;

grant execute on procedure get_next_states to 'customer'@'localhost';

delimiter //
CREATE PROCEDURE `get_booking_count`(IN u_id varchar(100))
  BEGIN  
    select count(booking_id) from booking where user_id=u_id;
  END //
delimiter ;

grant execute on procedure get_booking_count to 'customer'@'localhost';

delimiter //
CREATE PROCEDURE `get_user_id`(IN mail varchar(100))
  BEGIN  
    select user_id from guest_customer_view where email=mail;
  END //
delimiter ;

grant execute on procedure get_user_id to 'guest'@'localhost';