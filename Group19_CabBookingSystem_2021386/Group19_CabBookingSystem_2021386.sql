create database DBMS;
use DBMS;
CREATE TABLE Booking (
  BOOKING_ID INT AUTO_INCREMENT PRIMARY KEY,
  VEHICLE_PLATE_NO VARCHAR(20) NOT NULL,
  CUSTOMER_ID INT NOT NULL,
  RIDE_OTP INT NOT NULL,
  PICKUP_LOCATION VARCHAR(100) NOT NULL,
  DROP_LOCATION VARCHAR(100) NOT NULL,
  COMPLETION_STATUS VARCHAR(20) NOT NULL,
  FEEDBACK VARCHAR(500),
  FOREIGN KEY (VEHICLE_PLATE_NO) REFERENCES Vehicle(VEHICLE_PLATE_NO),
  FOREIGN KEY (CUSTOMER_ID) REFERENCES Customer(CUSTOMER_ID)
);
CREATE TABLE Customer (
  CUSTOMER_ID INT AUTO_INCREMENT PRIMARY KEY,
  EMAIL_ID VARCHAR(50) NOT NULL UNIQUE,
  PASSWORD VARCHAR(100) NOT NULL,
  PHONE_NO VARCHAR(20) NOT NULL UNIQUE,
  FIRST_NAME VARCHAR(30) NOT NULL,
  MIDDLE_NAME VARCHAR(30),
  LAST_NAME VARCHAR(30) NOT NULL
);
CREATE TABLE Vehicle (
  VEHICLE_PLATE_NO VARCHAR(20) PRIMARY KEY,
  MODEL VARCHAR(50) NOT NULL,
  COMPANY VARCHAR(30) NOT NULL,
  VEHICLE_TYPE VARCHAR(30) NOT NULL,
  YEAR_OF_MANUFACTURE INT NOT NULL
);
CREATE TABLE Driver (
  VEHICLE_PLATE_NO VARCHAR(20) NOT NULL UNIQUE,
  EMAIL_ID VARCHAR(50) NOT NULL UNIQUE,
  PASSWORD VARCHAR(100) NOT NULL,
  PHONE_NO VARCHAR(20) NOT NULL UNIQUE,
  FIRST_NAME VARCHAR(30) NOT NULL,
  MIDDLE_NAME VARCHAR(30),
  LAST_NAME VARCHAR(30) NOT NULL,
  FOREIGN KEY (VEHICLE_PLATE_NO) REFERENCES Vehicle(VEHICLE_PLATE_NO)
);
CREATE TABLE Payment (
  PAYMENT_ID INT AUTO_INCREMENT PRIMARY KEY,
  BOOKING_ID INT NOT NULL,
  CUSTOMER_ID INT NOT NULL,
  AMOUNT DECIMAL(10, 2) NOT NULL,
  DATE DATE NOT NULL,
  TIME TIME NOT NULL,
  CASH BOOLEAN NOT NULL DEFAULT 0,
  CARD BOOLEAN NOT NULL DEFAULT 0,
  UPI BOOLEAN NOT NULL DEFAULT 0,
  WALLET BOOLEAN NOT NULL DEFAULT 0,
  FOREIGN KEY (BOOKING_ID) REFERENCES Booking(BOOKING_ID),
  FOREIGN KEY (CUSTOMER_ID) REFERENCES Customer(CUSTOMER_ID)
);
CREATE TABLE Ride (
  VEHICLE_PLATE_NO VARCHAR(20) NOT NULL,
  DATE DATE NOT NULL,
  TIME TIME NOT NULL,
  PICKUP_LOCATION VARCHAR(100) NOT NULL,
  DROP_LOCATION VARCHAR(100) NOT NULL,
  FOREIGN KEY (VEHICLE_PLATE_NO) REFERENCES Vehicle(VEHICLE_PLATE_NO)
);


insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (1, 1, 1, 9924, '04 Meadow Valley Drive', '368 Bay Center', true, 'Morbi quis tortor id nulla ultrices aliquet.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (2, 2, 2, 1161, '600 Service Point', '3 Donald Lane', true, 'In congue. Etiam justo.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (3, 3, 3, 8543, '35 Kensington Circle', '725 Mitchell Point', true, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (4, 4, 4, 4187, '366 Sheridan Street', '4968 Carberry Way', true, 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (5, 5, 5, 4350, '0 Dapin Circle', '9005 Emmet Road', false, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (6, 6, 6, 7808, '1 Stone Corner Park', '674 Canary Circle', true, 'Nullam sit amet turpis elementum ligula vehicula consequat.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (7, 7, 7, 4039, '1 Warrior Circle', '2362 Bunting Point', false, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (8, 8, 8, 9036, '0 8th Drive', '5768 Crownhardt Parkway', true, 'Suspendisse potenti. In eleifend quam a odio.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (9, 9, 9, 6384, '81626 Bluejay Alley', '53 Packers Circle', true, 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (10, 10, 10, 2518, '2 Ronald Regan Avenue', '04171 Russell Junction', false, 'Vivamus vel nulla eget eros elementum pellentesque.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (11, 11, 11, 5322, '3 Garrison Junction', '31 Darwin Park', false, 'In hac habitasse platea dictumst.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (12, 12, 12, 3879, '3863 Michigan Pass', '6 Longview Lane', false, 'Integer ac leo. Pellentesque ultrices mattis odio.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (13, 13, 13, 6756, '845 Veith Junction', '1 Towne Street', true, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (14, 14, 14, 4401, '2122 Wayridge Lane', '9682 Mosinee Plaza', false, 'Integer a nibh. In quis justo.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (15, 15, 15, 2809, '24 Little Fleur Point', '6450 Green Ridge Pass', true, 'Sed accumsan felis.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (16, 16, 16, 7653, '1197 Schurz Road', '03 Mockingbird Pass', false, 'Suspendisse potenti.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (17, 17, 17, 8429, '1 Northfield Drive', '2 Rutledge Road', false, 'Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (18, 18, 18, 9036, '5 Westport Drive', '09324 Evergreen Plaza', false, 'Etiam justo.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (19, 19, 19, 3095, '00 Bashford Park', '3581 Donald Crossing', true, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (20, 20, 20, 5714, '3 Esker Parkway', '89583 Cherokee Junction', false, 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (21, 21, 21, 4835, '71143 Ilene Way', '5228 Hermina Crossing', false, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (22, 22, 22, 6664, '4432 Di Loreto Circle', '8010 Londonderry Drive', false, 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (23, 23, 23, 7184, '6 Jenifer Drive', '500 Ronald Regan Park', true, 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (24, 24, 24, 6954, '34915 Cascade Junction', '89 Bartelt Plaza', true, 'Maecenas rhoncus aliquam lacus.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (25, 25, 25, 9012, '690 Valley Edge Parkway', '4 Golf Course Plaza', true, 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (26, 26, 26, 5865, '818 Banding Circle', '01170 Hermina Point', true, 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (27, 27, 27, 2290, '307 Cardinal Street', '506 Anderson Place', false, 'Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (28, 28, 28, 9370, '3118 Washington Point', '6209 Macpherson Hill', false, 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (29, 29, 29, 2908, '7 Knutson Parkway', '6830 Coleman Court', false, 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (30, 30, 30, 6100, '6895 Blackbird Parkway', '16428 Commercial Terrace', true, 'Integer ac neque. Duis bibendum.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (31, 31, 31, 2823, '3 Hayes Lane', '3397 Hanover Alley', false, 'Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (32, 32, 32, 4111, '7 Becker Pass', '5072 Maple Wood Trail', false, 'Sed ante.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (33, 33, 33, 4756, '658 Doe Crossing Way', '2360 Thackeray Crossing', false, 'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (34, 34, 34, 9726, '920 Fallview Place', '5990 Acker Parkway', true, 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (35, 35, 35, 1396, '88 Shasta Court', '34300 Bellgrove Terrace', true, 'Suspendisse potenti. In eleifend quam a odio.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (36, 36, 36, 3424, '569 Green Ridge Trail', '7672 Lindbergh Alley', false, 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (37, 37, 37, 6189, '7 Kipling Place', '09 Garrison Hill', true, 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (38, 38, 38, 7057, '96316 Dakota Point', '136 Morningstar Way', true, 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (39, 39, 39, 9223, '80 Monica Drive', '80 Dottie Center', true, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (40, 40, 40, 6744, '28196 Gulseth Place', '21079 Continental Circle', false, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (41, 41, 41, 2320, '6400 Scofield Place', '354 Summerview Way', false, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (42, 42, 42, 7246, '6 5th Street', '0463 Waxwing Park', false, 'Mauris ullamcorper purus sit amet nulla.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (43, 43, 43, 9695, '7 Orin Park', '60201 Sauthoff Drive', true, 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (44, 44, 44, 8818, '58 Lien Way', '71 Toban Terrace', false, 'Fusce posuere felis sed lacus.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (45, 45, 45, 2016, '924 Miller Place', '1782 Rieder Plaza', true, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (46, 46, 46, 3451, '58583 Johnson Trail', '19 Badeau Place', false, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (47, 47, 47, 6610, '719 Dorton Crossing', '442 Moland Center', false, 'Phasellus sit amet erat. Nulla tempus.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (48, 48, 48, 7307, '87721 Buhler Street', '27627 Norway Maple Lane', true, 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (49, 49, 49, 4684, '781 Corben Hill', '4 Tennyson Point', false, 'Nulla tellus.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (50, 50, 50, 4733, '17496 International Park', '8 Kensington Parkway', false, 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (51, 51, 51, 9935, '3983 Troy Point', '70 Schiller Center', true, 'Integer a nibh.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (52, 52, 52, 4628, '6198 Londonderry Plaza', '93 Chive Terrace', true, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (53, 53, 53, 2939, '849 Spenser Plaza', '9090 Reinke Crossing', false, 'In hac habitasse platea dictumst.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (54, 54, 54, 6064, '73920 Dixon Court', '8 Colorado Street', true, 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (55, 55, 55, 7747, '4 Buell Way', '446 Lyons Lane', false, 'Aenean auctor gravida sem.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (56, 56, 56, 1731, '1 Westend Trail', '10 Petterle Alley', true, 'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (57, 57, 57, 2800, '4 Mifflin Drive', '049 Ludington Point', true, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (58, 58, 58, 6250, '566 Susan Circle', '81 Service Point', false, 'Integer a nibh. In quis justo.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (59, 59, 59, 9074, '7 Ludington Hill', '264 Gateway Avenue', false, 'Duis at velit eu est congue elementum.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (60, 60, 60, 6028, '030 Ryan Plaza', '7420 Boyd Drive', false, 'In hac habitasse platea dictumst.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (61, 61, 61, 6478, '41668 Gina Terrace', '7 7th Circle', true, 'Suspendisse potenti.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (62, 62, 62, 8802, '2394 Lindbergh Park', '2 Nancy Parkway', false, 'Proin risus.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (63, 63, 63, 2043, '241 Stone Corner Road', '31975 Roxbury Pass', false, 'Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (64, 64, 64, 6260, '300 Talisman Junction', '02 Spaight Center', false, 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (65, 65, 65, 8408, '4 Prentice Court', '88 Fallview Parkway', true, 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (66, 66, 66, 9094, '8759 Manley Lane', '45 Lakeland Place', false, 'Proin interdum mauris non ligula pellentesque ultrices.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (67, 67, 67, 7488, '25 Clyde Gallagher Drive', '83 Havey Circle', false, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (68, 68, 68, 1596, '18 Lawn Circle', '84 Maywood Point', false, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (69, 69, 69, 6317, '013 Starling Park', '5 Hazelcrest Street', true, 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (70, 70, 70, 3321, '7 Stoughton Hill', '9619 Chive Avenue', false, 'Nunc rhoncus dui vel sem. Sed sagittis.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (71, 71, 71, 1762, '92400 Tony Lane', '51552 Truax Trail', true, 'Etiam justo.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (72, 72, 72, 5496, '53067 Sunfield Drive', '9 Lillian Parkway', true, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (73, 73, 73, 6736, '7065 Cordelia Crossing', '872 Ramsey Trail', true, 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (74, 74, 74, 9641, '28 Ruskin Road', '37113 Calypso Road', false, 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (75, 75, 75, 9942, '22876 Monica Terrace', '2510 Morrow Center', false, 'Nulla mollis molestie lorem. Quisque ut erat.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (76, 76, 76, 6306, '3297 Canary Point', '52 Trailsway Terrace', false, 'Ut at dolor quis odio consequat varius. Integer ac leo.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (77, 77, 77, 6877, '64 Cody Circle', '6511 Lien Park', false, 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (78, 78, 78, 9035, '80 Springs Court', '629 Parkside Place', false, 'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (79, 79, 79, 3246, '148 Summerview Parkway', '624 Lighthouse Bay Street', true, 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (80, 80, 80, 5239, '2484 Pennsylvania Road', '30888 Comanche Hill', true, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (81, 81, 81, 7958, '7999 Nelson Park', '769 Everett Pass', true, 'Curabitur convallis.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (82, 82, 82, 9930, '3263 Bowman Junction', '3705 Hanson Trail', false, 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (83, 83, 83, 3230, '6884 Knutson Point', '50785 Lotheville Alley', true, 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (84, 84, 84, 3209, '02 Harbort Terrace', '02 Washington Lane', true, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (85, 85, 85, 4734, '10171 South Point', '63 Hayes Crossing', false, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (86, 86, 86, 3473, '759 Jana Road', '12745 Summit Place', false, 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (87, 87, 87, 4202, '8 Roth Road', '6 Memorial Circle', false, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (88, 88, 88, 5510, '891 Hayes Court', '2 Warrior Terrace', true, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (89, 89, 89, 1337, '892 Lotheville Road', '992 Elka Road', false, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (90, 90, 90, 9209, '1295 Ludington Point', '8121 Knutson Court', false, 'Aenean lectus. Pellentesque eget nunc.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (91, 91, 91, 8292, '9 Green Ridge Drive', '489 Mifflin Road', true, 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (92, 92, 92, 1198, '3 Texas Drive', '4 Bunker Hill Circle', true, 'Donec ut dolor.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (93, 93, 93, 5543, '240 Rusk Trail', '01 Hooker Park', true, 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (94, 94, 94, 6972, '5514 Sutherland Way', '7 Claremont Center', true, 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (95, 95, 95, 6332, '06 Fair Oaks Parkway', '8 Lerdahl Lane', false, 'Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (96, 96, 96, 8616, '829 Dawn Way', '2 Corben Crossing', true, 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (97, 97, 97, 2321, '7284 Lunder Junction', '4012 Merry Circle', false, 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (98, 98, 98, 1041, '99 Fisk Place', '28 Gerald Plaza', false, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (99, 99, 99, 4067, '6923 Birchwood Parkway', '98225 Basil Alley', false, 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.');
insert into Booking (BOOKING_ID, VEHICLE_PLATE_NO, CUSTOMER_ID, RIDE_OTP, PICKUP_LOCATION, DROP_LOCATION, COMPLETION_STATUS, FEEDBACK) values (100, 100, 100, 9989, '5 Banding Lane', '79 Utah Terrace', true, 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.');


insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (1, 'hflemyng0@php.net', '2uDeNPjWMxp', '+86 778 111 0731', 'Harrison', 'Izzett', 'Flemyng');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (2, 'rmacrorie1@spiegel.de', 'apM15V7g', '+62 867 278 5142', 'Ricki', 'Peddel', 'MacRorie');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (3, 'ccottam2@a8.net', 'GrHSfOv2', '+54 358 383 0391', 'Caye', 'Pantin', 'Cottam');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (4, 'kdacre3@xinhuanet.com', 'xpBxbQe', '+7 680 878 4737', 'Kathie', 'Forsyde', 'Dacre');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (5, 'leggleson4@sfgate.com', '2hjdl63rsiOX', '+62 685 960 1138', 'Laughton', 'Yateman', 'Eggleson');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (6, 'slackinton5@icio.us', 'CGWwoESf45T', '+63 575 812 4369', 'Sarine', 'Dudlestone', 'Lackinton');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (7, 'lfindlow6@miibeian.gov.cn', 'EOiaUsrTnO0', '+48 900 668 2121', 'Laird', 'Tenbrug', 'Findlow');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (8, 'ryanez7@hud.gov', 'eLj4yuuQz', '+51 622 956 7783', 'Reed', 'Allott', 'Yanez');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (9, 'ecraker8@hatena.ne.jp', 'wgUop8i', '+7 786 400 2995', 'Ephrayim', 'Thay', 'Craker');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (10, 'cmacronald9@sakura.ne.jp', 'mHEc0RLzMpE', '+48 496 866 5379', 'Corrinne', 'Swannell', 'MacRonald');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (11, 'afoystona@answers.com', 'UK4naaVzH', '+33 264 980 0259', 'Antin', 'Caress', 'Foyston');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (12, 'acawthryb@a8.net', '1EF6mLTxj', '+880 490 775 5772', 'Adolpho', 'Lofty', 'Cawthry');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (13, 'iodyc@bbb.org', 'EZu1uYFCy', '+93 733 847 2249', 'Ignace', 'Twining', 'Ody');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (14, 'hpedlinghamd@salon.com', 'bIzxfL0z', '+389 321 971 4509', 'Hermina', 'Aspey', 'Pedlingham');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (15, 'padese@wiley.com', 'H5UMP8W', '+52 308 844 5728', 'Price', 'Slaymaker', 'Ades');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (16, 'bantonsenf@nhs.uk', 'Eh0aduaXtPC', '+62 638 252 6569', 'Barthel', 'Upcott', 'Antonsen');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (17, 'gahrendseng@dropbox.com', 'DXQhuUenjtjj', '+31 422 474 4731', 'Giralda', 'Forrest', 'Ahrendsen');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (18, 'hhalleyboneh@sina.com.cn', 'Kt1vFM', '+374 707 689 7263', 'Hazel', 'Halls', 'Halleybone');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (19, 'vwannelli@storify.com', 'qSvsW7y', '+46 635 431 9479', 'Vlad', 'ducarme', 'Wannell');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (20, 'hreddochj@dot.gov', 'bBxTLd', '+86 104 202 3658', 'Hartwell', 'Oselton', 'Reddoch');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (21, 'lselkirkk@last.fm', 'iZY0DyEMd8J', '+7 977 420 1434', 'Lizzie', 'Merwe', 'Selkirk');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (22, 'rpickworthl@vk.com', 'ndMtghjIT', '+63 964 385 3659', 'Rutger', 'Scougal', 'Pickworth');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (23, 'sperkinsonm@github.com', '54yzCOZPa', '+86 539 656 6696', 'Selma', 'Spurdle', 'Perkinson');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (24, 'kbrasn@photobucket.com', 'vKZDq1Wl0Sw', '+58 564 391 6608', 'Kara-lynn', 'Tuffley', 'Bras');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (25, 'kmenloveo@artisteer.com', 'RRo8XZtkRI', '+1 630 180 2840', 'Katherina', 'Gronav', 'Menlove');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (26, 'ktomaszewiczp@guardian.co.uk', '5T9GSq', '+351 396 254 4338', 'Kaylyn', 'Browett', 'Tomaszewicz');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (27, 'tneilsonq@sohu.com', 'OHxxaH', '+47 975 219 2561', 'Tessie', 'Simounet', 'Neilson');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (28, 'ttulipr@google.com.au', 'P0qxgqnzej1u', '+86 676 126 9996', 'Thia', 'Heather', 'Tulip');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (29, 'dpratens@patch.com', 'fVriMAl', '+30 365 901 8571', 'Drusi', 'Mackneis', 'Praten');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (30, 'awillishiret@hao123.com', 'jBazla', '+63 996 797 3655', 'Ashley', 'Comrie', 'Willishire');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (31, 'lsnarttu@census.gov', 'wyyJRLAOA0uq', '+62 838 400 3484', 'Lesly', 'Carillo', 'Snartt');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (32, 'airesonv@cdc.gov', 'pCWmaCS1', '+380 489 926 6949', 'Alvira', 'Nossent', 'Ireson');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (33, 'rgoodlifew@si.edu', 'Sq8syBuzpa', '+55 310 700 3280', 'Rosella', 'Hardware', 'Goodlife');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (34, 'fadamekx@sogou.com', 'PtXtJmc', '+86 847 305 9628', 'Field', 'Izzatt', 'Adamek');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (35, 'asibthorpey@mapquest.com', 'FzkqDsnLW', '+973 281 389 3296', 'Alastair', 'McDonough', 'Sibthorpe');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (36, 'mstrangmanz@utexas.edu', 'orWYLMNWDR', '+1 914 235 2822', 'Monti', 'Jacobbe', 'Strangman');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (37, 'dhamp10@ft.com', 'TsXrG8ATEa', '+503 374 991 7312', 'Dunn', 'Sheal', 'Hamp');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (38, 'tantham11@github.io', '8EhO6cRj', '+359 521 973 7706', 'Tobias', 'Yerlett', 'Antham');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (39, 'eclandillon12@ca.gov', 'RLEcnimh', '+86 525 643 5379', 'Emile', 'Brumbie', 'Clandillon');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (40, 'acawkwell13@statcounter.com', '4b25Qn', '+63 464 122 4002', 'Aurea', 'Heed', 'Cawkwell');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (41, 'eoakenfall14@sourceforge.net', 'wvsavde', '+86 574 589 9576', 'Emlyn', 'Pretty', 'Oakenfall');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (42, 'rtrass15@networksolutions.com', 'fPHyoU7Qh', '+57 982 978 9308', 'Roland', 'Vaughn', 'Trass');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (43, 'chardman16@ucoz.com', 'fw0ce2tlo', '+7 615 449 6529', 'Consuelo', 'Barensky', 'Hardman');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (44, 'nodams17@sciencedaily.com', 'e0wpxnKGgX2', '+86 854 442 4247', 'Nikolaos', 'Baudouin', 'Odams');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (45, 'scardero18@taobao.com', 'UZFA3A', '+86 324 292 2311', 'Shel', 'Aggus', 'Cardero');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (46, 'rdysart19@1688.com', '7ffiQriF', '+380 711 610 9820', 'Rube', 'Credland', 'Dysart');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (47, 'sjeroch1a@jigsy.com', 'GMFm68X', '+66 237 890 9095', 'Shea', 'Prenty', 'Jeroch');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (48, 'vcrich1b@google.ca', 'AKD2jY635vrJ', '+54 781 903 3466', 'Vitoria', 'Shutt', 'Crich');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (49, 'asnoddon1c@washington.edu', 'a1lhn0Li', '+389 181 233 7904', 'Ardella', 'Craker', 'Snoddon');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (50, 'dwilman1d@jalbum.net', '4uV9Lk9MPD', '+86 250 967 3176', 'Daveta', 'Galero', 'Wilman');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (51, 'stuckwell1e@shinystat.com', 'LHA6209h', '+62 803 132 8481', 'Sergio', 'Mellsop', 'Tuckwell');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (52, 'wanmore1f@whitehouse.gov', 'akMlwresx', '+86 595 267 0273', 'Walden', 'Cusiter', 'Anmore');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (53, 'dsmurfitt1g@amazon.co.jp', '585EPubWp', '+62 998 324 5157', 'Danya', 'Lafuente', 'Smurfitt');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (54, 'olusted1h@creativecommons.org', 'IINnmU1f4', '+55 216 365 5939', 'Oliver', 'Cradock', 'Lusted');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (55, 'econstant1i@prweb.com', 'PZ9AQKiHTm', '+44 256 111 6668', 'Elbertina', 'Fiveash', 'Constant');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (56, 'twrangle1j@weather.com', 'N0nmhcol0OG', '+86 810 124 4665', 'Timothea', 'Molines', 'Wrangle');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (57, 'lgidney1k@samsung.com', 'lSVxKa9', '+48 208 455 0207', 'Larina', 'Fairlaw', 'Gidney');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (58, 'cblaskett1l@time.com', 'jh3php06TB1', '+7 162 155 6365', 'Colman', 'Wharby', 'Blaskett');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (59, 'gbruckner1m@sphinn.com', '8DyGCrIZW', '+31 541 470 3933', 'Garrek', 'Browne', 'Bruckner');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (60, 'nalbutt1n@posterous.com', 'lkXS1b9q', '+380 649 613 4540', 'Nancy', 'Mugg', 'Albutt');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (61, 'lcovino1o@hatena.ne.jp', '4mHmKqPq6t', '+54 449 757 9872', 'Lanny', 'Foord', 'covino');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (62, 'btropman1p@vistaprint.com', 'qfphQ6WT', '+48 943 296 8242', 'Brandon', 'Gebuhr', 'Tropman');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (63, 'mdello1q@issuu.com', 'xKRLgLTTY6', '+86 563 241 8422', 'Mendie', 'Oliphand', 'Dello');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (64, 'alohoar1r@instagram.com', 'js8Zix2Cthjv', '+30 518 965 1643', 'Albie', 'Housby', 'Lohoar');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (65, 'aharman1s@cargocollective.com', '47gdzOSSAvR', '+86 579 266 1925', 'Artair', 'Luffman', 'Harman');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (66, 'hvallery1t@google.nl', 'Y2Xk5LkXV', '+358 254 924 3182', 'Hammad', 'Juanico', 'Vallery');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (67, 'cchurcher1u@google.com.hk', '55vMAdT8', '+63 973 272 4097', 'Chrisy', 'Bisset', 'Churcher');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (68, 'fbeasleigh1v@theguardian.com', 'Zj8SiXC7dkAl', '+63 273 250 7124', 'Farly', 'Pain', 'Beasleigh');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (69, 'cjaquet1w@japanpost.jp', 'DxhDcjI', '+95 841 819 9916', 'Celka', 'Cottesford', 'Jaquet');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (70, 'kskitterel1x@virginia.edu', 'rej7bvIjUAm', '+62 649 117 7800', 'Karrah', 'Olerenshaw', 'Skitterel');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (71, 'cwelden1y@netlog.com', 'bBjYhQp0', '+81 387 802 6552', 'Calv', 'Avon', 'Welden');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (72, 'mwolstenholme1z@eepurl.com', 'SP4aIlZMvkN', '+356 180 518 3450', 'Maren', 'Kingzet', 'Wolstenholme');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (73, 'rcrosetto20@etsy.com', 'jX1746o', '+53 379 554 1981', 'Randal', 'Fulger', 'Crosetto');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (74, 'mridsdole21@usgs.gov', 'f40z0vr0rsD', '+7 493 943 0078', 'Mannie', 'Cranke', 'Ridsdole');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (75, 'lfalks22@youtu.be', 'QJdylK', '+63 827 242 3194', 'Lissie', 'Swiffin', 'Falks');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (76, 'abuscombe23@geocities.jp', '90dyD1krBBc', '+7 577 486 8454', 'Amalita', 'Acarson', 'Buscombe');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (77, 'bfagence24@theglobeandmail.com', 'ngsU9I0', '+7 955 436 8139', 'Betteanne', 'Angless', 'Fagence');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (78, 'mespina25@globo.com', 'PVIcEgBw6', '+1 115 739 8861', 'Melisandra', 'Methley', 'Espina');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (79, 'jockleshaw26@topsy.com', 'jPahU0ziQQ2', '+57 554 106 3444', 'Joshuah', 'Pantone', 'Ockleshaw');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (80, 'fcescoti27@elpais.com', '6OFUjRG5OI0', '+86 124 684 0279', 'Fayina', 'Bonnick', 'Cescoti');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (81, 'troxby28@army.mil', 'EAEipFMNV', '+63 590 307 8405', 'Tony', 'Rickasse', 'Roxby');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (82, 'rhinstock29@t-online.de', 'lJyrbquPC', '+351 181 667 1873', 'Rudy', 'Pruckner', 'Hinstock');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (83, 'dprestedge2a@time.com', 'HouDnAI', '+62 940 920 9664', 'Diannne', 'Minger', 'Prestedge');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (84, 'ifairleigh2b@slideshare.net', 'SlBfrKkHETO8', '+55 589 490 0163', 'Isabelita', 'Mateus', 'Fairleigh');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (85, 'echown2c@weibo.com', 'J3ixyDAr', '+251 743 121 6292', 'Eduard', 'Celez', 'Chown');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (86, 'okeddie2d@nih.gov', 'ZGLjzgL', '+420 266 569 9592', 'Orion', 'Thyng', 'Keddie');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (87, 'sstpaul2e@europa.eu', 'rtAK0GXuuMT', '+86 436 210 5825', 'Shelia', 'Joskovitch', 'St. Paul');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (88, 'nmathely2f@jiathis.com', 'ApOBrvx', '+593 625 594 5820', 'Nananne', 'Lewsley', 'Mathely');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (89, 'hpetegre2g@cisco.com', '6ttgojUuUb', '+386 326 108 3408', 'Hope', 'Berrick', 'Petegre');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (90, 'aborg2h@godaddy.com', 'SPyd0yn2efQW', '+86 404 364 2300', 'Arlette', 'Favill', 'Borg');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (91, 'pliversedge2i@cpanel.net', 'TrMLbV5REH', '+49 591 893 0592', 'Parker', 'Rouf', 'Liversedge');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (92, 'slideard2j@miibeian.gov.cn', 'RP920v', '+55 598 221 3755', 'Sonny', 'Lawes', 'Lideard');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (93, 'tfitzhenry2k@1und1.de', 'AGGGQ0f', '+46 638 926 3036', 'Tallie', 'Gooderridge', 'Fitzhenry');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (94, 'rjervis2l@skyrock.com', 'eTVJNE7xvWK4', '+63 218 571 8169', 'Rebbecca', 'Daldry', 'Jervis');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (95, 'dphidgin2m@google.co.uk', '9lwXVZG3848Z', '+63 324 611 3242', 'Douglas', 'Hasel', 'Phidgin');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (96, 'rfairbanks2n@drupal.org', 'b6rSMSltK08', '+48 532 404 2431', 'Randolf', 'Deguara', 'Fairbanks');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (97, 'zmayor2o@economist.com', '14BXSl', '+86 658 777 2556', 'Zeb', 'Sheere', 'Mayor');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (98, 'cpuvia2p@amazon.de', 'J49dpg8lcV', '+54 607 718 3196', 'Codi', 'Sugg', 'Puvia');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (99, 'hkelwaybamber2q@ezinearticles.com', 'dIUFjRrt', '+62 360 359 7210', 'Heida', 'Bickley', 'Kelwaybamber');
insert into Customer (CUSTOMER_ID, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (100, 'spatience2r@jalbum.net', 'b6PK6lLn', '+46 434 510 2693', 'Salvatore', 'Goldster', 'Patience');


insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (1, 'Cooper', 'MINI', 'Sedan', 2002);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (2, 'LS', 'Lexus', 'Hatchback', 1991);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (3, 'CTS', 'Cadillac', 'Hatchback', 2010);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (4, 'MKZ', 'Lincoln', 'Sedan', 2007);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (5, 'Tribeca', 'Subaru', 'Sedan', 2009);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (6, 'FX', 'Infiniti', 'Sedan', 2004);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (7, 'Dakota Club', 'Dodge', 'Sedan', 1993);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (8, 'Camry', 'Toyota', 'Sedan', 1994);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (9, 'Impala', 'Chevrolet', 'Sedan', 2002);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (10, 'Chariot', 'Mitsubishi', 'SUV', 1991);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (11, 'Tahoe', 'Chevrolet', 'Hatchback', 2002);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (12, 'Viper RT/10', 'Dodge', 'Hatchback', 1995);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (13, 'Montana', 'Pontiac', 'Hatchback', 2005);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (14, '9000', 'Saab', 'Sedan', 1995);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (15, 'Sephia', 'Kia', 'Hatchback', 2001);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (16, 'Eldorado', 'Cadillac', 'Sedan', 1998);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (17, 'Navajo', 'Mazda', 'SUV', 1992);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (18, 'S60', 'Volvo', 'Sedan', 2003);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (19, 'Baja', 'Subaru', 'Sedan', 2006);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (20, 'Civic', 'Honda', 'Hatchback', 2004);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (21, 'Charger', 'Dodge', 'SUV', 2010);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (22, 'Tacoma', 'Toyota', 'SUV', 2005);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (23, 'Town & Country', 'Chrysler', 'Hatchback', 1993);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (24, 'Passport', 'Honda', 'Hatchback', 2000);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (25, 'Silverado 1500', 'Chevrolet', 'SUV', 2011);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (26, 'Topaz', 'Mercury', 'Hatchback', 1986);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (27, 'CR-V', 'Honda', 'Sedan', 2002);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (28, 'Z4', 'BMW', 'Sedan', 2008);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (29, 'Skyhawk', 'Buick', 'Sedan', 1987);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (30, 'Blazer', 'Chevrolet', 'Sedan', 1995);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (31, 'Wrangler', 'Jeep', 'Sedan', 2000);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (32, 'Z8', 'BMW', 'Hatchback', 2000);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (33, 'NSX', 'Acura', 'Sedan', 1999);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (34, 'GL-Class', 'Mercedes-Benz', 'Sedan', 2012);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (35, 'Monte Carlo', 'Chevrolet', 'Hatchback', 2001);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (36, 'Z4', 'BMW', 'Sedan', 2011);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (37, '599 GTB Fiorano', 'Ferrari', 'Hatchback', 2009);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (38, 'Avalon', 'Toyota', 'Hatchback', 2001);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (39, 'Cabriolet', 'Audi', 'SUV', 1996);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (40, 'Sportvan G10', 'Chevrolet', 'Sedan', 1992);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (41, 'Cooper Countryman', 'MINI', 'Hatchback', 2012);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (42, 'Q7', 'Audi', 'SUV', 2007);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (43, 'T100 Xtra', 'Toyota', 'SUV', 1995);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (44, 'Crown Victoria', 'Ford', 'Sedan', 2009);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (45, 'Chariot', 'Mitsubishi', 'Sedan', 1991);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (46, 'Leone', 'Subaru', 'SUV', 1985);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (47, '2500', 'GMC', 'Hatchback', 1998);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (48, 'Versa', 'Nissan', 'Hatchback', 2007);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (49, 'Monte Carlo', 'Chevrolet', 'Sedan', 1998);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (50, 'Integra', 'Acura', 'Hatchback', 2000);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (51, 'Range Rover', 'Land Rover', 'SUV', 1997);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (52, 'LeSabre', 'Buick', 'Hatchback', 1996);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (53, '458 Italia', 'Ferrari', 'SUV', 2011);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (54, 'Mark LT', 'Lincoln', 'SUV', 2007);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (55, 'XJ', 'Jaguar', 'Hatchback', 2006);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (56, 'Corvette', 'Chevrolet', 'Hatchback', 2002);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (57, 'Explorer', 'Ford', 'SUV', 2005);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (58, 'LX', 'Lexus', 'Sedan', 2001);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (59, 'G-Series G30', 'Chevrolet', 'Hatchback', 1993);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (60, 'QX', 'Infiniti', 'SUV', 2005);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (61, 'SSR', 'Chevrolet', 'Sedan', 2003);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (62, 'Lumina', 'Chevrolet', 'Sedan', 1992);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (63, 'Diamante', 'Mitsubishi', 'Hatchback', 1996);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (64, 'Tredia', 'Mitsubishi', 'SUV', 1988);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (65, 'Jimmy', 'GMC', 'SUV', 1994);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (66, 'IS', 'Lexus', 'Sedan', 2001);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (67, 'Intrepid', 'Dodge', 'SUV', 1994);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (68, 'CTS', 'Cadillac', 'Hatchback', 2011);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (69, 'Cabriolet', 'Volkswagen', 'Hatchback', 1989);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (70, 'Rio', 'Kia', 'Hatchback', 2011);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (71, 'Freelander', 'Land Rover', 'Hatchback', 2008);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (72, '200SX', 'Nissan', 'Hatchback', 1995);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (73, 'Seville', 'Cadillac', 'SUV', 2001);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (74, 'Durango', 'Dodge', 'SUV', 2011);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (75, 'V40', 'Volvo', 'Sedan', 2002);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (76, 'E-Series', 'Ford', 'Hatchback', 2009);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (77, '5000S', 'Audi', 'SUV', 1988);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (78, 'Corolla', 'Toyota', 'Hatchback', 1996);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (79, 'Sierra 3500', 'GMC', 'Hatchback', 2004);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (80, 'F250', 'Ford', 'Sedan', 2010);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (81, 'Crosstour', 'Honda', 'SUV', 2012);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (82, '3500', 'Chevrolet', 'Sedan', 1996);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (83, 'Maxima', 'Nissan', 'SUV', 2005);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (84, 'E-Class', 'Mercedes-Benz', 'Hatchback', 1988);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (85, 'S-Class', 'Mercedes-Benz', 'Sedan', 2009);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (86, 'LTD', 'Ford', 'Sedan', 1986);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (87, 'Escalade EXT', 'Cadillac', 'SUV', 2007);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (88, 'xB', 'Scion', 'Sedan', 2005);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (89, 'B-Series', 'Mazda', 'Sedan', 1995);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (90, 'Escalade ESV', 'Cadillac', 'Hatchback', 2005);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (91, 'MDX', 'Acura', 'Sedan', 2006);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (92, 'Accord', 'Honda', 'Hatchback', 1995);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (93, 'Chariot', 'Mitsubishi', 'Sedan', 1985);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (94, 'Swift', 'Suzuki', 'Sedan', 2004);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (95, '1500', 'GMC', 'SUV', 1994);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (96, 'Grand Marquis', 'Mercury', 'Sedan', 2001);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (97, 'Town & Country', 'Chrysler', 'Sedan', 1992);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (98, 'VehiCROSS', 'Isuzu', 'Hatchback', 2001);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (99, 'GTI', 'Volkswagen', 'Hatchback', 1992);
insert into Vehicle (VEHICLE_PLATE_NO, MODEL, COMPANY, VEHICLE_TYPE, YEAR_OF_MANUFACTURE) values (100, 'Envoy', 'GMC', 'SUV', 1999);


insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (1, 'kbruna0@ustream.tv', 'vweNGz', '+420 419 528 8415', 'Kathe', 'Fitchet', 'Bruna');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (2, 'kpetroff1@theguardian.com', 'EfK5nJ3', '+33 776 373 2620', 'Kristos', 'Raggett', 'Petroff');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (3, 'jlabbati2@latimes.com', 'm09FFI2c', '+54 267 526 9881', 'Jacklin', 'Highway', 'Labbati');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (4, 'dbircher3@bandcamp.com', 'GYy4Y9DZ', '+995 105 403 8143', 'Devan', 'Sauniere', 'Bircher');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (5, 'travenshaw4@bloomberg.com', 'AU4usM', '+54 411 742 7827', 'Tandy', 'Baglan', 'Ravenshaw');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (6, 'rbencher5@cam.ac.uk', 'auGHx6oISu', '+216 549 315 9483', 'Rick', 'Knath', 'Bencher');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (7, 'tbuckleigh6@auda.org.au', '5eNZgsT7', '+963 221 273 7546', 'Tabatha', 'Kelmere', 'Buckleigh');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (8, 'bschroder7@bravesites.com', 'Gpk8dgEa4njZ', '+84 454 302 1660', 'Belvia', 'Jocelyn', 'Schroder');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (9, 'cruppelin8@netvibes.com', 'n6DGGz03DKZ', '+86 227 644 7808', 'Christoforo', 'Moyle', 'Ruppelin');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (10, 'wsprionghall9@51.la', 'LS5G4NWE3', '+86 878 625 6933', 'Witty', 'Corish', 'Sprionghall');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (11, 'dtarriera@wikia.com', 'NXYN3I009d', '+86 703 167 7426', 'Dana', 'De Zuani', 'Tarrier');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (12, 'rcecelyb@state.tx.us', 'EfqDSZkZKJ', '+1 154 606 7551', 'Rawley', 'Bigadike', 'Cecely');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (13, 'ebootherc@upenn.edu', 'FzaCNLl', '+62 948 553 8203', 'Elka', 'Primarolo', 'Boother');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (14, 'mclived@hhs.gov', '3PMeoiyZ', '+53 296 680 6089', 'Maddalena', 'Wenman', 'Clive');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (15, 'pkalberere@accuweather.com', 'W5DiQAK', '+63 924 352 7055', 'Pablo', 'Bartalini', 'Kalberer');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (16, 'lionnf@blog.com', 'BIfCny1JtM4', '+63 402 326 4133', 'Lock', 'Bools', 'Ionn');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (17, 'dselbieg@pagesperso-orange.fr', 'GMqfmU6L', '+46 842 803 6057', 'Darin', 'Mateu', 'Selbie');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (18, 'mharrowsmithh@gizmodo.com', 'vhqaq2evCi', '+86 833 478 9879', 'Milena', 'Brumbye', 'Harrowsmith');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (19, 'ffilippozzii@nyu.edu', 'GCgLjHp8ZwO', '+86 580 998 4536', 'Freida', 'Bulfit', 'Filippozzi');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (20, 'agudgej@surveymonkey.com', 'aZm77m', '+1 909 158 9857', 'Axe', 'Uren', 'Gudge');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (21, 'dcanfieldk@dmoz.org', 'uwmGFJn', '+30 778 126 9949', 'Diane-marie', 'Frenzl', 'Canfield');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (22, 'dpyffel@bluehost.com', 'cSiOGdX', '+53 434 948 8293', 'Dinah', 'Raine', 'Pyffe');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (23, 'jdavidovem@tuttocitta.it', 'gJMhKaLAQ0mU', '+62 647 543 8992', 'Jerrilyn', 'Woolen', 'Davidove');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (24, 'dmarlonn@cam.ac.uk', 'kZiOwFBuL', '+86 257 221 8760', 'Dolf', 'Kuhle', 'Marlon');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (25, 'cgethino@gmpg.org', 'hRocin', '+30 569 897 9905', 'Corabel', 'Brickstock', 'Gethin');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (26, 'ttrevenap@imdb.com', 'WllIJALgHfmy', '+86 354 872 0555', 'Teddy', 'Dadley', 'Trevena');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (27, 'cmurgatroydq@a8.net', 'kfjJbAZpk', '+91 412 200 1632', 'Caitrin', 'Kettridge', 'Murgatroyd');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (28, 'cmeenehanr@adobe.com', 'W3DuJLM5', '+46 180 564 5033', 'Colleen', 'Dofty', 'Meenehan');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (29, 'ikeepins@arstechnica.com', '0vxTeutA', '+351 962 618 6259', 'Irv', 'Giraudat', 'Keepin');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (30, 'mflaubertt@joomla.org', 'Txpq6A481W', '+55 465 489 5853', 'Meggie', 'Stocken', 'Flaubert');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (31, 'msybryu@msu.edu', 'Ab6fY2wQMy', '+370 778 723 7687', 'Maribelle', 'Gorey', 'Sybry');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (32, 'swinnettv@java.com', 'BSuaoAR5V', '+33 199 675 0654', 'Scot', 'Hardbattle', 'Winnett');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (33, 'dtrengrousew@mit.edu', 'fJR6i2R7i', '+46 127 553 6631', 'Dani', 'Sellen', 'Trengrouse');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (34, 'tstclairx@twitpic.com', 'cPpwbbFFN', '+30 695 106 8110', 'Thaddus', 'Pridie', 'St. Clair');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (35, 'bedwiny@youtube.com', 'na3ldbcL', '+63 886 938 4332', 'Bordy', 'Brunton', 'Edwin');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (36, 'zcullonz@senate.gov', 'qStbd3', '+55 562 773 3953', 'Zora', 'Walkden', 'Cullon');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (37, 'evenning10@irs.gov', 'kr76wk', '+84 343 658 4965', 'Ewell', 'Dugan', 'Venning');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (38, 'ethemann11@github.io', 'dHrwuZpAX', '+966 349 865 5540', 'Emanuel', 'Chesher', 'Themann');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (39, 'lrichmond12@google.de', 'VZ6vhjE', '+967 512 833 8963', 'Linc', 'Garthside', 'Richmond');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (40, 'aellams13@msn.com', 'pNYtSO', '+51 953 763 4438', 'Arlyn', 'Roon', 'Ellams');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (41, 'elinstead14@vk.com', 'EPnEggWSPa', '+27 929 265 8620', 'Erskine', 'Bertome', 'Linstead');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (42, 'wswindin15@wunderground.com', 'vN9DRdG', '+351 554 260 4639', 'Willa', 'Begg', 'Swindin');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (43, 'atellenbach16@mediafire.com', 'xvaY3jegeUWQ', '+27 720 764 2420', 'Anstice', 'Vitte', 'Tellenbach');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (44, 'rfalconar17@usda.gov', '3cxlKiUTHZV', '+62 372 674 9759', 'Reider', 'Kmicicki', 'Falconar');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (45, 'hthomel18@surveymonkey.com', 'vFeNhR4m1jmc', '+51 497 471 2243', 'Hyacinth', 'Yitzhakov', 'Thomel');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (46, 'nlukasik19@google.com.hk', 'H4F6g9', '+63 239 617 3153', 'Noe', 'Peacock', 'Lukasik');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (47, 'mdunbar1a@free.fr', '5eZvL9', '+86 330 943 6660', 'Matias', 'Morrison', 'Dunbar');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (48, 'tfoyston1b@mysql.com', 'nRwPuWGHL2Jx', '+86 519 744 9563', 'Tracy', 'Champain', 'Foyston');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (49, 'bheiton1c@barnesandnoble.com', 'naC62SOwZl', '+351 644 455 6428', 'Blondelle', 'Bleasdille', 'Heiton');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (50, 'pwhitten1d@wordpress.org', 'Ynm701', '+57 311 468 9448', 'Phillip', 'Asey', 'Whitten');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (51, 'kbrocklesby1e@engadget.com', 'dZUNE4a1M', '+994 109 805 7801', 'Karry', 'Dobbie', 'Brocklesby');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (52, 'wbowerman1f@washington.edu', '6TIKXeq', '+872 204 721 0017', 'Wylma', 'Robben', 'Bowerman');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (53, 'astronach1g@nsw.gov.au', 'BG9sdCGr', '+57 397 705 3004', 'Aloysia', 'Milverton', 'Stronach');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (54, 'cetheredge1h@multiply.com', '3rOFOcs', '+81 969 958 1614', 'Cristin', 'Potebury', 'Etheredge');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (55, 'ocrother1i@pagesperso-orange.fr', 'RQxPqQCiuN8j', '+351 304 805 8901', 'Orelie', 'Plumridege', 'Crother');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (56, 'hmcgrouther1j@reddit.com', 'Q6FKJtIoL8l', '+1 666 647 9829', 'Heath', 'Kock', 'McGrouther');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (57, 'whymas1k@blogs.com', 'BkuV1mA28Y', '+86 917 558 9130', 'Wilmar', 'Slowey', 'Hymas');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (58, 'crannigan1l@paypal.com', 'lBeJf3', '+7 548 188 7021', 'Clayton', 'Dodge', 'Rannigan');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (59, 'rclingan1m@4shared.com', 'Qggrnuv5iPG', '+86 907 135 5787', 'Renee', 'Chicotti', 'Clingan');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (60, 'yflatley1n@google.com.br', 'RofKHuGkj0', '+1 513 634 3131', 'Yehudi', 'Callaway', 'Flatley');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (61, 'rproswell1o@mtv.com', '8zjMpzS', '+251 200 344 1204', 'Roarke', 'Tummasutti', 'Proswell');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (62, 'scarne1p@merriam-webster.com', 'OvWU1WnnAQ', '+81 139 744 4916', 'Shermie', 'Dudeney', 'Carne');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (63, 'nicom1q@technorati.com', 'Yo449mycyt9', '+356 485 360 9455', 'Netta', 'Hoult', 'Icom');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (64, 'lwalaron1r@livejournal.com', 'unMHHwJK5N0', '+1 274 231 1559', 'Loria', 'Kenealy', 'Walaron');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (65, 'cbanisch1s@seattletimes.com', 'SBGITiQCLnY', '+55 224 984 7040', 'Charmane', 'Haruard', 'Banisch');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (66, 'hblanckley1t@china.com.cn', 'pReYzxeLBj', '+7 468 611 1454', 'Hyman', 'McKie', 'Blanckley');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (67, 'bcowoppe1u@dion.ne.jp', '2Pgy4vKbWz', '+44 408 126 5333', 'Barnabas', 'Poore', 'Cowoppe');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (68, 'bhinge1v@unblog.fr', '8gXP70KoC4PQ', '+48 556 802 6279', 'Burk', 'Van der Krui', 'Hinge');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (69, 'pmassel1w@usda.gov', '3Qf7WOKh', '+46 114 786 2559', 'Patin', 'Speer', 'Massel');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (70, 'fbride1x@techcrunch.com', 'yWv39iJ3h', '+7 448 218 8898', 'Filip', 'Farlham', 'Bride');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (71, 'fnewlan1y@infoseek.co.jp', 'q8DhHZNfI02', '+86 676 862 1773', 'Flinn', 'Fergusson', 'Newlan');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (72, 'kbelham1z@myspace.com', 'VMCvoYR2aVFd', '+504 800 777 3296', 'Kellby', 'Muzzi', 'Belham');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (73, 'tbauldrey20@indiegogo.com', 'pek0LWV9', '+33 641 354 4446', 'Tatum', 'Paladino', 'Bauldrey');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (74, 'wkerrane21@howstuffworks.com', 'TODC3StqEwqz', '+62 640 732 4238', 'Wilie', 'Roscher', 'Kerrane');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (75, 'eandresen22@reuters.com', 'hq01vvru', '+351 315 427 5345', 'Edita', 'Condict', 'Andresen');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (76, 'dboal23@lycos.com', 'HMNF1bkuNkg', '+62 293 625 4694', 'Duff', 'Franzini', 'Boal');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (77, 'dleinthall24@cnet.com', 'Nygsn6HOx', '+86 179 923 4403', 'Dredi', 'Spraggs', 'Leinthall');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (78, 'mgiacomini25@etsy.com', 'KnBE6zeLKD', '+351 904 767 2165', 'Maryjo', 'Sheen', 'Giacomini');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (79, 'kroseborough26@washingtonpost.com', 'oV80Vsm', '+351 819 565 8410', 'Karee', 'Swanson', 'Roseborough');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (80, 'aharpham27@oaic.gov.au', '40Ztn2BE', '+7 316 203 3428', 'Al', 'Lively', 'Harpham');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (81, 'ljedrys28@devhub.com', 'YnBrp9FGuh33', '+234 236 584 9642', 'Lauri', 'Jochen', 'Jedrys');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (82, 'tmansfield29@psu.edu', 'rSEddEy', '+591 876 996 5815', 'Trixy', 'Hefferan', 'Mansfield');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (83, 'rbendel2a@earthlink.net', 'l6fqABtnC', '+30 581 496 3707', 'Ruddy', 'Smallpeace', 'Bendel');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (84, 'mangerstein2b@mtv.com', '6FFUDVwHriDS', '+7 915 859 0938', 'Marve', 'Rowell', 'Angerstein');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (85, 'ablinde2c@paypal.com', '9oAZ403', '+963 873 447 5186', 'Adham', 'O'' Kelleher', 'Blinde');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (86, 'ddienes2d@ted.com', 'Kdjp7pMsW5bR', '+1 808 999 4520', 'Dennie', 'Ebi', 'Dienes');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (87, 'tharlett2e@archive.org', 'GwXwxqC', '+86 618 981 8550', 'Theobald', 'Mosson', 'Harlett');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (88, 'scarman2f@si.edu', 'RnIuT3D6Rv', '+353 133 831 9216', 'Saree', 'Spowage', 'Carman');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (89, 'tstopper2g@noaa.gov', '8NyBFgT', '+86 683 968 8462', 'Trisha', 'Pelham', 'Stopper');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (90, 'zmcalinion2h@pcworld.com', 'wwpqeXd4uMFt', '+51 868 122 1841', 'Zack', 'Garmston', 'McAlinion');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (91, 'jdrezzer2i@columbia.edu', '4vRl7Kc8QIqo', '+33 915 323 2420', 'Janenna', 'Abendroth', 'Drezzer');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (92, 'hennor2j@surveymonkey.com', '0mLJHrC', '+221 190 941 8064', 'Hartley', 'Heakey', 'Ennor');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (93, 'ldunnet2k@discuz.net', 'NXgtzOT2EyW', '+46 476 161 6336', 'Leonhard', 'Bartolomieu', 'Dunnet');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (94, 'chalbard2l@psu.edu', 'GFVrQ0NHk5V', '+86 491 906 5564', 'Clarabelle', 'Collis', 'Halbard');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (95, 'htight2m@oaic.gov.au', 'pYMTzi3hN', '+39 262 850 3939', 'Honoria', 'Hoy', 'Tight');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (96, 'fniblock2n@webmd.com', 'rUZdEa', '+967 929 947 0565', 'Forest', 'Matusiak', 'Niblock');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (97, 'mheelis2o@51.la', '0mXtChIl', '+62 543 497 5478', 'Mendy', 'Wharmby', 'Heelis');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (98, 'kmerrington2p@simplemachines.org', '2CD4MLwFo3A', '+1 626 360 4750', 'Krysta', 'Brusby', 'Merrington');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (99, 'amcmanus2q@opensource.org', '9onEESaHYIF', '+33 204 751 0344', 'Aarika', 'Paice', 'McManus');
insert into Driver (VEHICLE_PLATE_NO, EMAIL_ID, PASSWORD, PHONE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME) values (100, 'mpaynton2r@sourceforge.net', 'iqhKH7qgSnu', '+7 449 729 0758', 'Mar', 'Edgars', 'Paynton');


insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (1, 1, 1, 5789.57, '2022-04-14', '9:40:58', false, false, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (2, 2, 2, 641.81, '2022-02-19', '5:26:13', true, false, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (3, 3, 3, 5898.93, '2022-08-10', '16:02:49', true, true, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (4, 4, 4, 2298.32, '2022-03-16', '10:17:22', false, false, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (5, 5, 5, 2469.37, '2022-12-21', '16:22:27', true, true, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (6, 6, 6, 2816.62, '2022-10-04', '17:34:50', true, true, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (7, 7, 7, 5450.81, '2022-11-17', '10:33:57', false, false, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (8, 8, 8, 8519.73, '2023-02-01', '4:23:49', true, false, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (9, 9, 9, 9557.97, '2022-07-03', '6:41:47', true, false, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (10, 10, 10, 812.55, '2022-05-17', '10:24:25', true, true, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (11, 11, 11, 5258.42, '2022-05-29', '22:31:14', true, true, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (12, 12, 12, 8151.83, '2022-08-07', '18:12:40', false, false, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (13, 13, 13, 1846.12, '2022-09-26', '17:25:19', false, false, false, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (14, 14, 14, 8199.33, '2023-01-05', '17:18:20', true, true, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (15, 15, 15, 9926.96, '2022-07-02', '15:01:56', false, false, false, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (16, 16, 16, 9185.61, '2022-02-14', '3:50:48', false, true, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (17, 17, 17, 1951.63, '2022-04-01', '14:57:16', true, false, false, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (18, 18, 18, 8636.58, '2022-11-26', '3:15:44', false, false, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (19, 19, 19, 3323.4, '2022-04-28', '14:23:12', false, false, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (20, 20, 20, 2044.68, '2022-03-10', '4:42:48', false, false, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (21, 21, 21, 2929.81, '2022-09-01', '12:53:38', true, true, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (22, 22, 22, 6545.97, '2022-05-18', '1:28:51', false, false, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (23, 23, 23, 7446.46, '2022-11-21', '9:21:29', false, false, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (24, 24, 24, 6588.34, '2022-03-08', '16:43:00', true, true, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (25, 25, 25, 2693.94, '2022-03-25', '4:07:47', true, true, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (26, 26, 26, 3030.27, '2023-02-05', '22:54:48', true, false, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (27, 27, 27, 1439.75, '2022-06-19', '5:54:19', false, true, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (28, 28, 28, 2292.11, '2022-06-25', '11:11:21', false, true, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (29, 29, 29, 8337.46, '2022-09-02', '0:30:13', true, false, false, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (30, 30, 30, 8631.48, '2022-05-26', '20:50:41', false, false, false, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (31, 31, 31, 8490.21, '2022-11-03', '5:31:24', true, true, false, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (32, 32, 32, 9998.24, '2022-09-04', '15:56:47', true, false, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (33, 33, 33, 9311.68, '2023-01-15', '10:30:19', false, false, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (34, 34, 34, 357.28, '2022-05-02', '12:17:53', false, true, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (35, 35, 35, 4205.66, '2023-01-10', '4:30:37', true, false, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (36, 36, 36, 9764.63, '2022-03-02', '21:32:45', false, false, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (37, 37, 37, 6077.22, '2022-04-23', '19:47:52', true, false, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (38, 38, 38, 1614.82, '2022-07-02', '16:54:54', true, true, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (39, 39, 39, 7857.59, '2022-06-09', '4:12:25', true, true, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (40, 40, 40, 4408.94, '2022-06-23', '19:43:02', true, false, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (41, 41, 41, 9952.42, '2022-04-29', '2:11:22', true, true, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (42, 42, 42, 7685.93, '2023-01-05', '16:53:51', false, true, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (43, 43, 43, 468.25, '2022-09-22', '1:59:05', true, true, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (44, 44, 44, 7706.4, '2022-12-18', '4:01:37', false, false, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (45, 45, 45, 6089.01, '2023-01-09', '10:47:01', false, true, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (46, 46, 46, 8849.64, '2022-12-08', '23:20:14', false, true, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (47, 47, 47, 471.98, '2022-07-22', '18:34:05', false, false, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (48, 48, 48, 3963.94, '2022-07-31', '23:51:22', false, true, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (49, 49, 49, 5260.63, '2022-07-12', '8:55:00', false, true, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (50, 50, 50, 7022.65, '2022-06-17', '2:29:11', true, true, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (51, 51, 51, 7543.3, '2022-02-25', '16:44:52', true, true, false, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (52, 52, 52, 1982.6, '2022-03-12', '1:53:02', true, true, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (53, 53, 53, 8444.63, '2022-05-26', '7:48:44', true, false, false, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (54, 54, 54, 159.78, '2023-01-26', '15:27:21', true, true, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (55, 55, 55, 5458.8, '2022-08-12', '10:48:06', true, true, false, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (56, 56, 56, 2079.12, '2022-09-30', '8:44:23', true, true, false, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (57, 57, 57, 386.18, '2022-03-06', '2:36:08', false, true, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (58, 58, 58, 5975.73, '2022-04-16', '19:21:59', true, false, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (59, 59, 59, 8102.1, '2022-05-21', '8:03:31', true, true, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (60, 60, 60, 2136.7, '2022-12-26', '4:55:44', false, true, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (61, 61, 61, 1098.12, '2022-10-03', '12:27:36', true, false, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (62, 62, 62, 540.0, '2022-11-27', '6:19:28', false, true, false, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (63, 63, 63, 8706.47, '2022-12-28', '13:49:17', true, true, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (64, 64, 64, 9973.72, '2022-02-23', '8:48:48', false, true, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (65, 65, 65, 6999.27, '2023-02-05', '15:43:51', true, true, false, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (66, 66, 66, 429.63, '2022-10-05', '1:57:20', false, true, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (67, 67, 67, 3584.49, '2022-07-25', '13:22:46', false, true, false, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (68, 68, 68, 1716.05, '2022-04-18', '13:57:53', true, false, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (69, 69, 69, 2223.11, '2022-03-05', '5:32:40', true, true, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (70, 70, 70, 7528.73, '2022-10-20', '1:18:27', true, false, false, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (71, 71, 71, 8251.57, '2022-06-18', '3:39:29', true, true, false, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (72, 72, 72, 142.57, '2022-04-30', '15:34:28', true, false, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (73, 73, 73, 9759.12, '2022-12-30', '0:00:06', false, false, false, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (74, 74, 74, 5434.02, '2022-02-23', '1:25:33', false, true, false, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (75, 75, 75, 7952.8, '2022-05-23', '14:30:28', true, true, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (76, 76, 76, 1047.56, '2022-04-27', '10:39:28', false, true, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (77, 77, 77, 2411.43, '2022-12-30', '5:35:24', false, true, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (78, 78, 78, 867.45, '2022-03-30', '19:00:31', false, false, false, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (79, 79, 79, 2800.31, '2022-10-05', '7:46:44', false, true, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (80, 80, 80, 684.0, '2022-12-05', '9:55:36', true, true, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (81, 81, 81, 3629.59, '2022-10-30', '18:30:59', false, false, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (82, 82, 82, 9775.88, '2022-02-24', '23:09:21', false, true, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (83, 83, 83, 9707.62, '2022-10-09', '11:06:02', true, false, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (84, 84, 84, 8082.69, '2022-04-23', '19:52:49', false, false, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (85, 85, 85, 2202.85, '2022-06-02', '11:16:10', true, true, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (86, 86, 86, 4065.55, '2022-07-30', '16:20:54', true, false, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (87, 87, 87, 7040.03, '2022-06-07', '19:30:19', true, true, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (88, 88, 88, 8500.08, '2022-07-15', '2:08:38', false, false, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (89, 89, 89, 8964.26, '2022-09-15', '13:19:46', false, false, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (90, 90, 90, 6122.82, '2022-11-10', '12:58:19', true, false, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (91, 91, 91, 9323.12, '2022-03-27', '9:38:34', false, false, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (92, 92, 92, 509.68, '2022-02-20', '8:38:13', false, true, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (93, 93, 93, 3746.01, '2022-03-09', '9:31:03', true, true, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (94, 94, 94, 9750.82, '2022-07-25', '14:53:36', true, true, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (95, 95, 95, 9453.14, '2022-11-21', '22:59:26', true, true, true, true);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (96, 96, 96, 1371.71, '2022-09-21', '18:21:21', true, true, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (97, 97, 97, 2424.5, '2022-04-29', '20:15:14', false, true, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (98, 98, 98, 4945.43, '2022-11-21', '16:58:24', true, true, false, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (99, 99, 99, 922.86, '2022-06-03', '9:59:48', false, false, true, false);
insert into Payment (PAYMENT_ID, BOOKING_ID, CUSTOMER_ID, AMOUNT, DATE, TIME, CASH, CARD, UPI, WALLET) values (100, 100, 100, 6072.41, '2023-01-03', '18:55:24', false, false, true, true);



insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (1, '2022-09-16', '3:19:23', '5 Canary Avenue', '23859 Swallow Circle');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (2, '2022-10-30', '8:03:35', '09806 Little Fleur Road', '3717 Westend Trail');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (3, '2022-05-30', '5:18:36', '3 Merchant Court', '8 Oak Valley Court');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (4, '2022-06-28', '12:02:52', '40 Almo Court', '13 Kim Terrace');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (5, '2023-02-07', '8:43:35', '311 Sunfield Lane', '494 Hauk Parkway');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (6, '2022-07-14', '16:21:54', '93888 Anzinger Hill', '77800 Truax Crossing');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (7, '2023-01-03', '22:25:04', '7136 Merry Junction', '2984 Buell Way');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (8, '2022-08-27', '6:32:28', '6894 Mandrake Pass', '7 John Wall Pass');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (9, '2022-03-18', '14:59:31', '4784 Veith Drive', '48207 Esch Point');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (10, '2022-05-22', '7:56:49', '501 Granby Parkway', '7 Sutteridge Way');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (11, '2022-04-20', '8:49:16', '81584 Shopko Place', '5106 Spohn Junction');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (12, '2022-03-02', '22:12:47', '7095 Mallory Point', '30446 Parkside Way');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (13, '2022-11-25', '10:09:14', '7314 Steensland Court', '4 Waubesa Junction');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (14, '2022-11-23', '18:04:29', '0160 Forest Street', '5609 Haas Junction');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (15, '2022-07-09', '17:26:00', '28279 Sage Circle', '97 Meadow Vale Trail');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (16, '2022-04-14', '18:26:13', '78 Monterey Point', '8 Maple Way');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (17, '2022-06-01', '14:13:07', '216 Schiller Trail', '9 Springs Avenue');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (18, '2022-04-22', '17:06:56', '993 Red Cloud Point', '0454 Division Circle');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (19, '2022-05-05', '17:30:21', '68 Grover Crossing', '6611 Mayfield Lane');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (20, '2022-10-01', '16:38:04', '6369 Mccormick Plaza', '6212 School Terrace');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (21, '2022-12-09', '12:34:06', '591 5th Center', '92580 Stang Park');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (22, '2022-09-01', '6:47:33', '8880 Rusk Hill', '988 Nelson Street');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (23, '2022-06-12', '20:54:07', '3321 Moulton Circle', '721 Parkside Court');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (24, '2022-12-29', '19:24:17', '7 Brickson Park Road', '2 Knutson Point');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (25, '2022-08-17', '8:27:56', '8 Homewood Alley', '88747 Morrow Pass');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (26, '2023-02-09', '13:02:11', '93 Sloan Park', '37 Sloan Place');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (27, '2022-03-09', '10:25:25', '047 Crowley Park', '3 Green Center');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (28, '2022-03-30', '17:14:02', '41 Clemons Road', '606 Transport Terrace');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (29, '2022-08-18', '3:35:09', '7 Manufacturers Crossing', '1 John Wall Street');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (30, '2022-07-05', '8:00:30', '94633 Mockingbird Terrace', '6 Westend Place');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (31, '2022-07-01', '18:44:40', '265 Shoshone Pass', '42191 Delladonna Pass');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (32, '2022-07-28', '14:27:31', '6 Florence Crossing', '2 Riverside Road');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (33, '2022-04-07', '4:41:05', '12915 American Center', '15 Dennis Court');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (34, '2022-11-21', '22:35:27', '4 Doe Crossing Way', '7 Marquette Avenue');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (35, '2022-06-25', '9:04:19', '714 Birchwood Park', '12 Riverside Trail');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (36, '2022-09-02', '8:27:39', '3148 Sutherland Street', '45246 Mendota Park');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (37, '2022-05-27', '13:26:46', '5192 Macpherson Park', '4741 Hovde Hill');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (38, '2022-11-16', '12:55:30', '1629 Ruskin Terrace', '85627 Sachs Court');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (39, '2022-08-15', '4:42:29', '69 Oakridge Terrace', '258 Dunning Park');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (40, '2022-08-20', '8:31:49', '000 Vermont Parkway', '48 Milwaukee Lane');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (41, '2022-02-25', '7:15:32', '75 Graedel Crossing', '805 Pleasure Crossing');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (42, '2022-09-20', '19:48:21', '121 Judy Alley', '62321 Mockingbird Junction');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (43, '2022-05-09', '6:42:15', '04 Kim Street', '8802 Thompson Point');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (44, '2022-04-12', '15:10:04', '13297 Hoffman Street', '55 Kenwood Terrace');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (45, '2022-02-14', '2:24:03', '2 Fordem Terrace', '2 Portage Point');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (46, '2022-09-07', '20:58:24', '35 Carberry Way', '146 Marquette Junction');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (47, '2022-05-26', '17:45:43', '2817 Surrey Lane', '6 Paget Point');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (48, '2022-06-16', '20:34:26', '28491 Fallview Hill', '87979 Oxford Trail');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (49, '2022-08-18', '8:41:16', '4 Northfield Street', '37675 Duke Court');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (50, '2022-11-05', '20:54:44', '21484 Mallard Place', '59947 Spenser Center');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (51, '2023-01-10', '12:51:46', '662 Ridgeway Park', '07825 Granby Road');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (52, '2022-12-18', '14:22:36', '1 Shelley Plaza', '4143 Hudson Road');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (53, '2022-04-22', '3:21:48', '28 John Wall Place', '725 Columbus Point');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (54, '2022-12-17', '17:41:11', '49 Esch Road', '35697 Melvin Road');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (55, '2022-04-14', '16:08:41', '55825 Magdeline Crossing', '2 Graedel Trail');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (56, '2022-05-27', '21:46:08', '1930 Muir Terrace', '34 Northview Court');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (57, '2022-12-20', '9:09:09', '92080 Saint Paul Trail', '511 Jackson Parkway');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (58, '2022-08-02', '23:05:41', '6 Ilene Parkway', '3587 Sachs Hill');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (59, '2022-07-04', '22:12:29', '40320 Jackson Avenue', '5 Eliot Avenue');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (60, '2022-07-14', '3:51:28', '1 Spenser Parkway', '5207 School Parkway');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (61, '2023-02-02', '16:27:33', '84337 Declaration Road', '7 Tennessee Plaza');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (62, '2022-09-30', '8:56:37', '43304 Warrior Court', '77406 Farwell Drive');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (63, '2022-03-08', '17:05:22', '73 Dovetail Road', '462 Valley Edge Lane');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (64, '2022-05-08', '14:04:34', '7748 Towne Center', '11 Annamark Junction');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (65, '2022-07-03', '5:00:14', '575 Jenna Circle', '232 Northland Street');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (66, '2022-07-12', '6:42:41', '1 Helena Alley', '6 Kenwood Point');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (67, '2022-05-21', '9:01:28', '0 Jay Place', '52 Northland Plaza');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (68, '2022-02-27', '16:47:31', '446 Carioca Lane', '798 Randy Avenue');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (69, '2022-06-24', '10:36:23', '3 Carey Drive', '5 Cascade Street');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (70, '2022-03-28', '19:54:51', '218 Knutson Park', '40031 Northwestern Point');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (71, '2022-04-23', '4:58:41', '459 Corry Street', '6 Alpine Road');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (72, '2022-03-21', '14:39:35', '47168 Vernon Terrace', '38 Bartillon Alley');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (73, '2022-05-12', '7:50:43', '7106 Mosinee Hill', '9 Anderson Circle');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (74, '2022-03-28', '14:50:30', '46968 Walton Terrace', '376 International Way');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (75, '2022-04-05', '12:16:52', '724 Thompson Court', '0 American Ash Junction');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (76, '2022-03-19', '22:56:39', '58 Lien Road', '20 Bobwhite Place');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (77, '2023-01-30', '20:51:01', '66559 Katie Court', '4 Katie Junction');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (78, '2022-12-24', '22:09:02', '65 Russell Plaza', '01 Division Way');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (79, '2022-10-13', '19:10:41', '5 Orin Road', '387 Ludington Way');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (80, '2023-01-08', '0:51:12', '4757 Karstens Pass', '9 Kim Avenue');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (81, '2022-04-10', '15:15:22', '36 Judy Street', '732 Everett Parkway');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (82, '2023-01-03', '2:20:01', '3 Lakewood Gardens Plaza', '12 Everett Park');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (83, '2022-09-09', '11:15:38', '06 Browning Parkway', '364 Northwestern Trail');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (84, '2022-06-08', '6:57:46', '013 Kenwood Crossing', '140 Iowa Point');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (85, '2022-05-23', '6:37:46', '11 Schmedeman Court', '35900 Schlimgen Terrace');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (86, '2022-03-08', '18:17:58', '071 Lakeland Crossing', '22435 Anzinger Way');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (87, '2022-03-14', '11:09:06', '13 Hovde Avenue', '7 Melvin Terrace');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (88, '2022-11-22', '2:16:38', '507 Randy Alley', '1238 Havey Drive');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (89, '2022-12-07', '14:11:45', '344 Larry Avenue', '0 Farmco Circle');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (90, '2023-01-05', '1:05:32', '690 Hoffman Drive', '23859 Sommers Point');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (91, '2022-09-13', '15:38:38', '09 Oak Street', '963 Scofield Lane');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (92, '2022-11-17', '1:10:46', '872 Orin Junction', '9944 Emmet Pass');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (93, '2022-03-05', '7:51:44', '3 Hanson Trail', '67087 Heffernan Point');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (94, '2022-02-20', '22:43:53', '2 Sachtjen Terrace', '8 Erie Plaza');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (95, '2022-04-25', '13:50:33', '41 Golf Course Center', '6 Burrows Pass');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (96, '2022-10-11', '23:05:35', '00 Moulton Way', '636 Sutherland Hill');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (97, '2022-07-22', '5:57:01', '0302 Bartelt Alley', '72 Redwing Junction');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (98, '2022-09-17', '15:01:39', '0 Utah Plaza', '3 Mccormick Road');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (99, '2022-09-05', '18:02:26', '46827 Vidon Terrace', '3 Kingsford Circle');
insert into Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION) values (100, '2022-02-28', '13:39:52', '773 Schlimgen Court', '345 Pennsylvania Court');

