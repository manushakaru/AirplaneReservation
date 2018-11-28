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