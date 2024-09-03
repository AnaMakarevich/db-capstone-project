DELIMITER //
CREATE PROCEDURE CheckBooking(IN booking_date DATE, IN table_no INT)
BEGIN
    DECLARE num_bookings INT;
    DECLARE response VARCHAR(128);
    SELECT COUNT(1)
    INTO num_bookings
    FROM Bookings
    WHERE DATE(BookingDate) = booking_date
      AND TableNumber = table_no;
    IF response = 0 THEN
        SET response = 'No bookings found';
    ELSE
        SET response = CONCAT('Table ', table_no, ' is already booked');
    END IF;
    SELECT response AS 'Booking Status';
END //
DELIMITER ;

