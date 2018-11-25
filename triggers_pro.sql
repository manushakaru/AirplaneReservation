
DELIMITER //
CREATE TRIGGER `customer_validation` BEFORE INSERT ON `customer`FOR EACH ROW
begin
	IF NEW.email NOT LIKE "%_@%_.__%" THEN
			SIGNAL SQLSTATE VALUE '45000'
			SET MESSAGE_TEXT = "Email is not valid";
			
	elseif (NEW.age > 100) THEN
			SIGNAL SQLSTATE VALUE '45001'
			SET MESSAGE_TEXT = "Age is not valid";

	elseif (LENGTH(NEW.first_name )<3) THEN
			SIGNAL SQLSTATE VALUE '45002'
			SET MESSAGE_TEXT = "first name is not valid";
		
	elseif (LENGTH(NEW.last_name )<3) THEN
			SIGNAL SQLSTATE VALUE '45003'
			SET MESSAGE_TEXT = "last name is not valid";

	elseif (LENGTH(NEW.password )<7) THEN
			SIGNAL SQLSTATE VALUE '45004'
			SET MESSAGE_TEXT = "Password is not valid";

	elseif not new.mobile_no not like '^[0-9]{10}$' then
			SIGNAL SQLSTATE VALUE '45005'
			SET MESSAGE_TEXT = "mobile no is not valid";	 
	end if;
end//

delimiter ;

-----------------------------------------------------------
DELIMITER //
CREATE TRIGGER `admin_validation` BEFORE INSERT ON `admins`FOR EACH ROW
begin
IF NEW.email NOT LIKE "%_@%_.__%" THEN
    	SIGNAL SQLSTATE VALUE '45006'
        SET MESSAGE_TEXT = "Email is not valid";
    
        
   elseif (LENGTH(NEW.first_name )<3) THEN
    	SIGNAL SQLSTATE VALUE '45007'
        SET MESSAGE_TEXT = "first name is not valid";
    
    elseif (LENGTH(NEW.last_name )<3) THEN
    	SIGNAL SQLSTATE VALUE '45008'
        SET MESSAGE_TEXT = "last name is not valid";
    
   
    elseif (LENGTH(NEW.password )<7) THEN
    	SIGNAL SQLSTATE VALUE '45009'
        SET MESSAGE_TEXT = "Password is not valid";
        
    END IF;
end//

DELIMITER ;

---------------------------------------------------------------
DELIMITER //
CREATE TRIGGER `aircraft_validation` BEFORE INSERT ON `aircraft`FOR EACH ROW
begin
	if (LENGTH(NEW.craft_type )>40) THEN
			SIGNAL SQLSTATE VALUE '45010'
			SET MESSAGE_TEXT = "craft type is not valid";
			
	end if;
end//
DELIMITER ;
--------------------------------------------------------------
DELIMITER //
CREATE TRIGGER `airport_validation` BEFORE INSERT ON `airport`FOR EACH ROW
begin
	if (LENGTH(NEW.airport_name )>100) THEN
			SIGNAL SQLSTATE VALUE '45011'
			SET MESSAGE_TEXT = "airport name is not valid";
	end if;
end//
DELIMITER ;
------------------------------------------------------------
DELIMITER //
CREATE TRIGGER `booking_validation` BEFORE INSERT ON `booking`FOR EACH ROW
begin
	if DATEDIFF(new.booked_date, CURDATE())<1
		THEN SIGNAL SQLSTATE VALUE '45012' SET MESSAGE_TEXT = "day is not valid";
	 
	elseif (NEW.price > 1000000) THEN
		SIGNAL SQLSTATE VALUE '45021'
		SET MESSAGE_TEXT = "price is not valid";
	end if;
end//
DELIMITER ;
 -------------------------------------------------------------
DELIMITER //
CREATE TRIGGER `class_validation` BEFORE INSERT ON `class`FOR EACH ROW
begin

	IF (NEW.price > 100000) THEN
			SIGNAL SQLSTATE VALUE '45013'
			SET MESSAGE_TEXT = "price is not valid";
			
	elseif (LENGTH(NEW.class )>20) THEN
			SIGNAL SQLSTATE VALUE '45014'
			SET MESSAGE_TEXT = "class is not valid";
			
	end if;
end//
DELIMITER ;
------------------------------------------------------------
DELIMITER //
CREATE TRIGGER `customer_state_validation` BEFORE INSERT ON `customer_state`FOR EACH ROW
begin
	IF (NEW.discount > 100000) THEN
			SIGNAL SQLSTATE VALUE '45015'
			SET MESSAGE_TEXT = "price is not valid";
			
	elseif (new.bookings_needed<2) then SIGNAL SQLSTATE VALUE '45023'
			SET MESSAGE_TEXT = "bookings not enough";
	  
	end if;
end//
DELIMITER ;
--------------------------------------------------------
DELIMITER //
CREATE TRIGGER `flight_schedule_validation` BEFORE INSERT ON `flight_schedule`FOR EACH ROW
begin
	if DATEDIFF(new.date, CURDATE())<0
	 THEN SIGNAL SQLSTATE VALUE '45016' SET MESSAGE_TEXT = "day is not valid";
	 
	end if;
end//
DELIMITER ;
-----------------------------------------------
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
------------------------------------------------
DELIMITER //
CREATE TRIGGER `seat_validation` BEFORE INSERT ON `seat`FOR EACH ROW
begin
	IF not NEW.seat_no  REGEXP '^[0-9]$'
	 THEN
			SIGNAL SQLSTATE VALUE '45019'
			SET MESSAGE_TEXT = "seat number is not valid";
			

	 elseIF (NEW.seat_no > 100) THEN
			SIGNAL SQLSTATE VALUE '45020'
			SET MESSAGE_TEXT = "seat  no is not valid";
		   
	 end if;
end//
DELIMITER ;









