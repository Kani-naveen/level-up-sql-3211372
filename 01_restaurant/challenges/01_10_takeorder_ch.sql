-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

select * from customers
where firstname = 'Loretta';

select * from orders;

insert into orders(customerId,orderdate)
values(70,'2022-09-20 14:00:00');

select * from orders order by orderid desc;

select * from dishes;

insert into ordersdishes(orderid, dishid)
values
(1001,(select dishid from dishes where name='House Salad')),
(1001,(select dishid from dishes where name='Mini Cheeseburgers')),
(1001,(select dishid from dishes where name='Tropical Blue Smoothie'));

select * from dishes
join ordersdishes on dishes.dishid = ordersdishes.dishid
where ordersdishes.orderid=1001;

select sum(dishes.price) totalSum
from dishes 
join ordersdishes on dishes.dishid = ordersdishes.dishid
where ordersdishes.orderid=1001;