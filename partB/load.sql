-- ===============================
-- load.sql
-- ===============================

-- 1) CATEGORIES
INSERT INTO Categories (category_id, name) VALUES
(1, 'Academic'),
(2, 'Arts'),
(3, 'Sports'),
(4, 'Community Service'),
(5, 'Technology'),
(6, 'Cultural'),
(7, 'Business'),
(8, 'Health & Wellness'),
(9, 'Religion');

-- 2) CLUBS
INSERT INTO Clubs (club_id, club_name, category_id, budget) VALUES
(1,  'Computer Science Society', 5, 2500),
(2,  'Robotics Club',            5, 4000),
(3,  'Math Club',                1, 1200),
(4,  'Biology Society',          1, 1800),
(5,  'Debate Team',              1, 2200),
(6,  'Photography Club',         2, 1500),
(7,  'Film Club',                2, 1600),
(8,  'Basketball Club',          3, 3500),
(9,  'Soccer Club',              3, 3200),
(10, 'Chess Club',               1, 900),
(11, 'Volunteer Corps',          4, 2000),
(12, 'Entrepreneurship Club',    7, 2800),
(13, 'Cultural Exchange Club',   6, 1700),
(14, 'Fitness & Wellness Club',  8, 2100),
(15, 'Cybersecurity Club',       5, 3000),
(16, 'Muslim Students Association', 9, 3200),
(17, 'Music Club',                2, 2000),
(18, 'Environmental Awareness Club', 4, 1800),
(19, 'Fashion Marketing Club',     7, 2600),
(20, 'Mental Health Club',   8, 1900);

-- 3) MEMBERS (STUDENTS)
INSERT INTO Members (student_id, first_name, last_name, email) VALUES
(1001, 'Ava',       'Johnson',   'ava.johnson@school.edu'),
(1002, 'Liam',      'Smith',     'liam.smith@school.edu'),
(1003, 'Noah',      'Brown',     'noah.brown@school.edu'),
(1004, 'Emma',      'Davis',     'emma.davis@school.edu'),
(1005, 'Olivia',    'Miller',    'olivia.miller@school.edu'),
(1006, 'Mason',     'Wilson',    'mason.wilson@school.edu'),
(1007, 'Sophia',    'Moore',     'sophia.moore@school.edu'),
(1008, 'Ethan',     'Taylor',    'ethan.taylor@school.edu'),
(1009, 'Isabella',  'Anderson',  'isabella.anderson@school.edu'),
(1010, 'Lucas',     'Thomas',    'lucas.thomas@school.edu'),
(1011, 'Mia',       'Jackson',   'mia.jackson@school.edu'),
(1012, 'Aiden',     'White',     'aiden.white@school.edu'),
(1013, 'Charlotte', 'Harris',    'charlotte.harris@school.edu'),
(1014, 'Elijah',    'Martin',    'elijah.martin@school.edu'),
(1015, 'Amelia',    'Thompson',  'amelia.thompson@school.edu'),
(1016, 'James',     'Garcia',    'james.garcia@school.edu'),
(1017, 'Harper',    'Martinez',  'harper.martinez@school.edu'),
(1018, 'Benjamin',  'Robinson',  'benjamin.robinson@school.edu'),
(1019, 'Evelyn',    'Clark',     'evelyn.clark@school.edu'),
(1020, 'Henry',     'Rodriguez', 'henry.rodriguez@school.edu'),
(1021, 'Abigail',   'Lewis',     'abigail.lewis@school.edu'),
(1022, 'Jack',      'Lee',       'jack.lee@school.edu'),
(1023, 'Emily',     'Walker',    'emily.walker@school.edu'),
(1024, 'Sebastian', 'Hall',      'sebastian.hall@school.edu'),
(1025, 'Ella',      'Allen',     'ella.allen@school.edu'),
(1026, 'Daniel',    'Young',     'daniel.young@school.edu'),
(1027, 'Scarlett',  'Hernandez', 'scarlett.hernandez@school.edu'),
(1028, 'Matthew',   'King',      'matthew.king@school.edu'),
(1029, 'Grace',     'Wright',    'grace.wright@school.edu'),
(1030, 'David',     'Lopez',     'david.lopez@school.edu'),
(1031, 'Chloe',     'Hill',      'chloe.hill@school.edu'),
(1032, 'Joseph',    'Scott',     'joseph.scott@school.edu'),
(1033, 'Victoria',  'Green',     'victoria.green@school.edu'),
(1034, 'Samuel',    'Adams',     'samuel.adams@school.edu'),
(1035, 'Zoey',      'Baker',     'zoey.baker@school.edu'),
(1036, 'Nathan',   'Perez',      'nathan.perez@school.edu'),
(1037, 'Lily',     'Turner',     'lily.turner@school.edu'),
(1038, 'Owen',     'Collins',    'owen.collins@school.edu'),
(1039, 'Hannah',   'Stewart',    'hannah.stewart@school.edu'),
(1040, 'Isaac',    'Morris',     'isaac.morris@school.edu'),
(1041, 'Madison',  'Rogers',     'madison.rogers@school.edu'),
(1042, 'Caleb',    'Reed',       'caleb.reed@school.edu'),
(1043, 'Natalie',  'Cook',       'natalie.cook@school.edu'),
(1044, 'Ryan',     'Morgan',     'ryan.morgan@school.edu'),
(1045, 'Sofia',    'Bell',       'sofia.bell@school.edu');

