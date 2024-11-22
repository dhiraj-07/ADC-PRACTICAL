/*
Q.2) Create Product table (product_id,product_name,stock_quantity).Write a program to
create a row level trigger for the product Table that would fire for update operations
performed on the product table. If stock_quantity is greater than 1000 then data will not
be update and it display error message.
*/

CREATE TABLE products (
    product_id NUMBER PRIMARY KEY,
    product_name VARCHAR2(100),
    stock_quantity NUMBER
);
CREATE OR REPLACE TRIGGER rachana_check_stock_limit
BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
    IF :new.stock_quantity > 1000 THEN
        RAISE_APPLICATION_ERROR (-20003 , ' Stock quantity cannot exceed 1,000. ');
    END IF;
END;
/
INSERT INTO products (product_id, product_name, stock_quantity) VALUES (1, 'Product A', 500);
UPDATE products
SET stock_quantity = 800
WHERE product_name = 'Product A';
UPDATE products
SET stock_quantity = 1200
WHERE product_name = 'Product A';