-- Ravi Udit AMAZON PART 2 - April 2022, Hotel Schema

USE RaviUditHotelSchema;

-- Inserting Data about Rooms
INSERT INTO RoomType (RoomTypeID, RoomTypeName, StndOccupancy, MaxiOccupancy) VALUES
	(1, 'Single', 2, 2),
    (2, 'Double', 2, 4),
    (3, 'Suite', 3, 8);

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


SELECT * FROM guests;
-- SELECT * FROM roomtype;