SELECT Courses.course_name, COUNT(Enrollments.student_id) AS Total_Students
FROM Courses
LEFT JOIN Enrollments ON Courses.course_id = Enrollments.course_id
GROUP BY Courses.course_id, Courses.course_name;

SELECT DISTINCT Students.first_name, Students.last_name
FROM Students
JOIN Enrollments ON Students.student_id = Enrollments.student_id
WHERE Enrollments.grade >= 90;

SELECT Courses.course_name, Instructors.first_name, Instructors.last_name
FROM Course_Assignments
JOIN Courses ON Course_Assignments.course_id = Courses.course_id
JOIN Instructors ON Course_Assignments.instructor_id = Instructors.instructor_id
WHERE Course_Assignments.semester = 'Fall' 
AND Course_Assignments.year = 2024;

SELECT Courses.course_name, AVG(Enrollments.grade) AS Average_Grade
FROM Courses
JOIN Enrollments ON Courses.course_id = Enrollments.course_id
WHERE Courses.course_id = 1

