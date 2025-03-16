-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)
select * from customers
where email ='smac@kinetecoinc.com';

insert into customers(Firstname, lastname, email)
values('Sam','McAdams','smac@kinetecoinc.com');

select * from reservations;

insert into reservations(customerId, Date, partySize)
values(
102, '2022-08-22 18:00:00',5
);

select * from reservations where customerId=102;

select customers.firstname, customers.lastname, customers.email, reservations.date,
reservations.partySize
from customers
join reservations on customers.customerId = reservations.customerId
where customers.email='smac@kinetecoinc.com';

update reservations
set Date = '2022-08-12 18:00:00'
where reservationId=2000;
