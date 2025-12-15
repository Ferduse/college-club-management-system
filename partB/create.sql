-- ===============================
-- CREATE TABLES
-- ===============================

-- CATEGORIES TABLE
CREATE TABLE Categories (
    category_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- CLUBS TABLE
CREATE TABLE Clubs (
    club_id SERIAL PRIMARY KEY,
    club_name VARCHAR(255) NOT NULL,
    category_id INT NOT NULL,
    budget INT DEFAULT 0 NOT NULL,
    CONSTRAINT fk_clubs_category
        FOREIGN KEY (category_id)
        REFERENCES Categories(category_id)
);

-- MEMBERS TABLE
CREATE TABLE Members (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(120) UNIQUE NOT NULL
);

-- CLUB EVENTS TABLE
CREATE TABLE Club_Events (
    event_id SERIAL PRIMARY KEY,
    club_id INT NOT NULL,
    event_name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    event_date DATE NOT NULL,
    CONSTRAINT fk_events_club
        FOREIGN KEY (club_id)
        REFERENCES Clubs(club_id)
);

-- CLUB MEMBERSHIP TABLE
CREATE TABLE Club_Membership (
    club_id INT NOT NULL,
    student_id INT NOT NULL,
    role VARCHAR(50) DEFAULT 'Member' NOT NULL,
    PRIMARY KEY (club_id, student_id),
    CONSTRAINT fk_clubmem_club
        FOREIGN KEY (club_id)
        REFERENCES Clubs(club_id),
    CONSTRAINT fk_clubmem_member
        FOREIGN KEY (student_id)
        REFERENCES Members(student_id)
);

-- EVENT ATTENDANCE TABLE
CREATE TABLE Event_Attendance (
    student_id INT NOT NULL,
    event_id INT NOT NULL,
    PRIMARY KEY (student_id, event_id),
    CONSTRAINT fk_attendance_student
        FOREIGN KEY (student_id)
        REFERENCES Members(student_id),
    CONSTRAINT fk_attendance_event
        FOREIGN KEY (event_id)
        REFERENCES Club_Events(event_id)
);
