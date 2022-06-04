-- Ravi Udit AMAZON PART 2 - April 2022, Hotel Schema

USE RaviUditHotelSchema;

-- Inserting Data about Rooms
INSERT INTO RoomType (RoomTypeID, RoomTypeName, StndOccupancy, MaxiOccupancy) VALUES
	(1, 'Single', 2, 2),
    (2, 'Double', 2, 4),
    (3, 'Suite', 3, 8);
    