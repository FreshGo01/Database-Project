-- insert data for Class table
INSERT INTO
    Class (Class_ID, Section)
VALUES
    (1, 1), --CS
    (2, 1),
    (3, 1),
    (4, 1),
    (5, 1),
    (6, 1), --AI
    (7, 1),
    (8, 1),
    (9, 1),
    (10, 1), --IT
    (11, 1),
    (12, 1),
    (13, 1), --SE
    (14, 1),
    (15, 1),
    (16, 1),
    (17, 1),
    (18, 1),
    -- master degree
    (19, 1);

-- INSERT data for ClassRoomSchedule table
-- C = Computor Lab  L = Laboratory  R = Meeting  S = Self Study  T = Tutoring M = Slope meeting room
INSERT INTO
    ClassRoomSchedule (
        Subject_ID,
        ClassRoomSchedule_RoomName,
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
        2
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
        2
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
        3
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
        3
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
        4
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
        4
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
        5
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
        5
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
        6
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
        6
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
        7
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
        7
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
        8
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
        8
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
        9
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
        9
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
        10
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
        10
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
        11
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
        11
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
        12
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
        13
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
        14
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
        15
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
        16
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
        15
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
        17
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
        18
    ),
    -- master degree 
    (
        88959162,
        'IF-10M01',
        'Meeting',
        '8:00',
        '12:00',
        'Monday',
        2023,
        1,
        19
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
    (2, 65160500, 'Registered'),
    (2, 65160501, 'Drop'),
    (2, 65160502, 'Registered'),
    (2, 65160503, 'Registered'),
    (2, 65160504, 'Registered'),
    (2, 65160505, 'Registered'),
    (2, 65160506, 'Registered'),
    (2, 65160507, 'Registered'),
    (2, 65160508, 'Registered'),
    (2, 65160509, 'Registered'),
    (3, 65160500, 'Registered'),
    (3, 65160501, 'Registered'),
    (3, 65160502, 'Registered'),
    (3, 65160503, 'Registered'),
    (3, 65160504, 'Registered'),
    (3, 65160505, 'Registered'),
    (3, 65160506, 'Registered'),
    (3, 65160507, 'Registered'),
    (3, 65160508, 'Registered'),
    (3, 65160509, 'Drop'),
    (4, 65160500, 'Registered'),
    (4, 65160501, 'Registered'),
    (4, 65160502, 'Registered'),
    (4, 65160503, 'Registered'),
    (4, 65160504, 'Registered'),
    (4, 65160505, 'Registered'),
    (4, 65160506, 'Registered'),
    (4, 65160507, 'Registered'),
    (4, 65160508, 'Registered'),
    (4, 65160509, 'Registered'),
    (5, 65160500, 'Registered'),
    (5, 65160501, 'Registered'),
    (5, 65160502, 'Registered'),
    (5, 65160503, 'Registered'),
    (5, 65160504, 'Registered'),
    (5, 65160505, 'Registered'),
    (5, 65160506, 'Registered'),
    (5, 65160507, 'Registered'),
    (5, 65160508, 'Registered'),
    (5, 65160509, 'Drop'),
    --AAI
    (6, 65160048, 'Registered'),
    (6, 65160049, 'Registered'),
    (6, 65160050, 'Registered'),
    (6, 65160051, 'Registered'),
    (6, 65160052, 'Registered'),
    (6, 65160053, 'Registered'),
    (6, 65160054, 'Drop'),
    (6, 65160055, 'Registered'),
    (6, 65160056, 'Registered'),
    (6, 65160057, 'Registered'),
    (7, 65160048, 'Registered'),
    (7, 65160049, 'Registered'),
    (7, 65160050, 'Registered'),
    (7, 65160051, 'Registered'),
    (7, 65160052, 'Registered'),
    (7, 65160053, 'Registered'),
    (7, 65160054, 'Drop'),
    (7, 65160055, 'Registered'),
    (7, 65160056, 'Registered'),
    (7, 65160057, 'Drop'),
    (8, 65160048, 'Registered'),
    (8, 65160049, 'Registered'),
    (8, 65160050, 'Drop'),
    (8, 65160051, 'Registered'),
    (8, 65160052, 'Registered'),
    (8, 65160053, 'Registered'),
    (8, 65160054, 'Registered'),
    (8, 65160055, 'Registered'),
    (8, 65160056, 'Registered'),
    (8, 65160057, 'Drop'),
    (9, 65160048, 'Registered'),
    (9, 65160049, 'Registered'),
    (9, 65160050, 'Registered'),
    (9, 65160051, 'Registered'),
    (9, 65160052, 'Registered'),
    (9, 65160053, 'Registered'),
    (9, 65160054, 'Drop'),
    (9, 65160055, 'Registered'),
    (9, 65160056, 'Registered'),
    (9, 65160057, 'Registered'),
    --IT
    (10, 65161111, 'Registered'),
    (10, 65161122, 'Registered'),
    (10, 65161133, 'Registered'),
    (10, 65161144, 'Registered'),
    (10, 65161155, 'Registered'),
    (10, 65161166, 'Drop'),
    (10, 65161177, 'Registered'),
    (10, 65161188, 'Registered'),
    (10, 65161190, 'Registered'),
    (10, 65161199, 'Drop'),
    (11, 65161111, 'Registered'),
    (11, 65161122, 'Registered'),
    (11, 65161133, 'Registered'),
    (11, 65161144, 'Drop'),
    (11, 65161155, 'Registered'),
    (11, 65161166, 'Drop'),
    (11, 65161177, 'Registered'),
    (11, 65161188, 'Registered'),
    (11, 65161190, 'Registered'),
    (11, 65161199, 'Drop'),
    (12, 65161111, 'Registered'),
    (12, 65161122, 'Registered'),
    (12, 65161133, 'Registered'),
    (12, 65161144, 'Drop'),
    (12, 65161155, 'Registered'),
    (12, 65161166, 'Registered'),
    (12, 65161177, 'Registered'),
    (12, 65161188, 'Registered'),
    (12, 65161190, 'Registered'),
    (12, 65161199, 'Registered'),
    --SE
    (13, 65160100, 'Registered'),
    (13, 65160101, 'Registered'),
    (13, 65160102, 'Registered'),
    (13, 65160103, 'Registered'),
    (13, 65160104, 'Registered'),
    (13, 65160105, 'Registered'),
    (13, 65160106, 'Drop'),
    (13, 65160107, 'Registered'),
    (13, 65160108, 'Registered'),
    (13, 65160109, 'Drop'),
    (14, 65160100, 'Registered'),
    (14, 65160101, 'Registered'),
    (14, 65160102, 'Registered'),
    (14, 65160103, 'Registered'),
    (14, 65160104, 'Registered'),
    (14, 65160105, 'Registered'),
    (14, 65160106, 'Drop'),
    (14, 65160107, 'Registered'),
    (14, 65160108, 'Registered'),
    (14, 65160109, 'Registered'),
    (15, 65160100, 'Registered'),
    (15, 65160101, 'Registered'),
    (15, 65160102, 'Registered'),
    (15, 65160103, 'Registered'),
    (15, 65160104, 'Registered'),
    (15, 65160105, 'Registered'),
    (15, 65160106, 'Drop'),
    (15, 65160107, 'Registered'),
    (15, 65160108, 'Registered'),
    (15, 65160109, 'Drop'),
    (16, 65160100, 'Registered'),
    (16, 65160101, 'Registered'),
    (16, 65160102, 'Registered'),
    (16, 65160103, 'Registered'),
    (16, 65160104, 'Registered'),
    (16, 65160105, 'Registered'),
    (16, 65160106, 'Registered'),
    (16, 65160107, 'Registered'),
    (16, 65160108, 'Registered'),
    (16, 65160109, 'Drop'),
    (17, 65160100, 'Registered'),
    (17, 65160101, 'Registered'),
    (17, 65160102, 'Registered'),
    (17, 65160103, 'Registered'),
    (17, 65160104, 'Registered'),
    (17, 65160105, 'Registered'),
    (17, 65160106, 'Drop'),
    (17, 65160107, 'Registered'),
    (17, 65160108, 'Registered'),
    (17, 65160109, 'Drop'),
    (18, 65160100, 'Registered'),
    (18, 65160101, 'Registered'),
    (18, 65160102, 'Registered'),
    (18, 65160103, 'Registered'),
    (18, 65160104, 'Registered'),
    (18, 65160105, 'Registered'),
    (18, 65160106, 'Registered'),
    (18, 65160107, 'Registered'),
    (18, 65160108, 'Registered'),
    (18, 65160109, 'Drop'),
    -- master degree
    (19, 61160001, 'Registered'),
    (19, 61160002, 'Registered');