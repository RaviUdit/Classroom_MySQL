-- Ravi Udit AMAZON PART 2 - April 2022, Hotel Schema

-- Destroy the database and create a new one. 

DROP DATABASE IF EXISTS RaviUditHotelSchema;

CREATE DATABASE RaviUditHotelSchema; 
USE RaviUditHotelSchema;

-- The following tables deal with Room Data
CREATE TABLE RoomType(
	RoomTypeID INT NOT NULL PRIMARY KEY, 
    RoomTypeName CHAR(6) NOT NULL,
    StndOccupancy CHAR(1) NOT NULL,
    MaxiOccupancy CHAR(1) NOT NULL
);

CREATE TABLE Rooms(
	RoomNumber INT NOT NULL PRIMARY KEY,
    
    RoomTypeID INT NOT NULL, 
    FOREIGN KEY fk_Rooms_RoomTypeID (RoomTypeID) 
		REFERENCES RoomType(RoomTypeID),
	
    Amenities VARCHAR(50) NOT NULL,
    AdaAccessible BOOL NOT NULL,
    BasePrice DECIMAL(5, 2) NOT NULL,
    ExtraPerson CHAR(3) NOT NULL
);

-- The following table deals with guest data
CREATE TABLE Guests(
	GuestID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    GuestFirstName VARCHAR(50) NOT NULL,
    GuestLastName VARCHAR(50) NOT NULL,
    GuestAddress VARCHAR(100) NOT NULL,
    City VARCHAR(50) NOT NULL,
    State CHAR(2) NOT NULL,
    ZipCode CHAR(5) NOT NULL,
    PhoneNumber CHAR(14) NOT NULL
);

-- The following table deals with Reservation Info
CREATE TABLE GuestReservation(
	ReservationNumber INT NOT NULL AUTO_INCREMENT PRIMARY KEY,

	GuestID INT NOT NULL,
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
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    TotalCost DECIMAL(7,2) NOT NULL
);
    
