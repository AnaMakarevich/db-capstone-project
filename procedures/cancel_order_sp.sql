DELIMITER //
CREATE PROCEDURE CancelOrder(IN order_id INT)
BEGIN
    DELETE FROM Orders WHERE OrderID=5;
    SELECT CONCAT('Order ', order_id, ' is cancelled') AS Confirmation;
END //
DELIMITER ;

CALL CancelOrder(5);