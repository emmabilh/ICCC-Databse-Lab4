--add constraints for tables 
ALTER TABLE courses
ADD CONSTRAINT pk_courses PRIMARY KEY (courseID);

ALTER TABLE classes
ADD CONSTRAINT fk_teacherID FOREIGN KEY (teacherID) REFERENCES teachers(teacherID);

ALTER TABLE enrollment
ADD CONSTRAINT fk_studentID FOREIGN KEY (studentID) REFERENCES students(studentID);

ALTER TABLE schedules
ADD CONSTRAINT fk_ScheduleCourseID FOREIGN KEY (courseID) REFERENCES courses(courseID);


