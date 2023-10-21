-- insert data for Class table
INSERT INTO
    Class (Class_ID, Section)
VALUES
    (1, 1);

-- INSERT data for ClassRoomSchedule table
-- C = Computor Lab  L = Laboratory  R = Meeting  S = Self Study  T = Tutoring M = Slope meeting room
INSERT INTO
    ClassRoomSchedule (
        Subject_ID,
        ClassRoomSchedule_Room,
        ClassRoomSchedule_RoomType,
        ClassRoomSchedule_StartTime,
        ClassRoomSchedule_EndTime,
        ClassRoomSchedule_Day,
        AcademicYear,
        Semester,
        Class_ID
    )
VALUES
    (
        88634065,
        'IF-5T03',
        'Tutoring',
        '10:00',
        '12:00',
        'Monday',
        2023,
        1,
        1
    ),
    (
        88634065,
        'IF-3C01',
        'Computor Lab',
        '13:00',
        '15:00',
        'Monday',
        2023,
        1,
        1
    ),
    (
        88624065,
        'IF-7T05',
        'Tutoring',
        '15:00',
        '17:00',
        'Monday',
        2023,
        1,
        1
    ),
    (
        88624065,
        'IF-3C02',
        'Computor Lab',
        '17:00',
        '19:00',
        'Monday',
        2023,
        1,
        1
    ),
    (
        88621065,
        'IF-3M210',
        'Slope meeting room',
        '8:00',
        '10:00',
        'Tuesday',
        2023,
        1,
        1
    ),
    (
        88621065,
        'IF-3C04',
        'Computor Lab',
        '10:00',
        '12:00',
        'Tuesday',
        2023,
        1,
        1
    ),
    (
        88622065,
        'IF-7T05',
        'Tutoring',
        '13:00',
        '15:00',
        'Tuesday',
        2023,
        1,
        1
    ),
    (
        88624165,
        'IF-5T05',
        'Tutoring',
        '10:00',
        '12:00',
        'Friday',
        2023,
        1,
        1
    ),
    (
        88624165,
        'IF-3C02',
        'Computor Lab',
        '13:00',
        '15:00',
        'Friday',
        2023,
        1,
        1
    );

INSERT INTO
    ClassStudent (Class_ID, Student_ID, StudentStatus)
VALUES
    (1, 65160500, 'Registed'),
    (1, 65160501, 'Registed'),
    (1, 65160502, 'Registed'),
    (1, 65160503, 'Registed'),
    (1, 65160504, 'Registed'),
    (1, 65160505, 'Registed'),
    (1, 65160506, 'Registed'),
    (1, 65160507, 'Registed'),
    (1, 65160508, 'Registed'),
    (1, 65160509, 'Drop');