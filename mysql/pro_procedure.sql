/*
@author: magician
@file: pro_procedure.sql
@date: 2019/11/26
*/

DROP PROCEDURE IF EXISTS productpricing;

-- DELIMITER //
--
-- CREATE PROCEDURE productpricing()
-- BEGIN
--     SELECT AVG(prod_price) AS priceaverage
--     FROM products;
-- END //
--
-- DELIMITER ;

-- CALL productpricing();

DELIMITER //

CREATE PROCEDURE productpricing(
    OUT pl DECIMAL (8,2),
    OUT ph DECIMAL (8,2),
    OUT pa DECIMAL (8,2)
)
BEGIN
    SELECT MIN(prod_price)
    INTO pl
    FROM products;
    SELECT MAX(prod_price)
    INTO ph
    FROM products;
    SELECT AVG(prod_price)
    INTO pa
    FROM products;
END //

DELIMITER ;

CALL productpricing(@pricelow,
                    @pricehigh,
                    @priceaverage);

SELECT @pricehigh, @pricelow, @priceaverage;
