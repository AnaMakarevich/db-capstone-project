DELIMITER //
CREATE PROCEDURE AddBooking(IN booking_id INT, 
IN customer_id INT, IN table_no INT, IN booking_date DATE)
BEGIN     
	INSERT INTO Bookings (BookingID, StaffID, CustomerID, BookingDate, TableNumber)
	VALUES (booking_id, 1, customer_id, TIMESTAMP(booking_date), table_no);
	SELECT 'New booking added' AS Confirmation;    
END //
DELIMITER ;

CALL AddBooking(11, 3, 4, '2022-12-30');