CREATE VIEW `orders_view` AS
SELECT OrderID   AS OrderID,
       Quantity  AS Quantity,
       TotalCost AS Cost
FROM orders
WHERE Quantity > 2