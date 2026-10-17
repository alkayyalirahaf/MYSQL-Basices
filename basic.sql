SELECT * FROM students ;

SELECT count(*) AS Total_Courses FROM courses;

SELECT students.first_name, students.last_name
FROM students 
JOIN enrollments on students.student_id = enrollments.student_id
WHERE enrollments.course_id=1;

SELECT email FROM instructors WHERE department='Computer Science';
