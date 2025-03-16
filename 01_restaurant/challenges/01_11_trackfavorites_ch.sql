-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

select * from customers 
where firstname = 'Cleo' and lastname='Goldwater'; -- customerid=42

select * from dishes
where dishid=14;

select * from dishes
where name='Quinoa Salmon Salad'; --dishid=9

update customers
set favoritedish = 
(select dishid from dishes
where name='Quinoa Salmon Salad')
where customerid=42;

select * from customers where customerId=42;

select customers.firstname, customers.lastname, customers.favoritedish, 
dishes.name
from customers
join dishes on customers.favoritedish=dishes.dishid;

