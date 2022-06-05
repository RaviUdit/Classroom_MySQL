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
    AdaAccessible BOOL,
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
CREATE TABLE GuestReservation(
	ReservationNumber INT AUTO_INCREMENT PRIMARY KEY,

	GuestID INT,
    FOREIGN KEY fk_Reservation_GuestID(GuestID)
		REFERENCES Guests(GuestID)

);

CREATE TABLE RoomReservation(
	ReservationNumber INT NOT NULL,
    RoomNumber INT NOT NULL, 
    
    PRIMARY KEY pk_RoomReservation (ReservationNumber, RoomNumber), 
    FOREIGN KEY fk_RoomReservation_ReservationNumber(ReservationNumber)
		REFERENCES GuestReservation(ReservationNumber),
	FOREIGN KEY fk_RoomReservation_RoomNumber(RoomNumber)
		REFERENCES Rooms(RoomNumber),
	
    Adults CHAR(1) NOT NULL,
    Children CHAR(1) NOT NULL,
    StartDate DATE,
    EndDate DATE,
    TotalCost DECIMAL(7,2)
);
    
