DELIMITER //
CREATE PROCEDURE InsertIntoProductsTable(
 IN p_ProductName VARCHAR(100),
 IN p_ProductPrice FLOAT
)
BEGIN
  INSERT INTO products (ProductName, ProductPrice) 
  VALUES (p_ProductName, p_ProductPrice);
END //

DELIMITER ;
