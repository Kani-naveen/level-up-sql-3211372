-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.
select * from customers 
where firstname = 'Norby';
select * from Reservations where customerid=64;

select * from Reservations
join customers on Reservations.customerid= customers.customerid
where customers.firstname='Norby' and
Reservations.date > '2022-07-24';


delete from Reservations
where reservationId=2000;
