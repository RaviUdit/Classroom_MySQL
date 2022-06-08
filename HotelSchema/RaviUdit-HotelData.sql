-- Ravi Udit AMAZON PART 2 - April 2022, Hotel Schema

USE RaviUditHotelSchema;

-- Inserting Data about Rooms
INSERT INTO RoomType (RoomTypeID, RoomTypeName, StndOccupancy, MaxiOccupancy) VALUES
	(1, 'Single', 2, 2),
    (2, 'Double', 2, 4),
    (3, 'Suite', 3, 8);
    
INSERT INTO Rooms (RoomNumber, RoomTypeID, Amenities, AdaAccessible, BasePrice, ExtraPerson) VALUES
	-- Second Floor Rooms
    (201, 2, 'MicroWave, Jacuzzi', 0, 199.99, 10),
    (202, 2, 'Refrigerator', 1, 174.99, 10),
    (203, 2, 'MicroWave, Jacuzzi', 0, 199.99, 10),
    (204, 2, 'Refrigerator', 1, 174.99, 10),
    (205, 1, 'Microwave, Refrigerator, Jacuzzi', 0, 174.99, 'NA'),
    (206, 1, 'Microwave, Refrigerator', 1, 149.99, 'NA'),
    (207, 1, 'Microwave, Refrigerator, Jacuzzi', 0, 174.99, 'NA'),
    (208, 1, 'Microwave, Refrigerator', 1, 149.99, 'NA'),
    
    -- Third Floor Rooms
    (301, 2, 'MicroWave, Jacuzzi', 0, 199.99, 10),
    (302, 2, 'Refrigerator', 1, 174.99, 10),
    (303, 2, 'MicroWave, Jacuzzi', 0, 199.99, 10),
    (304, 2, 'Refrigerator', 1, 174.99, 10),
    (305, 1, 'Microwave, Refrigerator, Jacuzzi', 0, 174.99, 'NA'),
    (306, 1, 'Microwave, Refrigerator', 1, 149.99, 'NA'),
    (307, 1, 'Microwave, Refrigerator, Jacuzzi', 0, 174.99, 'NA'),
    (308, 1, 'Microwave, Refrigerator', 1, 149.99, 'NA'),
    
    -- Fourth Floor Suites
    (401, 3, 'MicroWave, Refrigerator, Oven', 1, 399.99, 'NA'),
    (402, 3, 'MicroWave, Refrigerator, Oven', 1, 399.99, 'NA');
	

-- Inserting Data about Guests
INSERT INTO Guests (GuestFirstName, GuestLastName, GuestAddress, City, State, ZipCode, PhoneNumber) VALUES
 	('Ravi', 'Udit', '1010 Hawaii Way', 'Honolulu', 'HI', '96734', '(613) 858-9762'),
    ('Mack', 'Simmer', '379 Old Shore Street', 'Council Bluffs', 'IA', '51501', '(291) 553-0508'),
    ('Bettyann', 'Seery', '750 Wintergreen Drive', 'Wasilla', 'AK', '99654', '(478) 277-9632'),
    ('Duane ', 'Cullison', '9662 Foxrun Lane', 'Harlingen', 'TX', '78552', '(308) 494-0198'),
    ('Karie', 'Yang', '9378 W. Augusta Ave.', 'West Deptford', 'NJ', '08096', '(214) 730-0298'),
    ('Aurore', 'Lipton', '762 Wild Rose Street', 'Saginaw', 'MI', '48601', '(377) 507-0974'),
    ('Zachery', 'Luechtefeld', '7 Poplar Dr.', 'Arvada', 'CO', '80003', '(814) 485-2615'),
    ('Jeremiah', 'Pendergrass', '70 Oakwood St.', 'Zion', 'IL', '60099', '(279) 491-0960'),
    ('Walter', 'Holaway', '7556 Arrowhead St.', 'Cumberland', 'RI', '02864', '(446) 396-6785'),
    ('Wilfred', 'Vise', '77 West Surrey Stree', 'Oswego', 'NY', '13126', '(834) 727-1001'),
    ('Maritza', 'Tilton', '939 Linda Rd.', 'Burke', 'VA', '22015', '(446) 351-6860'),
    ('Joleen', 'Tison', '87 Queen St.', 'Drexel Hill', 'PA', '19026', '(231) 893-2755');

