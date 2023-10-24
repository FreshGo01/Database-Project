.mode table
--'the average percentage time of every subject that student study sort by Study Time Percentage '
.print 'the average percentage time of every subject that student study sort by Study Time Percentage '
SELECT
    s.Subject_ID,
    c.Class_ID,
    c.Section,
    ROUND(SUM(CASE WHEN sa.Student_Time_In IS NOT NULL THEN sa.Student_Time_In ELSE 0 END) * 100.0 / SUM(CASE WHEN crs.ClassRoomSchedule_StartTime IS NOT NULL THEN crs.ClassRoomSchedule_StartTime ELSE 0 END),2) AS StudyTimePercentage
FROM
    Subject s
JOIN
    ResponsibleSubject rs ON s.Subject_ID = rs.Subject_ID
JOIN
    Professor p ON rs.Professor_ID = p.Professor_ID
JOIN
    ClassRoomSchedule crs ON s.Subject_ID = crs.Subject_ID
JOIN
    Class c ON crs.Class_ID = c.Class_ID
LEFT JOIN
    ClassStudent cs ON c.Class_ID = cs.Class_ID
LEFT JOIN
    StudentAttendance sa ON cs.Student_ID = sa.Student_ID
GROUP BY
    s.Subject_ID, c.Class_ID, c.Section
ORDER BY
    StudyTimePercentage DESC;