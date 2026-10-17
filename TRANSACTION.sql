DELIMITER //

CREATE PROCEDURE EnrollIfCapacity(
    IN p_student_id INT, 
    IN p_course_id INT, 
    IN p_max_capacity INT
)
BEGIN
    DECLARE current_capacity INT;
    
    SELECT COUNT(*) INTO current_capacity 
    FROM Enrollments 
    WHERE course_id = p_course_id;
    
    START TRANSACTION;
    
    IF current_capacity < p_max_capacity THEN
        INSERT INTO Enrollments (student_id, course_id, grade) 
        VALUES (p_student_id, p_course_id, NULL);
        
        COMMIT;
    ELSE
        ROLLBACK;
    END IF;
    
END //

DELIMITER ;