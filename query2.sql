.mode table
.print 'Class Schedule of Student ID 65160502'
-- SELECT ClassStudent.Student_ID,ClassStudent.Class_ID,  FROM ClassStudent 
-- WHERE Student_ID = '65160502';

SELECT DISTINCT
    ClassRoomSchedule.ClassRoomSchedule_Time AS 'TIME',
    Subject.Subject_ID AS 'SUBJECT ID',
    --ClassStudent.Student_ID,
    Subject.Subject_Name AS 'SUBJJECT NAME',
    --ClassRoomSchedule.Semester,
    Professor.Professor_Name AS 'PROFESSOR'
FROM
    Class
INNER JOIN ClassRoomSchedule ON Class.Class_ID = ClassRoomSchedule.Class_ID
INNER JOIN ClassStudent ON ClassStudent.Class_ID = Class.Class_ID
INNER JOIN Subject ON Subject.Subject_ID = ClassRoomSchedule.Subject_ID
INNER JOIN ClassAttendance ON ClassAttendance.ClassRoomSchedule_ID = ClassRoomSchedule.ClassRoomSchedule_ID
INNER JOIN Professor ON Professor.Professor_ID = ClassAttendance.Professor_ID
WHERE ClassStudent.Student_ID = 65160502 AND ClassRoomSchedule.Semester = '1' AND ClassRoomSchedule.AcademicYear = '2023';
