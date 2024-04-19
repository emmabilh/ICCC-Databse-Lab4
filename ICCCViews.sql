--run each seperately to avoid error
--student information 
CREATE VIEW student_info AS
SELECT studentID, firstName, lastName, dob, email
FROM students;
GO

--view teacher information
CREATE VIEW teacher_info AS
SELECT teacherID, firstName, lastName, department
FROM teachers;
GO

-- view a courses details (ID, name, credit amount)
CREATE VIEW course_details AS
SELECT courseID, courseName, credits
FROM courses;
GO

--view a class schedule
CREATE VIEW class_schedule AS
SELECT classes.classID, courseName, classDay, startTime, endTime, roomNumber
FROM classes
JOIN courses ON classes.courseID = courses.courseID;
GO

--view student enrollment
CREATE VIEW enrollment_info AS
SELECT enrollmentID, studentID, classID, grade
FROM enrollment;
GO