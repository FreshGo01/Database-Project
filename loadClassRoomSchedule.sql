-- insert data for Class table
INSERT INTO
    Class (Class_ID, Section)
VALUES
    (1, 1), --CS
    (2, 1), --AAI
    (3, 1), --IT
    (4, 1);

--SE
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
    --CS
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
        88622065,
        'IF-3C02',
        'Computor Lab',
        '15:00',
        '17:00',
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
    ),
    --AAI
    (
        89022264,
        'IF-5T04',
        'Tutoring',
        '13:00',
        '15:00',
        'Monday',
        2023,
        1,
        2
    ),
    (
        89022264,
        'IF-3C01',
        'Computor Lab',
        '15:00',
        '17:00',
        'Monday',
        2023,
        1,
        2
    ),
    (
        89022164,
        'IF-6T02',
        'Tutoring',
        '10:00',
        '12:00',
        'Tuesday',
        2023,
        1,
        2
    ),
    (
        89022164,
        'IF-4C01',
        'Computor Lab',
        '13:00',
        '15:00',
        'Tuesday',
        2023,
        1,
        2
    ),
    (
        89022364,
        'IF-6T03',
        'Tutoring',
        '10:00',
        '12:00',
        'Wednesday ',
        2023,
        1,
        2
    ),
    (
        89022364,
        'IF-3C02',
        'Computor Lab',
        '13:00',
        '15:00',
        'Wednesday',
        2023,
        1,
        2
    ),
    (
        89033064,
        'IF-6T02',
        'Tutoring',
        '13:00',
        '15:00',
        'Friday',
        2023,
        1,
        2
    ),
    (
        89033064,
        'IF-3C03',
        'Computor Lab',
        '15:00',
        '17:00',
        'Friday',
        2023,
        1,
        2
    ),
    --IT
    (
        88710265,
        'IF-5T05',
        'Tutoring',
        '9:00',
        '10:00',
        'Monday',
        2023,
        1,
        3
    ),
    (
        88710265,
        'IF-3C04',
        'Computor Lab',
        '10:00',
        '12:00',
        'Monday',
        2023,
        1,
        3
    ),
    (
        88510265,
        'IF-5T05',
        'Tutoring',
        '13:00',
        '15:00',
        'Monday',
        2023,
        1,
        3
    ),
    (
        88510265,
        'IF-3C04',
        'Computor Lab',
        '15:00',
        '17:00',
        'Monday',
        2023,
        1,
        3
    ),
    (
        88710065,
        'IF-3M210',
        'Slope meeting room',
        '13:00',
        '16:00',
        'Tuesday ',
        2023,
        1,
        3
    ),
    --SE
    (
        88823465,
        'IF-5T02',
        'Tutoring',
        '9:00',
        '12:00',
        'Monday',
        2023,
        1,
        4
    ),
    (
        88822365,
        'IF-6T03',
        'Tutoring',
        '8:00',
        '10:00',
        'Tuesday',
        2023,
        1,
        4
    ),
    (
        88520365,
        'IF-6T03',
        'Tutoring',
        '10:00',
        '12:00',
        'Tuesday',
        2023,
        1,
        4
    ),
    (
        88825165,
        'IF-4C04',
        'Computor Lab',
        '13:00',
        '15:00',
        'Tuesday',
        2023,
        1,
        4
    ),
    (
        88520365,
        'IF-5T02',
        'Tutoring',
        '10:00',
        '12:00',
        'Wednesday ',
        2023,
        1,
        4
    ),
    (
        88822365,
        'IF-3C02',
        'Computor Lab',
        '16:00',
        '18:00',
        'Wednesday',
        2023,
        1,
        4
    ),
    (
        88823565,
        'IF-5T02',
        'Tutoring',
        '15:00',
        '16:00',
        'Friday',
        2023,
        1,
        4
    );

INSERT INTO
    ClassStudent (Class_ID, Student_ID, StudentStatus)
VALUES
    --CS
    (1, 65160500, 'Registered'),
    (1, 65160501, 'Registered'),
    (1, 65160502, 'Registered'),
    (1, 65160503, 'Registered'),
    (1, 65160504, 'Registered'),
    (1, 65160505, 'Registered'),
    (1, 65160506, 'Registered'),
    (1, 65160507, 'Registered'),
    (1, 65160508, 'Registered'),
    (1, 65160509, 'Drop'),
    --AAI
    (2, 65160048, 'Registered'),
    (2, 65160049, 'Registered'),
    (2, 65160050, 'Registered'),
    (2, 65160051, 'Registered'),
    (2, 65160052, 'Registered'),
    (2, 65160053, 'Registered'),
    (2, 65160054, 'Drop'),
    (2, 65160055, 'Registered'),
    (2, 65160056, 'Registered'),
    (2, 65160057, 'Drop'),
    --IT
    (3, 65161111, 'Registered'),
    (3, 65161122, 'Registered'),
    (3, 65161133, 'Registered'),
    (3, 65161144, 'Drop'),
    (3, 65161155, 'Registered'),
    (3, 65161166, 'Drop'),
    (3, 65161177, 'Registered'),
    (3, 65161188, 'Registered'),
    (3, 65161190, 'Registered'),
    (3, 65161199, 'Drop'),
    --SE
    (4, 65160100, 'Registered'),
    (4, 65160101, 'Registered'),
    (4, 65160102, 'Registered'),
    (4, 65160103, 'Registered'),
    (4, 65160104, 'Registered'),
    (4, 65160105, 'Registered'),
    (4, 65160106, 'Drop'),
    (4, 65160107, 'Registered'),
    (4, 65160108, 'Registered'),
    (4, 65160109, 'Drop');