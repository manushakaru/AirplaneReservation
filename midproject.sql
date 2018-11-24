/*

need to add a trigger to customer because customer_type is changing dynamically

added a price attribute to booking because price changes with the customer_type

need to add a price function to calculate price for a booking

*/

create database Airplane;

use Airplane;


CREATE TABLE customer_state (
  customer_state enum('Guest','Frequent','Gold') not null,
  discount int(2) not null,
  bookings_needed int(2) not null,
  PRIMARY KEY (customer_state)
);

CREATE TABLE customer (
  user_id int(5) auto_increment,
  first_name varchar(250) not null,
  last_name varchar(250) not null,
  email varchar(250) not null,
  password varchar(20) not null,
  age int(2) not null,
  customer_type enum('Guest','Frequent','Gold') DEFAULT 'Frequent' NOT NULL,
  mobile_no int(10) not null,
  PRIMARY KEY (user_id),
  FOREIGN KEY (customer_type) references customer_state(customer_state) on delete cascade on update cascade
);

CREATE TABLE aircraft (
  craft_id int(5) auto_increment,
  craft_type varchar(40) not null,
  PRIMARY KEY (craft_id)
);

CREATE TABLE admins (
  admin_id int(2) auto_increment,
  first_name varchar(250) not null,
  last_name varchar(250) not null,
  email varchar(250) not null,
  password varchar(20) not null,
  PRIMARY KEY (admin_id)
);

CREATE TABLE location (
  location_id int(5) auto_increment,
  location varchar(250) not null,
  locateTo int(5),
  PRIMARY KEY (location_id),
  FOREIGN KEY (locateTo) references location(location_id) on delete cascade on update cascade
);

CREATE TABLE airport (
  airport_code int(5) auto_increment,
  location_id int(5) not null,
  airport_name VARCHAR(100) not null,
  PRIMARY KEY (airport_code),
  FOREIGN KEY (location_id) references location(location_id) on delete cascade on update cascade
);

CREATE TABLE route (
  route_id int(5) auto_increment,
  origin int(5) not null,
  destination int(5) not null,
  PRIMARY KEY (route_id),
  FOREIGN KEY (origin) references airport(airport_code) on delete cascade on update cascade,
  FOREIGN KEY (destination) references airport(airport_code) on delete cascade on update cascade
);

CREATE TABLE predefined_schedule (
  schedule_id int(5) auto_increment,
  route_id int(5) not null,
  day varchar(10) not null,
  departure_time TIME not null,
  arrival_time TIME not null,
  PRIMARY KEY (schedule_id),
  FOREIGN KEY (route_id) references route(route_id) on delete cascade on update cascade
);

CREATE TABLE class (
  class_id int(5) auto_increment,
  class varchar(20) not null,
  PRIMARY KEY (class_id)
);

CREATE TABLE price(
  price_id int(5) auto_increment,
  class_id int(5),
  route_id int(5) not null,
  price FLOAT(7,2) not null,
  PRIMARY KEY (price_id),
  FOREIGN KEY (class_id) references class(class_id) on delete cascade on update cascade,
  FOREIGN KEY (route_id) references route(route_id) on delete cascade on update cascade
);

CREATE TABLE seat (
  seat_id int(5) auto_increment,
  craft_id int(5) not null,
  seat_no int(3) not null,
  class_id int(5) not null,
  PRIMARY KEY (seat_id),
  FOREIGN KEY (class_id) references class(class_id) on delete cascade on update cascade,
  FOREIGN KEY (craft_id) references aircraft(craft_id) on delete cascade on update cascade
);

CREATE TABLE delay (
  delay_id varchar(5),
  departure_delay TIME,
  arrival_delay TIME,
  PRIMARY KEY (delay_id)
);


CREATE TABLE flight_schedule (
  flight_schedule_id int(5) auto_increment,
  delay_id varchar(5),
  schedule_id int(5) not null,
  craft_id int(5) not null,
  route_id int(5) not null,
  date Date not null,
  PRIMARY KEY (flight_schedule_id),
  FOREIGN KEY (delay_id) references delay(delay_id) on delete cascade on update cascade,
  FOREIGN KEY (route_id) references route(route_id) on delete cascade on update cascade,
  FOREIGN KEY (schedule_id) references predefined_schedule(schedule_id) on delete cascade on update cascade,
  FOREIGN KEY (craft_id) references aircraft(craft_id) on delete cascade on update cascade
);

CREATE TABLE booking  (
  booking_id int(5) auto_increment,
  user_id int(5) not null,
  flight_schedule_id int(5) not null,
  seat_id int(5) not null,
  booked_date DATE not null,
  price float(7,2) not null,
  PRIMARY KEY (booking_id),
  FOREIGN KEY (flight_schedule_id) references flight_schedule(flight_schedule_id) on delete cascade on update cascade,
  FOREIGN KEY (seat_id) references seat(seat_id) on delete cascade on update cascade,
  FOREIGN KEY (user_id) references customer(user_id) on delete cascade on update cascade
);


