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