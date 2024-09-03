DELIMITER //
CREATE PROCEDURE UpdateBooking(IN booking_id INT, IN new_date DATE)
BEGIN
	UPDATE Bookings
    SET BookingDate = TIMESTAMP(new_date)
	WHERE BookingID=booking_id;
	SELECT CONCAT('Booking ', booking_id, ' is updated') as Confirmation;
END //
DELIMITER ;

CALL UpdateBooking(9, '2022-12-17');
