.mode table
.print 'Who has the most class in July 2023? and how many minute that professor come to class late?'
SELECT
    Professor_Name AS 'Professor Name',
    (
        SELECT
            COUNT(ClassAttendance_Professor_Time_In)
        FROM
            ClassAttendance
        WHERE
            Professor.Professor_ID = ClassAttendance.Professor_ID
            AND ClassAttendance_Date LIKE '2023-07%'
    ) "Number of times taught",
    -- how many minute that professor come to class late?
    (
        SELECT
            SUM(
                CASE
                    WHEN TIME(ClassAttendance_Professor_Time_In) > TIME(ClassRoomSchedule.ClassRoomSchedule_StartTime) THEN (
                        CAST(
                            (
                                ROUND(
                                    (
                                        (
                                            JULIANDAY (ClassAttendance_Professor_Time_In) - JULIANDAY (ClassRoomSchedule.ClassRoomSchedule_StartTime)
                                        ) * 86400
                                    ) / 60
                                )
                            ) AS INTEGER
                        )
                    )
                    ELSE 0
                END
            )
        FROM
            ClassAttendance
            INNER JOIN ClassRoomSchedule ON ClassAttendance.ClassRoomSchedule_ID = ClassRoomSchedule.ClassRoomSchedule_ID
        WHERE
            Professor.Professor_ID = ClassAttendance.Professor_ID
            AND ClassAttendance_Date LIKE '2023-07%'
    ) 'Total Late Time (minute)'
FROM
    Professor
WHERE
    "Number of times taught" > 0
ORDER BY
    "Number of times taught" DESC;