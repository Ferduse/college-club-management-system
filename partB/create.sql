-- ===============================
-- CREATE TABLES
-- ===============================

-- CATEGORIES TABLE
CREATE TABLE Categories (
    category_id SERIAL,
    name VARCHAR(255) NOT NULL
);

-- CLUBS TABLE
CREATE TABLE Clubs (
    club_id SERIAL,
    club_name VARCHAR(255) NOT NULL,
    category_id INT NOT NULL,
    budget INT DEFAULT 0 NOT NULL
);

-- MEMBERS TABLE
CREATE TABLE Members (
    student_id INT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(120) UNIQUE NOT NULL
);

-- CLUB EVENTS TABLE
CREATE TABLE Club_Events (
    event_id SERIAL,
    club_id INT NOT NULL,
    event_name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    event_date DATE NOT NULL
);

-- CLUB MEMBERSHIP TABLE
CREATE TABLE Club_Membership (
    club_id INT NOT NULL,
    student_id INT NOT NULL,
    role VARCHAR(50) DEFAULT 'Member' NOT NULL
);

-- EVENT ATTENDANCE TABLE
CREATE TABLE Event_Attendance (
    student_id INT NOT NULL,
    event_id INT NOT NULL
);

-- separate ALTER TABLE statements to add PRIMARY KEY and FOREIGN KEY statements to the tables
-- PRIMARY KEYS & FOREIGN KEYS
ALTER TABLE Categories
ADD PRIMARY KEY (category_id);

ALTER TABLE Clubs
ADD PRIMARY KEY (club_id);

ALTER TABLE Members
ADD PRIMARY KEY (student_id);

ALTER TABLE Club_Events
ADD PRIMARY KEY (event_id);

ALTER TABLE Club_Membership
ADD PRIMARY KEY (club_id, student_id);

ALTER TABLE Event_Attendance
ADD PRIMARY KEY (student_id, event_id);

-- FOREIGN KEYS
ALTER TABLE Clubs
ADD CONSTRAINT fk_clubs_category
FOREIGN KEY (category_id)
REFERENCES Categories(category_id);

ALTER TABLE Club_Events
ADD CONSTRAINT fk_events_club
FOREIGN KEY (club_id)
REFERENCES Clubs(club_id);

ALTER TABLE Club_Membership
ADD CONSTRAINT fk_clubmem_club
FOREIGN KEY (club_id)
REFERENCES Clubs(club_id);

ALTER TABLE Club_Membership
ADD CONSTRAINT fk_clubmem_member
FOREIGN KEY (student_id)
REFERENCES Members(student_id);

ALTER TABLE Event_Attendance
ADD CONSTRAINT fk_attendance_student
FOREIGN KEY (student_id)
REFERENCES Members(student_id);

ALTER TABLE Event_Attendance
ADD CONSTRAINT fk_attendance_event
FOREIGN KEY (event_id)
REFERENCES Club_Events(event_id);
