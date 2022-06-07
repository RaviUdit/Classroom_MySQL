-- Ravi Udit AMAZON PART 2 - April 2022, Hotel Schema

USE RaviUditHotelSchema;

-- 1. Write a query that returns a list of reservations that end in July 2023, including the name of the guest, the room number(s), and the reservation dates.
SELECT RoomReservation.ReservationNumber,
	   RoomReservation.RoomNumber,
	   Guests.GuestFirstName, 
       Guests.GuestLastName, 
       RoomReservation.StartDate,
       RoomReservation.EndDate
       FROM RoomReservation
       INNER JOIN GuestReservation ON RoomReservation.ReservationNumber = GuestReservation.ReservationNumber
       INNER JOIN Guests ON GuestReservation.GuestID = Guests.GuestID
       WHERE RoomReservation.EndDate BETWEEN '2023-07-01' AND '2023-07-31';

-- Results
-- Reservation Number, GuestFirstName, GuestLastName, StartDate, EndDate
-- 14	205	Ravi	Udit	2023-06-28	2023-07-02
-- 15	204	Wilfred	Vise	2023-07-13	2023-07-14
-- 16	401	Maritza	Tilton	2023-07-18	2023-07-21
-- 17	303	Bettyann	Seery	2023-07-28	2023-07-29

-- 2. Write a query that returns a list of all reservations for rooms with a jacuzzi, displaying the guest's name, the room number, and the dates of the reservation.
SELECT RoomReservation.ReservationNumber,
	   Guests.GuestFirstName, 
       Guests.GuestLastName, 
       RoomReservation.RoomNumber,
       RoomReservation.StartDate,
       RoomReservation.EndDate
       FROM RoomReservation
       INNER JOIN GuestReservation ON RoomReservation.ReservationNumber = GuestReservation.ReservationNumber
       INNER JOIN Guests ON GuestReservation.GuestID = Guests.GuestID
       INNER JOIN Rooms ON RoomReservation.RoomNumber = Rooms.RoomNumber 
       WHERE Rooms.Amenities LIKE '%Jacuzzi%';
       
-- Results 
-- ReservationNumber, GuestFirstName, GuestLastName, RoomNumber, StartDate, EndDate
-- 2	Bettyann	Seery	203	2023-02-05	2023-02-10
-- 3	Duane 	Cullison	305	2023-02-22	2023-02-24
-- 4	Karie	Yang	201	2023-03-06	2023-03-07
-- 5	Ravi	Udit	307	2023-03-17	2023-03-20
-- 9	Walter	Holaway	301	2023-04-09	2023-04-13
-- 10	Wilfred	Vise	207	2023-04-23	2023-04-24
-- 14	Ravi	Udit	205	2023-06-28	2023-07-02
-- 17	Bettyann	Seery	303	2023-07-28	2023-07-29
-- 18	Bettyann	Seery	305	2023-08-30	2023-09-01
-- 20	Karie	Yang	203	2023-09-13	2023-09-15

-- 3. Write a query that returns all the rooms reserved for a specific guest, including the guest's name, the room(s) reserved, the starting date 
--    of the reservation, and how many people were included in the reservation. (Choose a guest's name from the existing data.)
SELECT Guests.GuestFirstName, 
       Guests.GuestLastName, 
       RoomReservation.RoomNumber,
       RoomReservation.Adults,
       RoomReservation.Children,
       RoomReservation.StartDate
       FROM RoomReservation
       INNER JOIN GuestReservation ON RoomReservation.ReservationNumber = GuestReservation.ReservationNumber
       INNER JOIN Guests ON GuestReservation.GuestID = Guests.GuestID
       INNER JOIN Rooms ON RoomReservation.RoomNumber = Rooms.RoomNumber 
       WHERE Guests.GuestFirstName LIKE '%Mack%';

-- Results
-- GuestFirstName, GuestLastName, RoomNumber, Adults, Children, StartDate
-- Mack	Simmer	302	1	0	2023-02-02
-- Mack	Simmer	208	2	0	2023-09-16
-- Mack	Simmer	206	2	0	2023-11-22
-- Mack	Simmer	301	2	2	2023-11-22

-- 4. Write a query that returns a list of rooms, reservation ID, and per-room cost for each reservation. The results should include all 
--    rooms, whether or not there is a reservation associated with the room.

SELECT Rooms.RoomNumber, 
	   RoomReservation.ReservationNumber, 
       RoomReservation.TotalCost
       FROM Rooms
       LEFT OUTER JOIN RoomReservation ON Rooms.RoomNumber = RoomReservation.RoomNumber; 
       
-- Results
-- RoomNumber, ReservationNumber, Cost
-- 205	14	699.96
-- 206	12	599.96
-- 206	22	449.97
-- 207	10	174.99
-- 208	12	599.96
-- 208	19	149.99
-- 305	3	349.98
-- 305	18	349.98
-- 306		
-- 307	5	524.97
-- 308		
-- 201	4	199.99
-- 202	7	349.98
-- 203	2	999.95
-- 203	20	399.98
-- 204	15	184.99
-- 301	9	799.96
-- 301	22	599.97
-- 302	1	299.98
-- 302	6	924.95
-- 302	23	699.96
-- 303	17	199.99
-- 304	13	184.99
-- 401	11	1199.97
-- 401	16	1259.97
-- 401	21	1199.97
-- 402		

-- 5. Write a query that returns all the rooms accommodating at least three guests and that are reserved on any date in April 2023.
SELECT RoomNumber,
	   Adults,
       Children,
	   Adults + Children totalGuests
       FROM RoomReservation
       WHERE EndDate BETWEEN '2023-04-01' AND '2023-04-30'
       HAVING Adults + Children > 2;

-- Results
-- No results match inputted parameters. 
       
-- 6. Write a query that returns a list of all guest names and the number of reservations per guest, sorted starting with the 
-- 	  guest with the most reservations and then by the guest's last name.   
    
-- 7. Write a query that displays the name, address, and phone number of a guest based on their phone number. (Choose a phone number from the existing data.)
SELECT * FROM Guests WHERE PhoneNumber = '(291) 553-0508';

-- Result 
--  GuestID, GuestFirstName, GuestLastName, GuestAddress, City, State, ZipCode, PhoneNumber
-- 2	Mack	Simmer	379 Old Shore Street	Council Bluffs	IA	51501	(291) 553-0508