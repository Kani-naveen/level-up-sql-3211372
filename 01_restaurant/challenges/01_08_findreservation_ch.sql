-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

select customers.firstname, customers.lastname, reservations.date, 
reservations.partySize
from reservations
join customers on customers.customerId = reservations.customerid
where customers.lastname like 'St%' and
reservations.partySize=4
order by reservations.date desc;