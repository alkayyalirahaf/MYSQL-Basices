CREATE INDEX idx_course_code ON Courses(course_code);

EXPLAIN SELECT Students.first_name, Students.last_name 
FROM Students
JOIN Enrollments ON Students.student_id = Enrollments.student_id
WHERE Enrollments.course_id = 1;