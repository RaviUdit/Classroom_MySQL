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
