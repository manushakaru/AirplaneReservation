DELIMITER $$


CREATE PROCEDURE `check_aircraftt`(IN craft_type varchar(40) )
 BEGIN
 	if (LENGTH(craft_type )>40) THEN
			SIGNAL SQLSTATE VALUE '45010'
			SET MESSAGE_TEXT = "craft type is not valid";
			
	end if;
END$$

DELIMITER ;

DELIMITER $$
CREATE TRIGGER `check_aircraft_update`
  BEFORE UPDATE
  ON `aircraft`
  FOR EACH ROW
  BEGIN
    CALL check_aircraftt(new.craft_type);
  END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER `check_aircraft_insert`
  BEFORE INSERT
  ON `aircraft`
  FOR EACH ROW
  BEGIN
    CALL check_aircraftt(new.craft_type);
  END$$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE `check_admin`(IN first_name varchar(250), IN last_name VARCHAR(250), IN email VARCHAR(250), IN password varchar(255) )
  BEGIN
    IF email NOT LIKE "%_@%_.__%" THEN
    	SIGNAL SQLSTATE VALUE '45006'
        SET MESSAGE_TEXT = "Email is not valid";
    END IF;
    if (LENGTH(first_name )<3) THEN
    	SIGNAL SQLSTATE VALUE '45007'
        SET MESSAGE_TEXT = "first name is not valid";
    END IF;
    if (LENGTH(last_name )<3) THEN
    	SIGNAL SQLSTATE VALUE '45008'
        SET MESSAGE_TEXT = "last name is not valid";
    END IF;
    if (LENGTH(password )<7) THEN
    	SIGNAL SQLSTATE VALUE '45009'
        SET MESSAGE_TEXT = "Password is not valid";
	END IF;
    if (LENGTH(password )>255) THEN
    	SIGNAL SQLSTATE VALUE '45009'
        SET MESSAGE_TEXT = "Password is not valid";
    END IF;
  END$$

DELIMITER ;

DELIMITER $$
CREATE TRIGGER `check_admin_update`
  BEFORE UPDATE
  ON `admins`
  FOR EACH ROW
  BEGIN
    DECLARE new_hash VARCHAR(255);
    CALL check_admin(new.first_name,new.last_name,new.email,new.password);
    SET new_hash = sha1(new.password);  
	  SET NEW.password = new_hash;
  END$$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER `check_admin_insert`
  BEFORE insert
  ON `admins`
  FOR EACH ROW
  BEGIN
    DECLARE new_hash VARCHAR(255);
    CALL check_admin(new.first_name,new.last_name,new.email,new.password);
    SET new_hash = sha1(new.password);  
	  SET NEW.password = new_hash;
  END$$
DELIMITER ;



DELIMITER $$


CREATE PROCEDURE `check_airport`(IN airport_name varchar(40) )
 BEGIN
 	if (LENGTH(airport_name )>100) THEN
			SIGNAL SQLSTATE VALUE '45010'
			SET MESSAGE_TEXT = "airport name is not valid";
			
	end if;
END$$

DELIMITER ;

DELIMITER $$
CREATE TRIGGER `AIRPORT_updates`
  BEFORE UPDATE
  ON `airport`
  FOR EACH ROW
  BEGIN
    CALL check_airport(new.airport_name);
  END$$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER `AIRPORT_insert`
  BEFORE INSERT
  ON `airport`
  FOR EACH ROW
  BEGIN

    CALL check_airport(new.airport_name);

  END$$
DELIMITER ;




DELIMITER //
CREATE TRIGGER `booking_validation` BEFORE INSERT ON `booking`FOR EACH ROW
begin
	if (NEW.price > 1000000) THEN
		SIGNAL SQLSTATE VALUE '45021'
		SET MESSAGE_TEXT = "price is not valid";

	elseif (new.price not like '%.__') THEN
		SIGNAL SQLSTATE VALUE '45021'
		SET MESSAGE_TEXT = "price is not valid";
	end if;


end//
DELIMITER ;



DELIMITER $$
CREATE PROCEDURE `chech_class`(IN class varchar(20))
BEGIN
	if (LENGTH(class )>20) THEN
			SIGNAL SQLSTATE VALUE '45010'
			SET MESSAGE_TEXT = "class is not valid";
     end if;
