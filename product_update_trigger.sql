-- Before update trigger
DELIMITER //
CREATE TRIGGER product_price_update
BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
  IF NEW.ProductPrice =100.00 THEN
  SET NEW.ProductPrice = 150.99;
  ELSEIF NEW.ProductPrice < 50.00 THEN
  SET NEW.ProductPrice = 200.99;
  END IF;
  
END //


DELIMITER ;
