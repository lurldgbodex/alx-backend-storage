-- creates a stored procedure ComputeAverageScoreForUser
-- computes and store the average score for a student

DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser;
DELIMITER $$
CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id INT)
BEGIN
    DECLARE new_average_score FLOAT;
    SET new_average_score = (SELECT AVG(score) FROM corrections WHERE corrections.user_id=user_id);
    UPDATE users SET average_score = new_average_score WHERE users.id = user_id;
END $$
DELIMITER ;
