
-- Create the Students table
CREATE TABLE Students (
    id INT IDENTITY(1,1) PRIMARY KEY, -- Internal database primary key
    student_id NVARCHAR(20) NOT NULL UNIQUE, -- Custom unique student identifier
    first_name NVARCHAR(50) NOT NULL,
    last_name NVARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    address NVARCHAR(255) NOT NULL,
    phone_number NVARCHAR(15) NOT NULL,
    photo VARBINARY(MAX) NULL -- Photo stored as binary data
);
GO

-- Create the Teachers table
CREATE TABLE Teachers (
    teacher_id INT IDENTITY(1,1) PRIMARY KEY, -- Auto-incrementing primary key
    first_name NVARCHAR(50) NOT NULL,
    last_name NVARCHAR(50) NOT NULL,
    subject_id INT NOT NULL, -- FK to Subjects table
    phone_number NVARCHAR(15) NOT NULL,
    email NVARCHAR(100) NOT NULL,
    photo VARBINARY(MAX) NULL, -- Photo stored as binary data
    CONSTRAINT FK_Teachers_Subjects FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);
GO

-- Create the Classrooms table
CREATE TABLE Classrooms (
    classroom_id INT IDENTITY(1,1) PRIMARY KEY, -- Auto-incrementing primary key
    classroom_name NVARCHAR(50) NOT NULL,
    capacity INT NOT NULL,
    photo VARBINARY(MAX) NULL -- Optional photo of the classroom
);
GO

-- Create the Subjects table
CREATE TABLE Subjects (
    subject_id INT IDENTITY(1,1) PRIMARY KEY, -- Auto-incrementing primary key
    subject_name NVARCHAR(50) NOT NULL,
    classroom_id INT NOT NULL, -- FK to Classrooms table
    CONSTRAINT FK_Subjects_Classrooms FOREIGN KEY (classroom_id) REFERENCES Classrooms(classroom_id)
);
GO

-- Create the Scores table
CREATE TABLE Scores (
    score_id INT IDENTITY(1,1) PRIMARY KEY, -- Auto-incrementing primary key
    student_id INT NOT NULL, -- FK to Students table
    subject_id INT NOT NULL, -- FK to Subjects table
    score FLOAT NOT NULL,
    CONSTRAINT FK_Scores_Students FOREIGN KEY (student_id) REFERENCES Students(id),
    CONSTRAINT FK_Scores_Subjects FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);
GO
CREATE TABLE [dbo].[Users] (
    [Id] INT IDENTITY(1,1) PRIMARY KEY, -- Assuming [Id] is an auto-incrementing primary key
    [Username] NVARCHAR(255) NOT NULL, -- Replace 255 with appropriate length
    [Password] NVARCHAR(255) NOT NULL  -- Replace 255 with appropriate length
);
GO
INSERT INTO Users (Username, Password) VALUES ('admin', '1234')