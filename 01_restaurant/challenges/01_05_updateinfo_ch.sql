-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.
update CUSTOMERS
set Address='74 Pine St.',
City='New York',
State='NY' 
WHERE customerId=26;

SELECT * FROM CUSTOMERS
WHERE FIRSTNAME='Taylor' and LASTNAME='Jenkins' and
Address ='74 Pine St.';

select * from CUSTOMERS
where customerId=26;

