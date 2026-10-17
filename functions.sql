DELIMITER //

CREATE FUNCTION CalculateAge(dob DATE) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE age INT;
    SET age = TIMESTAMPDIFF(YEAR, dob, CURDATE());
    RETURN age;
END //

DELIMITER ;

SELECT first_name, date_of_birth, CalculateAge(date_of_birth) AS Age FROM Students;



DELIMITER //

CREATE PROCEDURE EnrollStudent(IN p_student_id INT, IN p_course_id INT)
BEGIN
    INSERT INTO Enrollments (student_id, course_id, grade) 
    VALUES (p_student_id, p_course_id, NULL);
END //

DELIMITER ;

CALL EnrollStudent(1, 3); 

SELECT Courses.department, AVG(Enrollments.grade) AS Average_Grade
FROM Courses
JOIN Enrollments ON Courses.course_id = Enrollments.course_id
GROUP BY Courses.department;
