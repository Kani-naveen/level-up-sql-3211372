-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

select * from orders;

select count(orders.orderid) OrderCount,customers.firstname, 
customers.lastname,
customers.email
from customers
join orders on customers.customerid = orders.customerid
group by orders.customerid
order by OrderCount desc
Limit 6; 
