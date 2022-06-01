-- Ravi Udit AMAZON PART 2 - April 2022, Hotel Schema

-- Destroy the database and create a new one. 

DROP DATABASE IF EXISTS RaviUditHotelSchema;

CREATE DATABASE RaviUditHotelSchema; 

-- The following tables deal with Room Data
CREATE TABLE RoomType(
	RoomTypeID INT PRIMARY KEY, 
    RoomTypeName CHAR(6),
    StndOccupancy CHAR(1),
    MaxiOccupancy CHAR(1)
);

CREATE TABLE Rooms(
	RoomNumber INT PRIMARY KEY,
    
    RoomTypeID INT, 
    FOREIGN KEY fk_RoomTypeID (RoomTypeID) 
		REFERENCES RoomType(RoomTypeID),
	
    Amenities VARCHAR(50),
    AdaAccesible BOOL,
    BasePrice DECIMAL(5, 2),
    ExtraPerson CHAR(3)
);

-- The following table deals with guest data
CREATE TABLE Guests(
	GuestID INT AUTO_INCREMENT PRIMARY KEY,
    GuestName VARCHAR(50),
    GuestAddress VARCHAR(100),
    City VARCHAR(50),
    State CHAR(2),
    ZipCode CHAR(5),
    PhoneNumber CHAR(14)
);

-- The following table deals with Reservation Info
