SELECT c.CustomerID,
       CONCAT(c.FirstName, ' ', c.LastName) AS FullName,
       o.OrderID,
       o.TotalCost                          as Cost,
       m.MenuName,
       mi.CourseName
FROM Customers c
         INNER JOIN Bookings b
                    ON c.CustomerID = b.CustomerID
         INNER JOIN Orders o
                    ON o.BookingID = b.BookingID
         INNER JOIN Menus m
                    ON o.MenuID = m.MenuID
         INNER JOIN MenuItems mi
                    ON mi.MenuItemID = m.MenuItemID
WHERE o.TotalCost > 150