-- Database for Iowa Central

CREATE TABLE students (
    studentID int PRIMARY KEY,
    firstName varchar(50),
    middleName varchar(50),
    lastName varchar(50),
    ssn varchar(50),
    dob DATE,
    gender char(1),
    email varchar(100),
    phone varchar(20),
    address1 varchar(100),
    city varchar(50),
    states varchar(50),
    zip varchar(20),
    country varchar(50)
);

CREATE TABLE teachers (
    teacherID int PRIMARY KEY,
    firstName varchar(50),
    lastName varchar(50),
    dob DATE,
    gender char(1),
    email varchar(100),
    phone varchar(20),
    department varchar(50)
);

CREATE TABLE faculty (
    facultyID int PRIMARY KEY,
    firstName varchar(50),
    lastName varchar(50),
    dob DATE,
    gender char(1),
    email varchar(100),
    phone varchar(20),
    department varchar(50)
);

CREATE TABLE courses (
    courseID int PRIMARY KEY,
    courseName varchar(100),
    department varchar(50),
    credits decimal(5, 2)
);

CREATE TABLE classes (
    classID int PRIMARY KEY,
    courseID int,
    teacherID int,
    classCode varchar(20),
    classDay varchar(20),
    startTime TIME,
    endTime TIME,
    roomNumber varchar(20),
    -- fk
    FOREIGN KEY (courseID) REFERENCES courses(courseID),
    FOREIGN KEY (teacherID) REFERENCES teachers(teacherID)
);

CREATE TABLE enrollment (
    enrollmentID int PRIMARY KEY,
    studentID int,
    classID int,
    grade char(1),
    --fk
    FOREIGN KEY (studentID) REFERENCES students(studentID),
    FOREIGN KEY (classID) REFERENCES classes(classID)
);

CREATE TABLE majors (
    majorID int PRIMARY KEY,
    majorName varchar(100)
);

CREATE TABLE minors (
    minorID int PRIMARY KEY,
    minorName varchar(100)
);

CREATE TABLE degrees (
    degreeID int PRIMARY KEY,
    degreeName varchar(100),
    department varchar(50)
);

CREATE TABLE semesters (
    semesterID int PRIMARY KEY,
    semesterName varchar(100),
    startDate DATE,
    endDate DATE
);

CREATE TABLE schedules (
    scheduleID int PRIMARY KEY,
    courseID int,
    classID int,
    semesterID int,
    classDays varchar(20),
    startTime TIME,
    endTime TIME,
    roomNumber varchar(20),
    -- fk
    FOREIGN KEY (courseID) REFERENCES courses(courseID),
    FOREIGN KEY (classID) REFERENCES classes(classID),
    FOREIGN KEY (semesterID) REFERENCES semesters(semesterID)
);

CREATE TABLE departments (
    departmentID int PRIMARY KEY,
    departmentName varchar(100),
    departmentChair varchar(50),
    officeLocation varchar(100)
);

CREATE TABLE grades (
    gradeID int PRIMARY KEY,
    gradeName varchar(100),
    gradePoints decimal(3, 2)
);


