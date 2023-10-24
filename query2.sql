.mode table
-- who study in master degree and miss class more than 2 times in all subjects and who is professor advisor
.print 'who study in master degree and miss class more than 2 times in all subjects and who is professor advisor'
SELECT S.Student_ID AS 'Student ID' , S.Student_Name AS 'Student Name', P.Professor_Name AS 'Advisor' , MissClass
FROM Student AS S
INNER JOIN Professor AS P ON S.Professor_ID = P.Professor_ID
INNER JOIN (
    SELECT SA.Student_ID, COUNT(*) AS MissClass
    FROM StudentAttendance AS SA
    INNER JOIN ClassAttendance AS CA ON SA.ClassAttendance_ID = CA.ClassAttendance_ID
    INNER JOIN ClassRoomSchedule AS CRS ON CA.ClassRoomSchedule_ID = CRS.ClassRoomSchedule_ID
    WHERE SA.Student_Check = 0
    GROUP BY SA.Student_ID
    HAVING COUNT(*) > 2
) AS CountMiss ON S.Student_ID = CountMiss.Student_ID
WHERE S.Student_Degree = 'Master'
AND S.Student_ID IN (
    SELECT SA.Student_ID
    FROM StudentAttendance AS SA
    INNER JOIN ClassAttendance AS CA ON SA.ClassAttendance_ID = CA.ClassAttendance_ID
    INNER JOIN ClassRoomSchedule AS CRS ON CA.ClassRoomSchedule_ID = CRS.ClassRoomSchedule_ID
    WHERE SA.Student_Check = 0
    GROUP BY SA.Student_ID
    HAVING COUNT(*) > 2
);


