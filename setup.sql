-- sqlite3 CREATE TABLE for check student attendance and professor attendance
PRAGMA foreign_keys = ON;

PRAGMA encoding = "UTF-8";

-- delete table if exists
DROP TABLE IF EXISTS Subject;

DROP TABLE IF EXISTS Professor;

DROP TABLE IF EXISTS Student;

DROP TABLE IF EXISTS ClassRoomSchedule;

DROP TABLE IF EXISTS ClassAttendance;

DROP TABLE IF EXISTS StudentAttendance;

DROP TABLE IF EXISTS Employee;

DROP TABLE IF EXISTS WorkerAttendance;

DROP TABLE IF EXISTS WorkAttendance;

DROP TABLE IF EXISTS Class;

DROP TABLE IF EXISTS ClassStudent;

DROP TABLE IF EXISTS ProfessorEmail;

DROP TABLE IF EXISTS ProfessorPhone;

DROP TABLE IF EXISTS StudentEmail;

DROP TABLE IF EXISTS StudentPhone;

DROP TABLE IF EXISTS EmployeeEmail;

DROP TABLE IF EXISTS EmployeePhone;

DROP TABLE IF EXISTS EmployeeResponsibility;

DROP TABLE IF EXISTS ResponsibleSubject;


BEGIN TRANSACTION;

-- create subject table
CREATE TABLE
    Subject (
        Subject_ID TEXT PRIMARY KEY NOT NULL CHECK (LENGTH (Subject_ID) = 8),
        Subject_Name TEXT NOT NULL,
        Subject_Description TEXT NULL,
        Subject_Major TEXT NULL,
        Subject_Unit INTEGER NOT NULL CHECK (Subject_Unit > 0)
    );

-- create middle table ResponsibleSubject
CREATE TABLE
    ResponsibleSubject (
        ResponsibleSubject_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        Professor_ID INTEGER NOT NULL,
        Subject_ID INTEGER NOT NULL,
        FOREIGN KEY (Professor_ID) REFERENCES Professor (Professor_ID) ON UPDATE CASCADE ON DELETE CASCADE,
        FOREIGN KEY (Subject_ID) REFERENCES Subject (Subject_ID) ON UPDATE CASCADE ON DELETE CASCADE
    );

-- create professor table
CREATE TABLE
    Professor (
        Professor_ID INTEGER PRIMARY KEY NOT NULL,
        Professor_Major TEXT NOT NULL,
        Firstname TEXT NOT NULL,
        Lastname TEXT NOT NULL,
        Professor_Name TEXT GENERATED ALWAYS AS (Firstname || ' ' || Lastname) VIRTUAL,
        Professor_Address TEXT NULL,
        Professor_Birthday TEXT NOT NULL, -- YYYY-MM-DD
        Professor_Gender TEXT NOT NULL CHECK (
            Professor_Gender = 'Male'
            OR Professor_Gender = 'Female'
        ),
        Professor_Age INTEGER NOT NULL CHECK (Professor_Age > 0),
        Professor_Salary REAL NOT NULL CHECK (Professor_Salary > 0) DEFAULT 0.0
    );

-- create professor email table
CREATE TABLE
    ProfessorEmail (
        ProfessorEmail_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        Professor_Email TEXT NOT NULL,
        Professor_ID INTEGER NOT NULL,
        FOREIGN KEY (Professor_ID) REFERENCES Professor (Professor_ID) ON UPDATE CASCADE ON DELETE CASCADE
    );

-- create professor phone table
CREATE TABLE
    ProfessorPhone (
        ProfessorPhone_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        Professor_Phone TEXT NOT NULL,
        Professor_ID INTEGER NOT NULL,
        FOREIGN KEY (Professor_ID) REFERENCES Professor (Professor_ID) ON UPDATE CASCADE ON DELETE CASCADE
    );

-- create student table
CREATE TABLE
    Student (
        Student_ID INTEGER PRIMARY KEY NOT NULL CHECK (LENGTH (Student_ID) = 8),
        Student_Major TEXT NOT NULL,
        Student_Degree TEXT NOT NULL,
        -- Student_Year INTEGER NOT NULL,
        Firstname TEXT NOT NULL,
        Lastname TEXT NOT NULL,
        Student_Name TEXT GENERATED ALWAYS AS (Firstname || ' ' || Lastname) VIRTUAL,
        Student_Address TEXT NULL,
        Student_Birthday TEXT NOT NULL, -- YYYY-MM-DD
        Student_Gender TEXT NOT NULL CHECK (
            Student_Gender = 'Male'
            OR Student_Gender = 'Female'
        ),
        Student_Age INTEGER NOT NULL CHECK (Student_Age > 0),
        Professor_ID INTEGER NULL,
            FOREIGN KEY (Professor_ID) REFERENCES Professor (Professor_ID) ON UPDATE CASCADE ON DELETE SET NULL
    );

