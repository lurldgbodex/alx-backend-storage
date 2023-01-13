-- creates a stored procedure ComputeAverageWeightedScoreForUser
-- that computes and store the average weighted score for a stud

DELIMITER $$
CREATE PROCEDURE ComputeAverageWeightedScoreForUser(IN user_id INT)
BEGIN
    DECLARE average_weight_score FLOAT;
    SET average_weight_score = (SELECT SUM(score * weight) / SUM(weight) FROM users 
        JOIN corrections ON users.id=corrections.user_id 
        JOIN projects ON corrections.project_id=projects.id 
        WHERE users.id= user_id);
    UPDATE users SET average_score = average_weight_score WHERE users.id=user_id;
END $$
DELIMITER ;
