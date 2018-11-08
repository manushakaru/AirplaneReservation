CREATE TRIGGER `customer_validation` BEFORE INSERT ON `customer`FOR EACH ROW
BEGIN
	IF NEW.email NOT LIKE "%_@%_.__%" THEN
    	SIGNAL SQLSTATE VALUE '45001'
        SET MESSAGE_TEXT = "Email is not valid";
    END IF;
    IF (NEW.age > 100) THEN
    	SIGNAL SQLSTATE VALUE '45000'
        SET MESSAGE_TEXT = "Age is not valid";
    END IF;
    IF (NEW.name = '') THEN
    	SIGNAL SQLSTATE VALUE '45000'
        SET MESSAGE_TEXT = "Name is not valid";
    END IF;
    IF (NEW.password = '') THEN
    	SIGNAL SQLSTATE VALUE '45000'
        SET MESSAGE_TEXT = "Password is not valid";
    END IF;
    IF (NEW.mobile_no = '') THEN
    	SIGNAL SQLSTATE VALUE '45000'
        SET MESSAGE_TEXT = "Mobile Number is not valid";
    END IF;
END