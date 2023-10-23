.mode table
-- select subject id and who drop this subject
SELECT Class.Class_ID, Subject.Subject_ID, ClassStudent.Student_ID , ClassStudent.StudentStatus FROM Subject 
    INNER JOIN ClassRoomSchedule ON Subject.Subject_ID = ClassRoomSchedule.Subject_ID
    INNER JOIN Class ON ClassRoomSchedule.Class_ID = Class.Class_ID
    INNER JOIN ClassStudent ON Class.Class_ID = ClassStudent.Class_ID
        WHERE ClassStudent.StudentStatus = 'Drop';