-- 4) CLUB EVENTS
INSERT INTO Club_Events (event_id, club_id, event_name, location, event_date) VALUES
(1,  1,  'Intro to Python Workshop',        'Tech Hall 101',       '2025-02-05'),
(2,  1,  'Resume & Internship Night',       'Library Auditorium',  '2025-03-12'),
(3,  2,  'Robotics Build Session #1',       'Engineering Lab',     '2025-02-10'),
(4,  2,  'Robotics Competition Prep',       'Engineering Lab',     '2025-03-20'),
(5,  3,  'Calculus Study Jam',             'Math Center',         '2025-02-18'),
(6,  3,  'Pi Day Social',                  'Student Union',       '2025-03-14'),
(7,  4,  'Biology Guest Lecture',          'Science Hall 220',     '2025-02-25'),
(8,  4,  'Lab Safety Training',            'Science Hall 105',     '2025-03-05'),
(9,  5,  'Debate Tryouts',                 'Humanities 12',       '2025-02-07'),
(10, 5,  'Public Speaking Workshop',       'Humanities 12',       '2025-03-07'),
(11, 6,  'Campus Photo Walk',              'Main Quad',           '2025-02-15'),
(12, 6,  'Editing Night (Lightroom)',      'Media Lab',           '2025-03-01'),
(13, 7,  'Film Screening: Classic Night',  'Student Union 3A',    '2025-02-22'),
(14, 7,  'Short Film Pitch Session',       'Student Union 3A',    '2025-03-22'),
(15, 8,  '3v3 Basketball Tournament',      'Gym Court A',         '2025-02-28'),
(16, 8,  'Skills Clinic',                  'Gym Court B',         '2025-03-18'),
(17, 9,  'Soccer Open Practice',           'Field 2',             '2025-02-12'),
(18, 9,  'Penalty Kick Challenge',         'Field 2',             '2025-03-25'),
(19, 10, 'Chess Ladder Night',             'Library Room B',      '2025-02-20'),
(20, 10, 'Rapid Tournament',               'Library Room B',      '2025-03-27'),
(21, 11, 'Food Drive Packing',             'Community Center',    '2025-02-08'),
(22, 11, 'Park Cleanup',                   'Riverside Park',      '2025-03-09'),
(23, 12, 'Startup Ideas Meetup',           'Business Center 202', '2025-02-26'),
(24, 12, 'Pitch Practice Night',           'Business Center 202', '2025-03-26'),
(25, 13, 'International Potluck',          'Student Union 1C',    '2025-02-27'),
(26, 13, 'Language Exchange Hour',         'Student Union 1C',    '2025-03-13'),
(27, 14, 'Yoga for Beginners',             'Wellness Studio',     '2025-02-11'),
(28, 14, 'Stress Management Workshop',     'Wellness Studio',     '2025-03-19'),
(29, 15, 'Intro to Ethical Hacking',       'Tech Hall 202', '2025-04-02'),
(30, 15, 'CTF Competition Night',          'Tech Hall 202', '2025-04-16'),
(31, 16, 'Welcome & Community Gathering',  'Student Center', '2025-04-05'),
(32, 16, 'Meet the Board Night',           'Student Center', '2025-04-19'),
(33, 17, 'Spring Concert Rehearsal',       'Music Hall',   '2025-04-10'),
(34, 17, 'End of Semester Concert',        'Auditorium',   '2025-04-28'),
(35, 18, 'Campus Sustainability Talk',     'Green Center', '2025-04-08'),
(36, 18, 'Tree Planting Day',              'North Lawn',   '2025-04-22'),
(37, 19, 'Branding Workshop',              'Buis Hall 110', '2025-04-12'),
(38, 19, 'Social Media Marketing Strategy',    'Buis Hall 110', '2025-04-26'),
(39, 20, 'Intro to Meditation',            'Wellness Room','2025-04-07'),
(40, 20, 'Burnout Prevention Seminar',     'Wellness Room','2025-04-21');


