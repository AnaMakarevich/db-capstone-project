USE little_lemon_db;

INSERT INTO MenuItems (MenuItemID, CourseName, StarterName, DesertName, DrinkName)
VALUES
(1, 'Greek salad', 'Olives', 'Greek Yoghurt', 'Athens White wine'),
(2, 'Pizza', 'Minestrone', 'Cheesecake', 'Turkish Coffee'),
(3, 'Kabasa', 'Falafel', 'Ice cream', 'Turkish Coffee');

INSERT INTO Menus (MenuID, MenuName, MenuItemID,Cuisine)
VALUES
(1, 'Zeus Unchained', 1, 'Greek'),
(2, 'Requiescat in Pace', 2, 'Italian'),
(3, 'Yusuf Dikec', 3, 'Turkish');


INSERT INTO Staff (StaffID, Name, Role, Address, Contact_Number, Email, Salary) VALUES
(01,'Mario Gollini','Manager','724, Parsley Lane, Old Town, Chicago, IL',351258074,'Mario.g@littlelemon.com',70000),
(02,'Adrian Gollini','Assistant Manager','334, Dill Square, Lincoln Park, Chicago, IL',351474048,'Adrian.g@littlelemon.com',65000),
(03,'Giorgos Dioudis','Head Chef','879 Sage Street, West Loop, Chicago, IL',351970582,'Giorgos.d@littlelemon.com',50000),
(04,'Fatma Kaya','Assistant Chef','132  Bay Lane, Chicago, IL',351963569,'Fatma.k@littlelemon.com',45000),
(05,'Elena Salvai','Head Waiter','989 Thyme Square, EdgeWater, Chicago, IL',351074198,'Elena.s@littlelemon.com',40000),
(06,'John Millar','Receptionist','245 Dill Square, Lincoln Park, Chicago, IL',351584508,'John.m@littlelemon.com',35000);


INSERT INTO Customers (CustomerID, FirstName, LastName, Email)
VALUES
(1, 'Anna','Iversen', 'anna.iversen@gmail.com'),
(2, 'Joakim', 'Iversen', 'joakim.iversen@gmail.com'),
(3, 'Vanessa', 'McCarthy', 'vannessa@mccarthies_shop.com'),
(4, 'Marcos', 'Romero', 'marcos.in.boots@gmail.com'),
(5, 'Hiroki', 'Yamane', 'hiroki.yamane@deathnote.jp'),
(6, 'Diana', 'Pinto', 'diana.pinto@halfpint.co.uk');


INSERT INTO Bookings (BookingID, StaffID, CustomerID, BookingDate, TableNumber)
VALUES
(1, 1, 1, '2024-09-01 19:00:00',12),
(2, 1, 2, '2024-09-01 19:00:00', 12),
(3, 3, 3, '2024-09-01 15:00:00', 19),
(4, 4, 4, '2024-09-01 17:30:00', 15),
(5, 2, 5, '2024-09-01 18:30:00', 5),
(6, 5, 6, '2024-09-01 20:00:00', 8);


INSERT INTO Delivery (DeliveryID, DeliveryDate, Status) 
VALUES 
(1, '2024-09-01 19:31', 'Delivered'),
(2, '2024-09-01 20:13', 'In Progress'),
(3, '2024-09-01 20:18', 'Delivered'),
(4, '2024-09-01 21:11', 'Pending'),
(5, '2024-09-01 21:18', 'Delivered');


INSERT INTO Orders (OrderID, DeliveryID, BookingID, MenuID, OrderDate, Quantity, TotalCost)
VALUES 
(1, 1, 1, 1, '2024-09-01 19:25', 2, 86),
(2, 2, 2, 2, '2024-09-01 20:01', 3, 200),
(3, 3, 3, 2, '2024-09-01 20:05', 1, 37),
(4, 4, 4, 3, '2024-09-01 20:55', 3, 230),
(5, 5, 5, 1, '2024-09-01 21:03', 1, 43);