END$$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER `update_class`
	BEFORE UPDATE
    ON `class`
    FOR EACH ROW
    BEGIN
     CALL chech_class(NEW.class);
    END$$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER `insert_class`
	BEFORE INSERT
    ON `class`
    FOR EACH ROW
    BEGIN
     CALL chech_class(NEW.class);
    END$$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE `check_customer`(IN first_name varchar(250), IN last_name VARCHAR(250), IN email VARCHAR(250), IN password varchar(255),IN birthday date,IN mobile_no int )
  BEGIN

    IF email NOT LIKE "%_@%_.__%" THEN
    	SIGNAL SQLSTATE VALUE '45006'
        SET MESSAGE_TEXT = "Email is not valid";
    END IF;
    if (LENGTH(first_name )<3) THEN
    	SIGNAL SQLSTATE VALUE '45007'
        SET MESSAGE_TEXT = "first name is not valid";
    END IF;
    if (LENGTH(last_name )<3) THEN
    	SIGNAL SQLSTATE VALUE '45008'
        SET MESSAGE_TEXT = "last name is not valid";
        
    END IF;
    if (LENGTH(password )<7) THEN
    	SIGNAL SQLSTATE VALUE '45009'
        SET MESSAGE_TEXT = "Password is not valid";

	END IF;
    
    if (LENGTH(password )>255) THEN
    	SIGNAL SQLSTATE VALUE '45009'
        SET MESSAGE_TEXT = "Password is not valid";
       
    END IF;
    
    if DATEDIFF(birthday, CURDATE())>0 THEN
			SIGNAL SQLSTATE VALUE '45001'
			SET MESSAGE_TEXT = "birthdate is not valid";
     
    END IF;
    
    if not mobile_no not like '^[0-9]{10}$' then
			SIGNAL SQLSTATE VALUE '45005'
			SET MESSAGE_TEXT = "mobile no is not valid";
     END IF;
  
  END$$

DELIMITER ;




DELIMITER $$
CREATE TRIGGER `check_cus_insert`
  BEFORE insert
  ON `customer`
  FOR EACH ROW
  BEGIN

    DECLARE new_hash VARCHAR(255);

    CALL check_customer(new.first_name,new.last_name,new.email,new.password,new.birthday,new.mobile_no);

    SET new_hash = sha1(new.password); 
	  SET NEW.password = new_hash;
  END$$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER `check_cus_update`
  BEFORE UPDATE
  ON `customer`
  FOR EACH ROW
  BEGIN

    DECLARE new_hash VARCHAR(255);

    CALL check_customer(new.first_name,new.last_name,new.email,new.password,new.birthday,new.mobile_no);

    SET new_hash = sha1(new.password); 
	  SET NEW.password = new_hash;
  END$$
DELIMITER ;


DELIMITER //
CREATE TRIGGER `cus_state_validation` BEFORE INSERT ON `customer_state`FOR EACH ROW
begin
	if (NEW.discount > 100) THEN
		SIGNAL SQLSTATE VALUE '45021'
		SET MESSAGE_TEXT = "discount is not valid";

	elseif (new.bookings_needed >100) THEN
		SIGNAL SQLSTATE VALUE '45021'
		SET MESSAGE_TEXT = "booking_needed is not valid";
	end if;
end//
DELIMITER ;




DELIMITER //
CREATE TRIGGER `flight_schedule_validation` BEFORE INSERT ON `flight_schedule`FOR EACH ROW
begin
	if DATEDIFF(new.date, CURDATE())<0
	 THEN SIGNAL SQLSTATE VALUE '45016' SET MESSAGE_TEXT = "day is not valid";
	 
	end if;
end//
DELIMITER ;


DELIMITER //
CREATE TRIGGER `flight_schedule_validation_UPDATE` BEFORE UPDATE ON `flight_schedule`FOR EACH ROW
begin
	if DATEDIFF(new.date, CURDATE())<0
	 THEN SIGNAL SQLSTATE VALUE '45016' SET MESSAGE_TEXT = "day is not valid";
	 
	end if;
end//
DELIMITER ;






DELIMITER //
CREATE TRIGGER `location_validation` BEFORE INSERT ON `location`FOR EACH ROW
begin
	if new.location NOT RLIKE '^[a-z]'THEN
			SIGNAL SQLSTATE VALUE '45017'
			SET MESSAGE_TEXT = "location is not valid";
	elseif new.location NOT RLIKE '^[A-Z]'THEN
			SIGNAL SQLSTATE VALUE '45018'
			SET MESSAGE_TEXT = "location is not valid";
	end if;
end//
DELIMITER ;






DELIMITER //
CREATE TRIGGER `seat_validation` BEFORE INSERT ON `seat`FOR EACH ROW
begin
	IF (NEW.seat_no > 100) THEN
			SIGNAL SQLSTATE VALUE '45020'
			SET MESSAGE_TEXT = "seat  no is not valid";
		   
	 end if;
end//
DELIMITER ;


DELIMITER //
CREATE TRIGGER `seat_validation_UPDATE` BEFORE update ON `seat`FOR EACH ROW
begin
	IF (NEW.seat_no > 100) THEN
			SIGNAL SQLSTATE VALUE '45020'
			SET MESSAGE_TEXT = "seat no is not valid";
		   
	 end if;
end//
DELIMITER ;