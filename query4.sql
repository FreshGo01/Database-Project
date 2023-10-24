.mode table
--Top 10 professors who teach the most
.print 'Top 10 Professors who teach the most'
SELECT
    Professor.Professor_ID,
    Professor.Professor_Name,
    Professor.Professor_Major,
    COUNT(*) AS Check_Count
FROM
    ClassAttendance
    INNER JOIN Professor ON ClassAttendance.Professor_ID = Professor.Professor_ID
WHERE
    ClassAttendance.Professor_Check = 1
GROUP BY
    Professor.Professor_ID,
    Professor.Professor_Name,
    Professor.Professor_Major
ORDER BY
    Check_Count DESC
LIMIT
    10;