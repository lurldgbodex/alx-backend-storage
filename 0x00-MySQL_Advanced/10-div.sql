-- creates a function SafeDiv that divides the first by second number
-- and returns result or 0 if second number is zero

DELIMITER $$
CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
    IF (b = 0)
        THEN
            RETURN (0);
        ELSE
            RETURN (a / b);
    END IF;
END $$
DELIMITER;
