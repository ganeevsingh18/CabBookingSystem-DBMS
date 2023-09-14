/* OLAP QUERIES */

/*Finding the total number of rides completed by a driver on a particular date, if he completed any ride on that date.*/
SELECT 
    Driver.FIRST_NAME, 
    COUNT(Ride.VEHICLE_PLATE_NO) AS Total_Rides
FROM 
    Driver JOIN Ride ON Driver.VEHICLE_PLATE_NO = Ride.VEHICLE_PLATE_NO
WHERE 
    Ride.DATE = '2022-07-01'
GROUP BY 
    Driver.EMAIL_ID;

/* Finding the number of rides cancelled by each type of vehice*/
SELECT 
	VEHICLE_TYPE,
	count(*) as Number_of_Cancelled_Rides
FROM 
	Booking
INNER JOIN 
	Vehicle ON Booking.VEHICLE_PLATE_NO = Vehicle.VEHICLE_PLATE_NO
WHERE 
	COMPLETION_STATUS = false
GROUP BY 
	VEHICLE_TYPE;

/* Finding the total revenue earned by each type of vehicle */
SELECT 
	Vehicle.VEHICLE_TYPE, 
	SUM(Payment.AMOUNT) as Revenue
FROM 
	Payment 
INNER JOIN 
	Booking ON Payment.BOOKING_ID = Booking.BOOKING_ID
INNER JOIN 
	Vehicle ON Booking.VEHICLE_PLATE_NO = Vehicle.VEHICLE_PLATE_NO
GROUP BY 
	Vehicle.VEHICLE_TYPE;

/* Finding the total number of rides completed by each type of vehicle where pickup and drop locations are different*/
SELECT 
	v.VEHICLE_TYPE, 
	COUNT(*) AS No_of_Completed_Bookings
FROM 
	Booking b
INNER JOIN 
	Vehicle v ON b.VEHICLE_PLATE_NO = v.VEHICLE_PLATE_NO
WHERE 
	b.COMPLETION_STATUS = true
	AND 
	b.PICKUP_LOCATION <> b.DROP_LOCATION
GROUP BY 
	v.VEHICLE_TYPE;


/* TRIGGERS */

/* Trigger 1: Trigger to insert into ride if a booking gets completed */
delimiter //
CREATE TRIGGER after_update_booking_completion_status
AFTER UPDATE ON Booking
FOR EACH ROW
BEGIN
    IF NEW.COMPLETION_STATUS = true THEN
        INSERT INTO Ride (VEHICLE_PLATE_NO, DATE, TIME, PICKUP_LOCATION, DROP_LOCATION)
        VALUES (NEW.VEHICLE_PLATE_NO, CURDATE(), CURTIME(), NEW.PICKUP_LOCATION, NEW.DROP_LOCATION);
    END IF;
END;//

update Booking set COMPLETION_STATUS =true where BOOKING_ID=31;
    
/* Trigger 2: Trigger to prevent deleting from Ride table*/
delimiter //
CREATE TRIGGER prevent_delete_ride
BEFORE DELETE ON Ride
FOR EACH ROW
BEGIN
    SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Not Possible';
END;//

delete from Ride where VEHICLE_PLATE_NO = 10;