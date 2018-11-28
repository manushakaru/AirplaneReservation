drop user if exists 'customer'@'localhost';
drop user if exists 'admin'@'localhost';
drop user if exists 'guest'@'localhost';

create user 'admin'@'localhost' identified by 'admin123';
create user 'customer'@'localhost' identified by 'customer123';
create user 'guest'@'localhost' identified by 'guest123';

GRANT ALL ON airplane.* TO 'admin'@'localhost';

GRANT SELECT ON mysql.proc TO 'customer'@'localhost'; --to get privilege access to functions
GRANT SELECT ON mysql.proc TO 'admin'@'localhost';

GRANT SELECT ON airplane.aircraft TO 'customer'@'localhost';
GRANT SELECT ON airplane.airport TO 'customer'@'localhost';
GRANT SELECT,INSERT ON airplane.booking TO 'customer'@'localhost';
GRANT SELECT ON airplane.class TO 'customer'@'localhost';
GRANT SELECT,INSERT,UPDATE ON airplane.customer TO 'customer'@'localhost';
GRANT SELECT ON airplane.customer_state TO 'customer'@'localhost';
GRANT SELECT ON airplane.delay TO 'customer'@'localhost';
GRANT SELECT ON airplane.flight_schedule TO 'customer'@'localhost';
GRANT SELECT ON airplane.location TO 'customer'@'localhost';
GRANT SELECT ON airplane.predefined_schedule TO 'customer'@'localhost';
GRANT SELECT ON airplane.price TO 'customer'@'localhost';
GRANT SELECT ON airplane.route TO 'customer'@'localhost';
GRANT SELECT ON airplane.seat TO 'customer'@'localhost';

GRANT SELECT ON airplane.aircraft TO 'guest'@'localhost';
GRANT SELECT ON airplane.airport TO 'guest'@'localhost';
GRANT SELECT,INSERT ON airplane.booking TO 'guest'@'localhost';
GRANT SELECT ON airplane.class TO 'guest'@'localhost';

GRANT SELECT,INSERT ON airplane.guest_customer_view TO 'guest'@'localhost';

GRANT SELECT ON airplane.customer_state TO 'guest'@'localhost';
GRANT SELECT ON airplane.delay TO 'guest'@'localhost';
GRANT SELECT ON airplane.flight_schedule TO 'guest'@'localhost';
GRANT SELECT ON airplane.location TO 'guest'@'localhost';
GRANT SELECT ON airplane.predefined_schedule TO 'guest'@'localhost';
GRANT SELECT ON airplane.price TO 'guest'@'localhost';
GRANT SELECT ON airplane.route TO 'guest'@'localhost';
GRANT SELECT ON airplane.seat TO 'guest'@'localhost';