-- create student email table
CREATE TABLE
    StudentEmail (
        StudentEmail_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        Student_Email TEXT NOT NULL,
        Student_ID INTEGER NOT NULL,
        FOREIGN KEY (Student_ID) REFERENCES Student (Student_ID) ON UPDATE CASCADE ON DELETE CASCADE
    );

-- create trigger for auto generate student email
CREATE TRIGGER StudentEmail_AutoGenerate AFTER INSERT ON Student BEGIN
INSERT INTO
    StudentEmail (Student_Email, Student_ID)
VALUES
    (NEW.Student_ID || '@go.buu.ac.th', NEW.Student_ID);

INSERT INTO
    StudentEmail (Student_Email, Student_ID)
VALUES
    (NEW.Student_ID || '@my.buu.ac.th', NEW.Student_ID);

END;

-- create student phone table
CREATE TABLE
    StudentPhone (
        StudentPhone_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        Student_Phone TEXT NOT NULL,
        Student_ID INTEGER NOT NULL,
        FOREIGN KEY (Student_ID) REFERENCES Student (Student_ID) ON UPDATE CASCADE ON DELETE CASCADE
    );

-- create class room schedule table
CREATE TABLE
    ClassRoomSchedule (
        ClassRoomSchedule_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        ClassRoomSchedule_RoomName TEXT NOT NULL, -- example 'IF-6T02'
        ClassRoomSchedule_RoomType TEXT NULL,
        ClassRoomSchedule_StartTime TEXT NOT NULL, -- example '08:00'
        ClassRoomSchedule_EndTime TEXT NOT NULL, -- example '10:00'
        ClassRoomSchedule_Time TEXT GENERATED ALWAYS AS (
            ClassRoomSchedule_StartTime || '-' || ClassRoomSchedule_EndTime
        ) VIRTUAL,
        ClassRoomSchedule_Day TEXT NOT NULL, -- example 'Monday'
        AcademicYear INTEGER NOT NULL, -- example '2021'
        Semester TEXT NOT NULL, -- example '1'
        Class_ID INTEGER NOT NULL,
        Subject_ID INTEGER NOT NULL,
        FOREIGN KEY (Class_ID) REFERENCES Class (Class_ID) ON UPDATE CASCADE ON DELETE CASCADE,
        FOREIGN KEY (Subject_ID) REFERENCES Subject (Subject_ID) ON UPDATE CASCADE ON DELETE CASCADE
    );

-- create Class table to store student is register to class
CREATE TABLE
    Class (Class_ID INTEGER PRIMARY KEY NOT NULL,
            Section INTEGER NOT NULL);

-- create ClassStudent table to store student is register to class
CREATE TABLE
    ClassStudent (
        ClassStudent_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        StudentStatus TEXT NOT NULL CHECK (
            StudentStatus = 'Registered'
            OR StudentStatus = 'Wait'
            OR StudentStatus = 'Drop'
        ),
        Student_ID INTEGER NOT NULL,
        Class_ID INTEGER NOT NULL,
        FOREIGN KEY (Student_ID) REFERENCES Student (Student_ID) ON UPDATE CASCADE ON DELETE CASCADE,
        FOREIGN KEY (Class_ID) REFERENCES Class (Class_ID) ON UPDATE CASCADE ON DELETE CASCADE
    );

-- create class attendance table
CREATE TABLE
    ClassAttendance (
        ClassAttendance_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        ClassAttendance_Date TEXT NOT NULL, -- example '2021-09-14'
        ClassAttendance_Professor_Time_In TEXT NULL, -- example '08:00'
        Professor_Check INTEGER NOT NULL CHECK (
            Professor_Check = 1
            OR Professor_Check = 0
        ), -- 0 = not check, 1 = check
        ClassRoomSchedule_ID INTEGER NOT NULL,
        Professor_ID INTEGER NULL,
        FOREIGN KEY (ClassRoomSchedule_ID) REFERENCES ClassRoomSchedule (ClassRoomSchedule_ID) ON UPDATE CASCADE ON DELETE CASCADE,
        FOREIGN KEY (Professor_ID) REFERENCES Professor (Professor_ID) ON UPDATE CASCADE ON DELETE SET NULL
    );

