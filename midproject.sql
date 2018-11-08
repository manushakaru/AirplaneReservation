/*

need to add a trigger to customer because customer_type is changing dynamically
added new table customer_type with the relevant discount for customer_types

added a price attribute to booking because price changes with the customer_type

need to add a price function to calculate price for a booking

rethink about seat table

*/

create database Airplane;

use Airplane;

CREATE TABLE customer (
  user_id int(5) auto_increment,
  name varchar(20) not null,
  email varchar(20) not null,
  password varchar(20) not null,
  age int(2) not null,
  customer_type enum('Guest','Frequent','Gold') DEFAULT 'Frequent' NOT NULL,
  mobile_no varchar(20) not null,
  PRIMARY KEY (user_id)
);

CREATE TABLE aircraft (
  craft_id int(5) auto_increment,
  craft_type varchar(20) not null,
  seats int(3) not null,
  PRIMARY KEY (craft_id)
);

CREATE TABLE admins (
  admin_id int(2) auto_increment,
  name varchar(20) not null,
  email varchar(20) not null,
  password varchar(20) not null,
  PRIMARY KEY (admin_id)
);

CREATE TABLE location (
  location_id int(5) auto_increment,
  location varchar(20) not null,
  locateTo int(5),
  PRIMARY KEY (location_id),
  FOREIGN KEY (locateTo) references location(location_id) on delete cascade on update cascade
);

CREATE TABLE airport (
  airport_code int(5) auto_increment,
  location_id int(5) not null,
  airport_name VARCHAR(50) not null,
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
/*
CREATE TABLE flight (
  flight_id int(5) auto_increment,
  route_id int(5),
  PRIMARY KEY (flight_id),
  FOREIGN KEY (route_id) references route(route_id)
);*/

CREATE TABLE predefined_schedule (
  schedule_id int(5) auto_increment,
  craft_id int(5) not null,
  /*flight_id int(5),*/
  route_id int(5) not null,
  day varchar(20) not null,
  departure_time varchar(20) not null,
  arrival_time varchar(20) not null,
  PRIMARY KEY (schedule_id),
  FOREIGN KEY (craft_id) references aircraft(craft_id) on delete cascade on update cascade,
  FOREIGN KEY (route_id) references route(route_id) on delete cascade on update cascade
  /*FOREIGN KEY (flight_id) references flight(flight_id)*/
);

CREATE TABLE class (
  class_id int(5) auto_increment,
  route_id int(5) not null,
  price varchar(20) not null,
  class varchar(20) not null,
  PRIMARY KEY (class_id),
  FOREIGN KEY (route_id) references route(route_id) on delete cascade on update cascade
);

CREATE TABLE seat (
  seat_id int(5) auto_increment,
  craft_id int(5) not null,
  seat_no varchar(20) not null,
  PRIMARY KEY (seat_id),
  FOREIGN KEY (craft_id) references aircraft(craft_id) on delete cascade on update cascade
);

CREATE TABLE booking  (
  booking_id int(5) auto_increment,
  user_id int(5) not null,
  schedule_id int(5) not null,
  class_id int(5) not null,
  seat_id int(5) not null,
  booking_date varchar(20) not null,
  booked_date varchar(20) not null,
  price varchar(20) not null,
  PRIMARY KEY (booking_id),
  FOREIGN KEY (schedule_id) references predefined_schedule(schedule_id) on delete cascade on update cascade,
  FOREIGN KEY (seat_id) references seat(seat_id) on delete cascade on update cascade,
  FOREIGN KEY (user_id) references customer(user_id) on delete cascade on update cascade,
  FOREIGN KEY (class_id) references class(class_id) on delete cascade on update cascade
);


CREATE TABLE real_schedule (
  real_schedule_id int(5) auto_increment,
  route_id int(5) not null,
  schedule_id int(5) not null,
  starting_time varchar(20) not null,
  arrival_time varchar(20) not null,
  craft_id int(5) not null,
  PRIMARY KEY (real_schedule_id),
  /*FOREIGN KEY (flight_id) references flight(flight_id),*/
  FOREIGN KEY (route_id) references route(route_id) on delete cascade on update cascade,
  FOREIGN KEY (schedule_id) references predefined_schedule(schedule_id) on delete cascade on update cascade,
  FOREIGN KEY (craft_id) references aircraft(craft_id) on delete cascade on update cascade
);

CREATE TABLE customer_state (
  customer_state varchar(10) not null,
  discount int(2) not null,
  bookings_needed int(2) not null,
  PRIMARY KEY (customer_state)
);