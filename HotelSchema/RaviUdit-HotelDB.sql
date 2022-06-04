-- Ravi Udit AMAZON PART 2 - April 2022, Hotel Schema

-- Destroy the database and create a new one. 

DROP DATABASE IF EXISTS RaviUditHotelSchema;

CREATE DATABASE RaviUditHotelSchema; 
USE RaviUditHotelSchema;

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
    FOREIGN KEY fk_Rooms_RoomTypeID (RoomTypeID) 
		REFERENCES RoomType(RoomTypeID),
	
    Amenities VARCHAR(50),
    AdaAccesible BOOL,
    BasePrice DECIMAL(5, 2),
    ExtraPerson CHAR(3)
);

-- The following table deals with guest data
CREATE TABLE Guests(
	GuestID INT AUTO_INCREMENT PRIMARY KEY,
    GuestFirstName VARCHAR(50),
    GuestLastName VARCHAR(50),
    GuestAddress VARCHAR(100),
    City VARCHAR(50),
    State CHAR(2),
    ZipCode CHAR(5),
    PhoneNumber CHAR(14)
);

-- The following table deals with Reservation Info
CREATE TABLE Reservation(
	ReservationNumber INT AUTO_INCREMENT PRIMARY KEY,
    
    RoomNumber INT,
    FOREIGN KEY fk_Reservation_RoomNumber(RoomNumber)
		REFERENCES Rooms(RoomNumber),
	GuestID INT,
    FOREIGN KEY fk_Reservation_GuestID(GuestID)
		REFERENCES Guests(GuestID),
	
    Adults CHAR(1),
    Children CHAR(1),
    StartDate DATE,
    EndDate DATE,
    TotalCost DECIMAL(7,2)
)