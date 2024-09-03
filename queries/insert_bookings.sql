INSERT INTO Bookings 
(BookingID, StaffID, CustomerID, BookingDate, TableNumber)
VALUES 
(7, 1, 1, '2022-10-10', 5),
(8, 1, 3, '2022-11-12', 3),
(9, 1, 2, '2022-10-11', 2),
(10, 1, 1, '2022-10-13', 2);


SELECT *
FROM Bookings
WHERE BookingID IN (7,8,9,10);