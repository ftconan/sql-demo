/*
@author: magician
@file: order_procedure.sql
@date: 2019/11/26
*/

DROP PROCEDURE IF EXISTS ordertotal;

-- Name: ordertotal
-- Parameters: onumber = order number
--             taxable = 0 if not taxable, 1 if taxable
--             ototal = order total variable

DELIMITER //

CREATE PROCEDURE ordertotal(
    IN onumber INT,
    IN taxable BOOLEAN,
    OUT ototal DECIMAL(8,2)
) COMMENT 'Obtain order total, optionally adding tax'

BEGIN
    -- Declare variable for total
    DECLARE total DECIMAL(8,2);
    -- Declare tax percentage
    DECLARE taxrate INT DEFAULT 6;

    -- Get the order total
    SELECT SUM(item_price*quantity)
    FROM orderitems
    WHERE order_num = onumber
    INTO total;

    -- Is this taxable?
    IF taxable THEN
        -- Yes, so add taxrate to the total
        SELECT total + (total / 100 * taxrate) INTO total;
    END IF;

    -- And finally, save to out variable
    SELECT total INTO ototal;
END //

DELIMITER ;

SHOW CREATE PROCEDURE ordertotal;

SHOW PROCEDURE STATUS LIKE 'ordertotal';

CALL ordertotal(20005, 0, @total);
SELECT @total;

CALL ordertotal(20005, 1, @total);
SELECT @total;
