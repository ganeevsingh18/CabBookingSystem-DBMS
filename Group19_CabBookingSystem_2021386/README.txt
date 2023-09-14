In this Cab Booking System, we have saved/ maintained the data
of customer, driver, vehicle, payment, rides, and bookings. In
the customer, we have assigned a unique (primary key) customer
id to each customer. It also has customer's email id, password,
name, and phone number. In the driverentity, we have associated
each driver to a unique vehicle plate number (which is primary 
key of vehicle) to each driver. Driver also has an email id, 
password, name and phone number. Similarly, vehicle has a unique
vehicle plate no. (primary key), model of the vehicle, vehicle
type, company and year of manufacture. In the same way, booking
also has a booking id (primary key), vehcile plate no. (foreign 
key), customer id (foreign key), ride otp, location (pickup and
drop) completion status, and feedback. Payment entity has a 
unique payment id (which is primary key), payment amount, 
booking id (foreign key), date and time, customer id (foreign 
key), and various payment methods (cash, card, upi, or wallet).
Each ride is associated to a unique vehicle plate no. (foreign
key), has a data and time and a pickup and drop location.