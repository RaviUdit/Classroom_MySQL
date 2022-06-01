-- CREATE DATABASE TrackIt;
CREATE DATABASE IF NOT EXISTS TrackIt; 

USE TrackIt; 

CREATE TABLE Task(
	TaskId INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(100) NOT NULL,
    Details TEXT NULL, 
    DueDate DATE NOT NULL,
    EstimatedHours DECIMAL(5, 2) NULL
);

CREATE TABLE Project(
	ProjectId CHAR(50) PRIMARY KEY, 
    `Name` VARCHAR(100) NOT NULL, 
    Summary VARCHAR(2000) NULL, 
    DueDate DATE NOT NULL, 
    IsActive BOOL NOT NULL DEFAULT 1
);