DELIMITER //

CREATE PROCEDURE InsertIntoOrdersTable(
    IN p_ValidFrom DATE,
    IN p_OrderAmount FLOAT
)
BEGIN
    INSERT INTO orders (ValidFrom, OrderAmount)
    VALUES (p_ValidFrom, p_OrderAmount);
END //

DELIMITER ;
