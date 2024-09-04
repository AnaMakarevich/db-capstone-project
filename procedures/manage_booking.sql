USE little_lemon_db;

DELIMITER //
CREATE PROCEDURE ManageBooking(IN booking_date DATE,
IN table_no INT, IN customer_id INT)
BEGIN
	DECLARE num_bookings INT;
    DECLARE response VARCHAR(128);
    DECLARE last_id INT;
START TRANSACTION;
	SELECT MAX(BookingID) INTO last_id FROM Bookings;

	INSERT INTO Bookings (BookingID, StaffID, CustomerID, BookingDate, TableNumber)
	VALUES (last_id+1, 1, customer_id, TIMESTAMP(booking_date), table_no);

    SELECT COUNT(1)
    INTO num_bookings
    FROM Bookings
    WHERE DATE(BookingDate) = booking_date
      AND TableNumber = table_no;
    IF num_bookings = 0 THEN
        COMMIT;
        SET response = 'Booking successful';
    ELSE
		SET response = CONCAT('Table ', table_no, ' is already booked - booking cancelled');
        ROLLBACK;
    END IF;
    SELECT response AS 'Booking Status';
END //
DELIMITER ;

CALL ManageBooking('2022-10-10', 5, 1);