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