-- create student attendance table
CREATE TABLE
    StudentAttendance (
        Student_Attendance_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        ClassAttendance_ID INTEGER NOT NULL,
        Student_ID INTEGER NOT NULL,
        Student_Time_In TEXT NULL, -- example '08:00'
        Student_Check INTEGER NOT NULL CHECK (
            Student_Check = 1
            OR Student_Check = 0
        ), -- 0 = not check, 1 = check
        FOREIGN KEY (ClassAttendance_ID) REFERENCES ClassAttendance (ClassAttendance_ID) ON DELETE CASCADE ON UPDATE CASCADE ON DELETE CASCADE,
        FOREIGN KEY (Student_ID) REFERENCES Student (Student_ID) ON DELETE CASCADE ON UPDATE CASCADE
    );

-- create employee table
CREATE TABLE
    Employee (
        Employee_ID INTEGER PRIMARY KEY NOT NULL,
        Firstname TEXT NOT NULL,
        Lastname TEXT NOT NULL,
        Employee_Name TEXT GENERATED ALWAYS AS (Firstname || ' ' || Lastname) VIRTUAL,
        Employee_Address TEXT NULL,
        Employee_Birthday TEXT NOT NULL, -- YYYY-MM-DD
        Employee_Age INTEGER NOT NULL CHECK (Employee_Age > 0),
        Employee_Gender TEXT NOT NULL CHECK (
            Employee_Gender = 'Male'
            OR Employee_Gender = 'Female'
        ),
        Employee_PositionName TEXT NOT NULL,
        Employee_Salary REAL NOT NULL CHECK (Employee_Salary > 0) DEFAULT 0.0
    );

-- create employee email table
CREATE TABLE
    EmployeeEmail (
        EmployeeEmail_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        Employee_Email TEXT NOT NULL,
        Employee_ID INTEGER NOT NULL,
        FOREIGN KEY (Employee_ID) REFERENCES Employee (Employee_ID) ON UPDATE CASCADE ON DELETE CASCADE
    );

-- create employee phone table
CREATE TABLE
    EmployeePhone (
        EmployeePhone_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        Employee_Phone TEXT NOT NULL CHECK (LENGTH (Employee_Phone) = 10),
        Employee_ID INTEGER NOT NULL,
        FOREIGN KEY (Employee_ID) REFERENCES Employee (Employee_ID) ON UPDATE CASCADE ON DELETE CASCADE
    );

-- create employee responsibility table
CREATE TABLE
    EmployeeResponsibility (
        EmployeeResponsibility_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        Employee_Responsibility TEXT NOT NULL,
        Employee_ID INTEGER NOT NULL,
        FOREIGN KEY (Employee_ID) REFERENCES Employee (Employee_ID) ON UPDATE CASCADE ON DELETE CASCADE
    );

-- create employee attendance table
CREATE TABLE
    WorkAttendance (
        WorkerAttendance_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        WorkerAttendance_Date TEXT NOT NULL, -- example '2021-09-14'
        Employee_ID INTEGER NULL,
        Professor_ID INTEGER NULL,
        WorkAttendance_time_in TEXT NULL, -- example '08:00'
        WorkerAttendance_check_in INTEGER NOT NULL CHECK (
            WorkerAttendance_check_in = 0
            OR WorkerAttendance_check_in = 1
        ), -- 0 = not check, 1 = check
        WorkAttendance_time_out TEXT NULL, -- example '10:00'
        WorkerAttendance_check_out INTEGER NOT NULL CHECK (
            WorkerAttendance_check_out = 0
            OR WorkerAttendance_check_out = 1
        ), -- 0 = not check, 1 = check
        FOREIGN KEY (Employee_ID) REFERENCES Employee (Employee_ID) ON UPDATE CASCADE ON DELETE CASCADE,
        FOREIGN KEY (Professor_ID) REFERENCES Professor (Professor_ID) ON UPDATE CASCADE ON DELETE CASCADE
    );

COMMIT TRANSACTION;

BEGIN TRANSACTION;
.read loadProfessor.sql
.read loadStudent.sql
.read loadSubject.sql
.read loadEmployee.sql
.read addWorkAtt.sql
.read loadClassRoomSchedule.sql
.read addClassAtt.sql
.read addStudentAtt.sql
COMMIT TRANSACTION;