-- 5) CLUB MEMBERSHIP (many-to-many)
-- NOTE: role defaults to 'Member' if omitted, but we include a mix.
INSERT INTO Club_Membership (club_id, student_id, role) VALUES
(1, 1002, 'President'),
(1, 1003, 'Vice President'),
(1, 1004, 'Member'),
(1, 1008, 'Member'),
(1, 1010, 'Member'),
(1, 1012, 'Treasurer'),

(2, 1006, 'President'),
(2, 1007, 'Secretary'),
(2, 1008, 'Member'),
(2, 1014, 'Member'),
(2, 1018, 'Member'),

(3, 1001, 'President'),
(3, 1005, 'Member'),
(3, 1011, 'Member'),
(3, 1015, 'Member'),
(3, 1022, 'Member'),

(4, 1009, 'President'),
(4, 1013, 'Member'),
(4, 1019, 'Member'),
(4, 1023, 'Member'),

(5, 1016, 'President'),
(5, 1020, 'Member'),
(5, 1024, 'Member'),
(5, 1030, 'Member'),

(6, 1004, 'President'),
(6, 1017, 'Member'),
(6, 1021, 'Member'),
(6, 1025, 'Member'),

(7, 1007, 'President'),
(7, 1024, 'Member'),
(7, 1026, 'Member'),
(7, 1031, 'Member'),

(8, 1010, 'Captain'),
(8, 1028, 'Member'),
(8, 1032, 'Member'),
(8, 1034, 'Member'),

(9, 1003, 'Captain'),
(9, 1020, 'Member'),
(9, 1029, 'Member'),
(9, 1030, 'Member'),
(9, 1035, 'Member'),

(10, 1001, 'Member'),
(10, 1018, 'President'),
(10, 1022, 'Member'),
(10, 1033, 'Member'),

(11, 1017, 'President'),
(11, 1021, 'Member'),
(11, 1027, 'Member'),
(11, 1031, 'Member'),

(12, 1012, 'President'),
(12, 1016, 'Member'),
(12, 1026, 'Member'),
(12, 1033, 'Member'),

(13, 1005, 'President'),
(13, 1011, 'Member'),
(13, 1025, 'Member'),
(13, 1035, 'Member'),

(14, 1015, 'President'),
(14, 1019, 'Member'),
(14, 1027, 'Member'),
(14, 1029, 'Member'),

(15, 1036, 'President'),
(15, 1038, 'Member'),
(15, 1040, 'Member'),
(15, 1002, 'Member'),

(16, 1037, 'President'),
(16, 1041, 'Member'),
(16, 1018, 'Member'),
(16, 1026, 'Member'),

(17, 1039, 'President'),
(17, 1043, 'Member'),
(17, 1025, 'Member'),

(18, 1042, 'President'),
(18, 1027, 'Member'),
(18, 1017, 'Member'),

(19, 1044, 'President'),
(19, 1016, 'Member'),
(19, 1030, 'Member'),

(20, 1045, 'President'),
(20, 1019, 'Member'),
(20, 1029, 'Member');

-- 6) EVENT ATTENDANCE (many-to-many)
-- Record which students attended which events
INSERT INTO Event_Attendance (student_id, event_id) VALUES
-- Event 1: Intro to Python Workshop (Club 1)
(1002, 1), (1003, 1), (1004, 1), (1008, 1), (1010, 1), (1012, 1), (1022, 1),

-- Event 2: Resume & Internship Night (Club 1)
(1002, 2), (1004, 2), (1010, 2), (1012, 2), (1016, 2), (1026, 2), (1030, 2),

-- Event 3: Robotics Build Session #1 (Club 2)
(1006, 3), (1007, 3), (1008, 3), (1014, 3), (1018, 3), (1028, 3),

-- Event 4: Robotics Competition Prep (Club 2)
(1006, 4), (1008, 4), (1014, 4), (1018, 4), (1032, 4),

-- Event 5: Calculus Study Jam (Club 3)
(1001, 5), (1005, 5), (1011, 5), (1015, 5), (1022, 5), (1023, 5),

-- Event 6: Pi Day Social (Club 3)
(1001, 6), (1011, 6), (1015, 6), (1022, 6), (1033, 6),

-- Event 7: Biology Guest Lecture (Club 4)
(1009, 7), (1013, 7), (1019, 7), (1023, 7), (1031, 7),

