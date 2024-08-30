CREATE DATABASE NoticeBoardDB

CREATE TABLE Users(
     Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
     Name VARCHAR(500) NOT NULL ,
     Email VARCHAR(500) NOT NULL,
     Dob DATE NOT NULL,
     Gender VARCHAR(10) NOT NULL,
     Role VARCHAR(20) NOT NULL,
     Password VARCHAR(100) NOT NULL,
     Year INT NULL,
     Branch VARCHAR(500) NULL,
     Department VARCHAR(500) NULL,
    
)

CREATE TABLE Categories(
     Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
     Name VARCHAR(100) NOT NULL,
     Details VARCHAR(500) NOT NULL
)

CREATE TABLE Notices(
     Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
     Title VARCHAR(500) NOT NULL,
     Description VARCHAR(500) NOT NULL,
     PostedBy int NOT NULL,
     PostedOn DATE NOT NULL,
     ValidFrom DATE NOT NULL,
     ValidTill DATE NOT NULL,
     ForBranch VARCHAR(500) NOT NULL,
     ForYear INT NOT NULL,
     CategoryId INT NOT NULL,
     CONSTRAINT FK_Notices_Categories FOREIGN KEY (CategoryId) REFERENCES Categories(Id),
     CONSTRAINT FK_Notices_Users FOREIGN KEY (PostedBy) REFERENCES Users(Id)
)

INSERT INTO Categories (Name, Details)
VALUES
('Academic', 'Includes: Exam schedules, results, deadlines, academic announcements, and course-related updates.'),
('Events', 'Includes: Workshops, seminars, cultural programs, guest lectures, and campus events.'),
('Administrative', 'Includes: Official announcements, policy changes, holiday notices, and infrastructure updates.'),
('Opportunities', 'Includes: Internships, placements, scholarships, grants, and other career or academic opportunities.'),
('Clubs & Activities', 'Includes: Notices from student clubs, societies, sports, fitness activities, and extracurricular programs.'),
('General', 'Includes: Campus news, health and safety advisories, lost and found, and miscellaneous notices that don’t fit into other categories.');