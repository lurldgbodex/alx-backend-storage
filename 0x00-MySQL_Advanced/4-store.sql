-- creates a trigger that decreases the quantity of an item,
-- after adding a new order.
-- quantity in the table items can be negative

DELIMITER $$
CREATE TRIGGER quantity_trigger 
AFTER INSERT ON orders
    FOR EACH ROW BEGIN
        UPDATE items 
        SET quantity = quantity - NEW.NUMBER 
        WHERE name = NEW.item_name;
    END $$
DELIMITER ;
