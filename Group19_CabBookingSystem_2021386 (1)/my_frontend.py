import mysql.connector

connection = mysql.connector.connect(
    host="127.0.0.1",
    database="DBMS",
    user="root",
    password="Ankur_1234")

try:

    if connection.is_connected():
        a=1

        while a== 1:

            print("1. Embedded SQL query")
            print("2. OLAP queries")
            print("3. Triggers")
            query_type = int(input("Enter your choice (1,2, or 3): "))

            if query_type == 1:

                query_1 = "SELECT p.DATE, SUM(p.AMOUNT) AS TOTAL_REVENUE FROM Payment p GROUP BY p.DATE ORDER BY p.DATE ASC;"
                query_2 = "SELECT c.CUSTOMER_ID, CONCAT(c.FIRST_NAME, ' ', c.LAST_NAME) AS CUSTOMER_NAME, COUNT(*) AS BOOKINGS_COUNT FROM Customer c JOIN Booking b ON c.CUSTOMER_ID = b.CUSTOMER_ID GROUP BY c.CUSTOMER_ID, CUSTOMER_NAME ORDER BY BOOKINGS_COUNT DESC;"
                print("1. Calculate the total revenue generated per day")
                print("2. Calculate the total number of bookings per customer")
                user=int(input("Enter your choice (1 or 2): "))

                if user == 1:
                    mycursor = connection.cursor()
                    mycursor.execute(query_1)
                    result = mycursor.fetchall()
                    for row in result:
                        print(row)
                    print()

                elif user == 2:
                    mycursor = connection.cursor()
                    mycursor.execute(query_2)
                    result = mycursor.fetchall()
                    for row in result:
                        print(row)
                    print()
                    
                else:
                    print("Incorrect input")
                    print()

            elif query_type == 2:

                query_1 = "SELECT Driver.FIRST_NAME, COUNT(Ride.VEHICLE_PLATE_NO) AS Total_Rides FROM Driver JOIN Ride ON Driver.VEHICLE_PLATE_NO = Ride.VEHICLE_PLATE_NO WHERE Ride.DATE = '2022-07-01' GROUP BY Driver.EMAIL_ID;"
                query_2 = "SELECT VEHICLE_TYPE, count(*) as Number_of_Cancelled_Rides FROM Booking INNER JOIN Vehicle ON Booking.VEHICLE_PLATE_NO = Vehicle.VEHICLE_PLATE_NO WHERE COMPLETION_STATUS = false GROUP BY VEHICLE_TYPE;"
                query_3 = "SELECT Vehicle.VEHICLE_TYPE, SUM(Payment.AMOUNT) as Revenue FROM Payment INNER JOIN Booking ON Payment.BOOKING_ID = Booking.BOOKING_ID INNER JOIN Vehicle ON Booking.VEHICLE_PLATE_NO = Vehicle.VEHICLE_PLATE_NO GROUP BY Vehicle.VEHICLE_TYPE;"
                query_4 = "SELECT v.VEHICLE_TYPE, COUNT(*) AS No_of_Completed_Bookings FROM Booking b INNER JOIN Vehicle v ON b.VEHICLE_PLATE_NO = v.VEHICLE_PLATE_NO WHERE b.COMPLETION_STATUS = true AND b.PICKUP_LOCATION <> b.DROP_LOCATION GROUP BY v.VEHICLE_TYPE;"
                print("1. Finding the total number of rides completed by a driver on a particular date, if he completed any ride on that date.")
                print("2. Finding the number of rides cancelled by each type of vehicle")
                print("3. Finding the total revenue earned by each type of vehicle")
                print("4. Finding the total number of rides completed by each type of vehicle where pickup and drop locations are different")
                user=int(input("Enter your choice (1, 2, 3, or 4): "))

                if user == 1:
                    mycursor = connection.cursor()
                    mycursor.execute(query_1)
                    result = mycursor.fetchall()
                    for row in result:
                        print(row)
                    print()

                elif user == 2:
                    mycursor = connection.cursor()
                    mycursor.execute(query_2)
                    result = mycursor.fetchall()
                    for row in result:
                        print(row)
                    print()

                elif user == 3:
                    mycursor = connection.cursor()
                    mycursor.execute(query_3)
                    result = mycursor.fetchall()
                    for row in result:
                        print(row)
                    print()

                elif user ==4:
                    mycursor = connection.cursor()
                    mycursor.execute(query_4)
                    result = mycursor.fetchall()
                    for row in result:
                        print(row)
                    print()

                else:
                    print("Incorrect input")
                    print()

            elif query_type == 3:

                query_2 = """
                    delimiter //
                    CREATE TRIGGER prevent_delete_ride 
                    BEFORE DELETE ON Ride 
                    FOR EACH ROW 
                    BEGIN 
                    SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Not Possible'; 
                    END;//
                    """
                query_1 = """
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
                    """
                print("1. Trigger to insert into ride if a booking gets completed")
                print("2. Trigger to prevent deleting from Ride table")
                user=int(input("Enter your choice (1 or 2): "))

                if user == 1:
                    mycursor = connection.cursor()
                    mycursor.execute(query_1)
                    result = mycursor.fetchall()
                    for row in result:
                        print(row)
                    print()

                elif user == 2:
                    mycursor = connection.cursor()
                    mycursor.execute(query_2)
                    result = mycursor.fetchall()
                    for row in result:
                        print(row)
                    print()

                else:
                    print("Incorrect input")
                    print()


except:
    print("Trigger has been integrated to the database")

finally:
    if connection.is_connected():
        mycursor.close()
        connection.close()
        print("MySQL connection is closed")