-- Event 8: Lab Safety Training (Club 4)
(1009, 8), (1013, 8), (1019, 8), (1023, 8),

-- Event 9: Debate Tryouts (Club 5)
(1016, 9), (1024, 9), (1030, 9),

-- Event 10: Public Speaking Workshop (Club 5)
(1016, 10), (1024, 10), (1030, 10), (1004, 10), (1017, 10),

-- Event 11: Campus Photo Walk (Club 6)
(1004, 11), (1017, 11), (1021, 11), (1025, 11), (1031, 11),

-- Event 12: Editing Night (Lightroom) (Club 6)
(1004, 12), (1021, 12), (1025, 12), (1033, 12),

-- Event 13: Film Screening: Classic Night (Club 7)
(1007, 13), (1024, 13), (1026, 13), (1031, 13), (1005, 13),

-- Event 14: Short Film Pitch Session (Club 7)
(1007, 14), (1026, 14), (1031, 14), (1012, 14),

-- Event 15: 3v3 Basketball Tournament (Club 8)
(1010, 15), (1028, 15), (1032, 15), (1034, 15), (1002, 15),

-- Event 16: Skills Clinic (Club 8)
(1010, 16), (1032, 16), (1034, 16),

-- Event 17: Soccer Open Practice (Club 9)
(1003, 17), (1020, 17), (1029, 17), (1030, 17), (1035, 17),

-- Event 18: Penalty Kick Challenge (Club 9)
(1003, 18), (1029, 18), (1035, 18), (1018, 18),

-- Event 19: Chess Ladder Night (Club 10)
(1001, 19), (1018, 19), (1022, 19), (1033, 19),

-- Event 20: Rapid Tournament (Club 10)
(1018, 20), (1022, 20), (1033, 20), (1005, 20),

-- Event 21: Food Drive Packing (Club 11)
(1017, 21), (1021, 21), (1027, 21), (1031, 21), (1009, 21),

-- Event 22: Park Cleanup (Club 11)
(1017, 22), (1021, 22), (1027, 22), (1031, 22), (1035, 22),

-- Event 23: Startup Ideas Meetup (Club 12)
(1012, 23), (1016, 23), (1026, 23), (1033, 23), (1002, 23), (1017, 23),

-- Event 24: Pitch Practice Night (Club 12)
(1012, 24), (1026, 24), (1033, 24), (1007, 24),(1024, 24),

-- Event 25: International Potluck (Club 13)
(1005, 25), (1011, 25), (1025, 25), (1035, 25), (1023, 25),

-- Event 26: Language Exchange Hour (Club 13)
(1005, 26), (1025, 26), (1035, 26), (1010, 26),

-- Event 27: Yoga for Beginners (Club 14)
(1015, 27), (1019, 27), (1027, 27), (1029, 27), (1004, 27),

-- Event 28: Stress Management Workshop (Club 14)
(1015, 28), (1019, 28), (1027, 28), (1029, 28), (1030, 28),

-- Event 29: Intro to Ethical Hacking (Club 15)
(1036, 29), (1038, 29), (1040, 29), (1002, 29), (1016, 29), (1022, 29),

-- Event 30: CTF Competition Night (Club 15)
(1036, 30), (1038, 30), (1042, 30), (1004, 30)

-- Event 31: Welcome & Community Gathering (Club 16)
(1037, 31), (1041, 31), (1018, 31), (1026, 31), (1004, 31),

-- Event 32: Meet the Board Night (Club 16)
(1037, 32), (1018, 32), (1044, 32),

-- Event 33: Spring Concert Rehearsal (Club 17)
(1039, 33), (1043, 33), (1025, 33),

-- Event 34: End of Semester Concert (Club 17)
(1039, 34), (1043, 34), (1025, 34), (1005, 34),

-- Event 35: Campus Sustainability Talk (Club 18)
(1042, 35), (1027, 35), (1017, 35),(1025, 35),

-- Event 36: Tree Planting Day (Club 18)
(1042, 36), (1027, 36), (1035, 36),(1005, 36), (1003, 1),

-- Event 37: Branding Workshop (Club 19)
(1044, 37), (1016, 37), (1030, 37),(1002, 37),

-- Event 38: Social Media Marketing Strategy (Club 19)
(1044, 38), (1016, 38), (1007, 38),

-- Event 39: Intro to Meditation (Club 20)
(1045, 39), (1019, 39), (1029, 39), (1036, 39),(1040, 39),

-- Event 40: Burnout Prevention Seminar (Club 20)
(1045, 40), (1019, 40), (1029, 40), (1030, 40), (1040, 40);