-- Inserting Data for Reservations
INSERT INTO GuestReservation(GuestID) VALUES
	(2),
    (3),
    (4),
    (5),
    (1),
    (6),
    (7),
    (8),
    (9),
    (10),
    (11),
    (12),
    (6),
    (1),
    (10),
    (11),
    (3),
    (3),
    (2),
    (5),
    (4),
    (2),
    (11);
    
INSERT INTO RoomReservation(ReservationNumber, RoomNumber, Adults, Children, StartDate, EndDate, TotalCost) VALUES
	(1, 302, 1, 0, '2023-02-02', '2023-02-04', 299.98),
    (2, 203, 2, 1, '2023-02-05', '2023-02-10', 999.95),
    (3, 305, 2, 0, '2023-02-22', '2023-02-24', 349.98),
    (4, 201, 2, 2, '2023-03-06', '2023-03-07', 199.99),
    (5, 307, 1, 1, '2023-03-17', '2023-03-20', 524.97), 
    (6, 302, 3, 0, '2023-03-18', '2023-03-23', 924.95),
    (7, 202, 2, 2, '2023-03-29', '2023-03-31', 349.98),
    (8, 304, 2, 0, '2023-03-31', '2023-04-05', 874.95), 
    (9, 301, 1, 0, '2023-04-09', '2023-04-13', 799.96),
    (10, 207, 1, 1, '2023-04-23', '2023-04-24', 174.99), 
    (11, 401, 2, 4, '2023-05-30', '2023-06-02', 1199.97), 
    (12, 206, 2, 0, '2023-06-10', '2023-06-14', 599.96),
    (12, 208, 1, 0, '2023-06-10', '2023-06-14', 599.96),
    (13, 304, 3, 0, '2023-06-17', '2023-06-18', 184.99),
    (14, 205, 2, 0, '2023-06-28', '2023-07-02', 699.96), 
    (15, 204, 3, 1, '2023-07-13', '2023-07-14', 184.99),
    (16, 401, 4, 2, '2023-07-18', '2023-07-21', 1259.97),
    (17, 303, 2, 1, '2023-07-28', '2023-07-29', 199.99),
    (18, 305, 1, 0, '2023-08-30', '2023-09-01', 349.98),
    (19, 208, 2, 0, '2023-09-16', '2023-09-17', 149.99), 
    (20, 203, 2, 2, '2023-09-13', '2023-09-15', 399.98), 
    (21, 401, 2, 2, '2023-11-22', '2023-11-25', 1199.97), 
    (22, 206, 2, 0, '2023-11-22', '2023-11-25', 449.97),
    (22, 301, 2, 2, '2023-11-22', '2023-11-25', 599.97), 
    (23, 302, 2, 0, '2023-12-24', '2023-12-28', 699.96);


-- Deleting Pendergrass and his reservation. 
SET SQL_SAFE_UPDATES = 0;

-- Removing reservation first. 
DELETE FROM RoomReservation WHERE ReservationNumber = 8;

-- Removing from GuestReservation
DELETE FROM GuestReservation WHERE GuestID = 8; 

-- Deleting Pendergrass from the System
DELETE FROM Guests WHERE GuestID = 8;

-- Return to Safe Updates. 
SET SQL_SAFE_UPDATES = 1;

 SELECT * FROM guests;
-- SELECT * FROM roomtype;
-- SELECT * FROM rooms;
-- SELECT * FROM Guests WHERE GuestAddress LIKE'%Hawaii%';
-- SELECT * FROM guestreservation;
-- SELECT * FROM roomreservation;