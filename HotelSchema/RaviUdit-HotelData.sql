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
 	('Ravi', 'Udit', '1010 Hawaii Way', 'Honolulu', 'HI', '96734', '613-858-9762'),
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
INSERT INTO Reservation (RoomNumber, GuestID, Adults, Children, StartDate, EndDate, TotalCost) VALUES
	(308, 2, 1, 0, '2023-02-02', '2023-02-04', 299.98),
    


-- SELECT * FROM guests;
-- SELECT * FROM roomtype;
-- SELECT * FROM rooms;
-- SELECT * FROM Guests WHERE GuestAddress LIKE'%Hawaii%';