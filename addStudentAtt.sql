-- insert data for StudentAttendance table
INSERT INTO
    StudentAttendance (
        ClassAttendance_ID,
        Student_ID,
        Student_Time_In,
        Student_Check
    )
VALUES
    -- cs student
    -- 65160500
    -- 65160501
    -- 65160502
    -- 65160503
    -- 65160504
    -- 65160505
    -- 65160506
    -- 65160507
    -- 65160508
    -- 65160509
    -- ClassAttendance_ID have 1-44
    -- if ClassAttendance_ID is odd number, random Student_Time_In between 10:00-11:00
    -- if ClassAttendance_ID is even number, random Student_Time_In between 13:00-14:00
    (1, 65160500, '10:00', 1),
    (1, 65160501, '10:01', 1),
    (1, 65160502, '10:30', 1),
    (1, 65160503, '10:05', 1),
    (1, 65160504, '10:10', 1),
    (1, 65160505, '10:15', 1),
    (1, 65160506, '10:20', 1),
    (1, 65160507, '10:25', 1),
    (1, 65160508, '10:30', 1),
    (1, 65160509, '10:35', 1),
    (2, 65160500, '13:00', 1),
    (2, 65160501, '13:01', 1),
    (2, 65160502, '13:30', 1),
    (2, 65160503, '13:05', 1),
    (2, 65160504, '13:10', 1),
    (2, 65160505, '13:15', 1),
    (2, 65160506, '13:20', 1),
    (2, 65160507, '13:25', 1),
    (2, 65160508, '13:30', 1),
    (2, 65160509, '13:35', 1),
    (3, 65160500, '10:00', 1),
    (3, 65160501, NULL, 0),
    (3, 65160502, '10:30', 1),
    (3, 65160503, '10:05', 1),
    (3, 65160504, '10:10', 1),
    (3, 65160505, '10:15', 1),
    (3, 65160506, '10:20', 1),
    (3, 65160507, '10:25', 1),
    (3, 65160508, '10:30', 1),
    (3, 65160509, '10:35', 1),
    (4, 65160500, '13:00', 1),
    (4, 65160501, NULL, 0),
    (4, 65160502, '13:30', 1),
    (4, 65160503, '13:05', 1),
    (4, 65160504, '13:10', 1),
    (4, 65160505, '13:15', 1),
    (4, 65160506, '13:20', 1),
    (4, 65160507, '13:25', 1),
    (4, 65160508, '13:30', 1),
    (4, 65160509, '13:35', 1),
    (5, 65160500, '10:00', 1),
    (5, 65160501, '10:01', 1),
    (5, 65160502, '10:30', 1),
    (5, 65160503, '10:05', 1),
    (5, 65160504, '10:10', 1),
    (5, 65160505, '10:15', 1),
    (5, 65160506, '10:20', 1),
    (5, 65160507, '10:25', 1),
    (5, 65160508, '10:30', 1),
    (5, 65160509, '10:35', 1),
    (6, 65160500, '13:00', 1),
    (6, 65160501, '13:01', 1),
    (6, 65160502, '13:30', 1),
    (6, 65160503, '13:05', 1),
    (6, 65160504, '13:10', 1),
    (6, 65160505, '13:15', 1),
    (6, 65160506, '13:20', 1),
    (6, 65160507, '13:25', 1),
    (6, 65160508, '13:30', 1),
    (6, 65160509, '13:35', 1),
    (7, 65160500, '10:00', 1),
    (7, 65160501, '10:01', 1),
    (7, 65160502, '10:30', 1),
    (7, 65160503, '10:05', 1),
    (7, 65160504, '10:10', 1),
    (7, 65160505, '10:15', 1),
    (7, 65160506, '10:20', 1),
    (7, 65160507, '10:25', 1),
    (7, 65160508, '10:30', 1),
    (7, 65160509, '10:35', 1),
    (8, 65160500, '13:00', 1),
    (8, 65160501, '13:01', 1),
    (8, 65160502, '13:30', 1),
    (8, 65160503, '13:05', 1),
    (8, 65160504, '13:10', 1),
    (8, 65160505, '13:15', 1),
    (8, 65160506, '13:20', 1),
    (8, 65160507, '13:25', 1),
    (8, 65160508, '13:30', 1),
    (8, 65160509, '13:35', 1),
    (9, 65160500, '10:00', 1),
    (9, 65160501, '10:01', 1),
    (9, 65160502, '10:30', 1),
    (9, 65160503, '10:05', 1),
    (9, 65160504, '10:10', 1),
    (9, 65160505, '10:15', 1),
    (9, 65160506, '10:20', 1),
    (9, 65160507, '10:25', 1),
    (9, 65160508, '10:30', 1),
    (9, 65160509, '10:35', 1),
    (10, 65160500, '13:00', 1),
    (10, 65160501, '13:01', 1),
    (10, 65160502, '13:30', 1),
    (10, 65160503, '13:05', 1),
    (10, 65160504, '13:10', 1),
    (10, 65160505, '13:15', 1),
    (10, 65160506, '13:20', 1),
    (10, 65160507, '13:25', 1),
    (10, 65160508, '13:30', 1),
    (10, 65160509, '13:35', 1),
    (11, 65160500, '10:00', 1),
    (11, 65160501, '10:01', 1),
    (11, 65160502, '10:30', 1),
    (11, 65160503, '10:05', 1),
    (11, 65160504, '10:10', 1),
    (11, 65160505, '10:15', 1),
    (11, 65160506, '10:20', 1),
    (11, 65160507, '10:25', 1),
    (11, 65160508, '10:30', 1),
    (11, 65160509, '10:35', 1),
    (12, 65160500, '13:00', 1),
    (12, 65160501, '13:01', 1),
    (12, 65160502, '13:30', 1),
    (12, 65160503, '13:05', 1),
    (12, 65160504, '13:10', 1),
    (12, 65160505, '13:15', 1),
    (12, 65160506, '13:20', 1),
    (12, 65160507, '13:25', 1),
    (12, 65160508, '13:30', 1),
    (12, 65160509, '13:35', 1),
    (13, 65160500, '10:00', 1),
    (13, 65160501, '10:01', 1),
    (13, 65160502, '10:30', 1),
    (13, 65160503, '10:05', 1),
    (13, 65160504, '10:10', 1),
    (13, 65160505, '10:15', 1),
    (13, 65160506, '10:20', 1),
    (13, 65160507, '10:25', 1),
    (13, 65160508, '10:30', 1),
    (13, 65160509, '10:35', 1),
    (14, 65160500, '13:00', 1),
    (14, 65160501, '13:01', 1),
    (14, 65160502, '13:30', 1),
    (14, 65160503, '13:05', 1),
    (14, 65160504, '13:10', 1),
    (14, 65160505, '13:15', 1),
    (14, 65160506, '13:20', 1),
    (14, 65160507, '13:25', 1),
    (14, 65160508, '13:30', 1),
    (14, 65160509, '13:35', 1),
    (15, 65160500, '10:00', 1),
    (15, 65160501, '10:01', 1),
    (15, 65160502, '10:30', 1),
    (15, 65160503, '10:05', 1),
    (15, 65160504, '10:10', 1),
    (15, 65160505, '10:15', 1),
    (15, 65160506, '10:20', 1),
    (15, 65160507, '10:25', 1),
    (15, 65160508, '10:30', 1),
    (15, 65160509, '10:35', 1),
    (16, 65160500, '13:00', 1),
    (16, 65160501, '13:01', 1),
    (16, 65160502, '13:30', 1),
    (16, 65160503, '13:05', 1),
    (16, 65160504, '13:10', 1),
    (16, 65160505, '13:15', 1),
    (16, 65160506, '13:20', 1),
    (16, 65160507, '13:25', 1),
    (16, 65160508, '13:30', 1),
    (16, 65160509, '13:35', 1),
    (17, 65160500, '10:00', 1),
    (17, 65160501, '10:01', 1),
    (17, 65160502, '10:30', 1),
    (17, 65160503, '10:05', 1),
    (17, 65160504, '10:10', 1),
    (17, 65160505, '10:15', 1),
    (17, 65160506, '10:20', 1),
    (17, 65160507, '10:25', 1),
    (17, 65160508, '10:30', 1),
    (17, 65160509, '10:35', 1),
    (18, 65160500, '13:00', 1),
    (18, 65160501, '13:01', 1),
    (18, 65160502, '13:30', 1),
    (18, 65160503, '13:05', 1),
    (18, 65160504, '13:10', 1),
    (18, 65160505, '13:15', 1),
    (18, 65160506, '13:20', 1),
    (18, 65160507, '13:25', 1),
    (18, 65160508, '13:30', 1),
    (18, 65160509, '13:35', 1),
    (19, 65160500, '10:00', 1),
    (19, 65160501, '10:01', 1),
    (19, 65160502, '10:30', 1),
    (19, 65160503, '10:05', 1),
    (19, 65160504, '10:10', 1),
    (19, 65160505, '10:15', 1),
    (19, 65160506, '10:20', 1),
    (19, 65160507, '10:25', 1),
    (19, 65160508, '10:30', 1),
    (19, 65160509, '10:35', 1),
    (20, 65160500, '13:00', 1),
    (20, 65160501, '13:01', 1),
    (20, 65160502, '13:30', 1),
    (20, 65160503, '13:05', 1),
    (20, 65160504, '13:10', 1),
    (20, 65160505, '13:15', 1),
    (20, 65160506, '13:20', 1),
    (20, 65160507, '13:25', 1),
    (20, 65160508, '13:30', 1),
    (20, 65160509, '13:35', 1),
    (21, 65160500, '10:00', 1),
    (21, 65160501, '10:01', 1),
    (21, 65160502, '10:30', 1),
    (21, 65160503, '10:05', 1),
    (21, 65160504, '10:10', 1),
    (21, 65160505, '10:15', 1),
    (21, 65160506, '10:20', 1),
    (21, 65160507, '10:25', 1),
    (21, 65160508, '10:30', 1),
    (21, 65160509, '10:35', 1),
    (22, 65160500, '13:00', 1),
    (22, 65160501, '13:01', 1),
    (22, 65160502, '13:30', 1),
    (22, 65160503, '13:05', 1),
    (22, 65160504, '13:10', 1),
    (22, 65160505, '13:15', 1),
    (22, 65160506, '13:20', 1),
    (22, 65160507, '13:25', 1),
    (22, 65160508, '13:30', 1),
    (22, 65160509, '13:35', 1),
    (23, 65160500, '10:00', 1),
    (23, 65160501, '10:01', 1),
    (23, 65160502, '10:30', 1),
    (23, 65160503, '10:05', 1),
    (23, 65160504, '10:10', 1),
    (23, 65160505, '10:15', 1),
    (23, 65160506, '10:20', 1),
    (23, 65160507, '10:25', 1),
    (23, 65160508, '10:30', 1),
    (23, 65160509, '10:35', 1),
    (24, 65160500, '13:00', 1),
    (24, 65160501, '13:01', 1),
    (24, 65160502, '13:30', 1),
    (24, 65160503, '13:05', 1),
    (24, 65160504, '13:10', 1),
    (24, 65160505, '13:15', 1),
    (24, 65160506, '13:20', 1),
    (24, 65160507, '13:25', 1),
    (24, 65160508, '13:30', 1),
    (24, 65160509, '13:35', 1),
    (25, 65160500, '10:00', 1),
    (25, 65160501, '10:01', 1),
    (25, 65160502, '10:30', 1),
    (25, 65160503, '10:05', 1),
    (25, 65160504, '10:10', 1),
    (25, 65160505, '10:15', 1),
    (25, 65160506, '10:20', 1),
    (25, 65160507, '10:25', 1),
    (25, 65160508, '10:30', 1),
    (25, 65160509, '10:35', 1),
    (26, 65160500, '13:00', 1),
    (26, 65160501, '13:01', 1),
    (26, 65160502, '13:30', 1),
    (26, 65160503, '13:05', 1),
    (26, 65160504, '13:10', 1),
    (26, 65160505, '13:15', 1),
    (26, 65160506, '13:20', 1),
    (26, 65160507, '13:25', 1),
    (26, 65160508, '13:30', 1),
    (26, 65160509, '13:35', 1),
    (27, 65160500, '10:00', 1),
    (27, 65160501, '10:01', 1),
    (27, 65160502, '10:30', 1),
    (27, 65160503, '10:05', 1),
    (27, 65160504, '10:10', 1),
    (27, 65160505, '10:15', 1),
    (27, 65160506, '10:20', 1),
    (27, 65160507, '10:25', 1),
    (27, 65160508, '10:30', 1),
    (27, 65160509, '10:35', 1),
    (28, 65160500, '13:00', 1),
    (28, 65160501, '13:01', 1),
    (28, 65160502, '13:30', 1),
    (28, 65160503, '13:05', 1),
    (28, 65160504, '13:10', 1),
    (28, 65160505, '13:15', 1),
    (28, 65160506, '13:20', 1),
    (28, 65160507, '13:25', 1),
    (28, 65160508, '13:30', 1),
    (28, 65160509, '13:35', 1),
    (29, 65160500, '10:00', 1),
    (29, 65160501, '10:01', 1),
    (29, 65160502, '10:30', 1),
    (29, 65160503, '10:05', 1),
    (29, 65160504, '10:10', 1),
    (29, 65160505, '10:15', 1),
    (29, 65160506, '10:20', 1),
    (29, 65160507, '10:25', 1),
    (29, 65160508, '10:30', 1),
    (29, 65160509, '10:35', 1),
    (30, 65160500, '13:00', 1),
    (30, 65160501, '13:01', 1),
    (30, 65160502, '13:30', 1),
    (30, 65160503, '13:05', 1),
    (30, 65160504, '13:10', 1),
    (30, 65160505, '13:10', 1),
    (30, 65160506, '13:11', 1),
    (30, 65160507, '13:10', 1),
    (30, 65160508, '13:00', 1),
    (30, 65160509, '13:35', 1),
    (31, 65160500, '10:00', 1),
    (31, 65160501, '10:01', 1),
    (31, 65160502, '10:30', 1),
    (31, 65160503, '10:05', 1),
    (31, 65160504, '10:10', 1),
    (31, 65160505, '10:15', 1),
    (31, 65160506, '10:20', 1),
    (31, 65160507, '10:25', 1),
    (31, 65160508, '10:30', 1),
    (31, 65160509, '10:35', 1),
    (32, 65160500, '13:00', 1),
    (32, 65160501, '13:01', 1),
    (32, 65160502, '13:30', 1),
    (32, 65160503, '13:05', 1),
    (32, 65160504, '13:10', 1),
    (32, 65160505, '13:15', 1),
    (32, 65160506, '13:20', 1),
    (32, 65160507, '13:25', 1),
    (32, 65160508, '13:30', 1),
    (32, 65160509, '13:35', 1),
    (33, 65160500, '10:00', 1),
    (33, 65160501, '10:01', 1),
    (33, 65160502, '10:30', 1),
    (33, 65160503, '10:05', 1),
    (33, 65160504, '10:10', 1),
    (33, 65160505, '10:15', 1),
    (33, 65160506, '10:20', 1),
    (33, 65160507, '10:25', 1),
    (33, 65160508, '10:30', 1),
    (33, 65160509, '10:00', 1),
    (34, 65160500, '13:00', 1),
    (34, 65160501, '13:20', 1),
    (34, 65160502, '13:30', 1),
    (34, 65160503, '13:05', 1),
    (34, 65160504, '13:10', 1),
    (34, 65160505, '13:15', 1),
    (34, 65160506, '13:20', 1),
    (34, 65160507, '13:25', 1),
    (34, 65160508, '13:30', 1),
    (34, 65160509, '13:35', 1),
    (35, 65160500, '10:00', 1),
    (35, 65160501, '10:01', 1),
    (35, 65160502, '10:30', 1),
    (35, 65160503, '10:05', 1),
    (35, 65160504, '10:10', 1),
    (35, 65160505, '10:15', 1),
    (35, 65160506, '10:20', 1),
    (35, 65160507, '10:25', 1),
    (35, 65160508, '10:30', 1),
    (35, 65160509, '10:35', 1),
    (36, 65160500, '13:00', 1),
    (36, 65160501, '13:01', 1),
    (36, 65160502, '13:30', 1),
    (36, 65160503, '13:05', 1),
    (36, 65160504, '13:10', 1),
    (36, 65160505, '13:15', 1),
    (36, 65160506, '13:20', 1),
    (36, 65160507, '13:25', 1),
    (36, 65160508, '13:30', 1),
    (36, 65160509, '13:35', 1),
    (37, 65160500, '10:00', 1),
    (37, 65160501, '10:01', 1),
    (37, 65160502, '10:30', 1),
    (37, 65160503, '10:05', 1),
    (37, 65160504, '10:10', 1),
    (37, 65160505, '10:00', 1),
    (37, 65160506, '10:01', 1),
    (37, 65160507, '10:15', 1),
    (37, 65160508, '10:30', 1),
    (37, 65160509, '10:35', 1),
    (38, 65160500, '13:00', 1),
    (38, 65160501, '13:01', 1),
    (38, 65160502, '13:30', 1),
    (38, 65160503, '13:05', 1),
    (38, 65160504, '13:10', 1),
    (38, 65160505, '13:15', 1),
    (38, 65160506, '13:20', 1),
    (38, 65160507, '13:25', 1),
    (38, 65160508, '13:30', 1),
    (38, 65160509, '13:35', 1),
    (39, 65160500, '10:00', 1),
    (39, 65160501, '10:01', 1),
    (39, 65160502, '10:30', 1),
    (39, 65160503, '10:05', 1),
    (39, 65160504, '10:10', 1),
    (39, 65160505, '10:15', 1),
    (39, 65160506, '10:20', 1),
    (39, 65160507, '10:25', 1),
    (39, 65160508, '10:30', 1),
    (39, 65160509, '10:35', 1),
    (40, 65160500, '13:00', 1),
    (40, 65160501, '13:01', 1),
    (40, 65160502, '13:30', 1),
    (40, 65160503, '13:05', 1),
    (40, 65160504, '13:10', 1),
    (40, 65160505, '13:15', 1),
    (40, 65160506, '13:20', 1),
    (40, 65160507, '13:25', 1),
    (40, 65160508, '13:30', 1),
    (40, 65160509, '13:00', 1),
    (41, 65160500, '10:00', 1),
    (41, 65160501, '10:01', 1),
    (41, 65160502, '10:30', 1),
    (41, 65160503, '10:05', 1),
    (41, 65160504, '10:10', 1),
    (41, 65160505, '10:15', 1),
    (41, 65160506, '10:20', 1),
    (41, 65160507, '10:25', 1),
    (41, 65160508, '10:30', 1),
    (41, 65160509, '10:35', 1),
    (42, 65160500, '13:00', 1),
    (42, 65160501, '13:01', 1),
    (42, 65160502, '13:30', 1),
    (42, 65160503, '13:05', 1),
    (42, 65160504, '13:10', 1),
    (42, 65160505, '13:15', 1),
    (42, 65160506, '13:20', 1),
    (42, 65160507, '13:25', 1),
    (42, 65160508, '13:30', 1),
    (42, 65160509, '13:35', 1),
    (43, 65160500, '10:00', 1),
    (43, 65160501, '10:01', 1),
    (43, 65160502, '10:30', 1),
    (43, 65160503, '10:05', 1),
    (43, 65160504, '10:10', 1),
    (43, 65160505, '10:15', 1),
    (43, 65160506, '10:20', 1),
    (43, 65160507, '10:25', 1),
    (43, 65160508, '10:30', 1),
    (43, 65160509, '10:35', 1),
    (44, 65160500, '13:00', 1),
    (44, 65160501, '13:02', 1),
    (44, 65160502, '13:30', 1),
    (44, 65160503, '13:05', 1),
    (44, 65160504, '13:10', 1),
    (44, 65160505, '13:15', 1),
    (44, 65160506, '13:20', 1),
    (44, 65160507, '13:25', 1),
    (44, 65160508, '13:30', 1),
    (44, 65160509, '13:35', 1);