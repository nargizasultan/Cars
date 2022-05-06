-- 1)
select *
from customer
where country = 'Canada';
-- 2)
select country
from customer;
-- 3)
select count(*)
from orders;
-- 4)
select max(total_amount)
from orders;
-- 5)
select sum(total_amount)
from orders;
-- 6)
select sum(total_amount)
from orders
where order_date between '2014-01-01' and '2014-12-31';
-- 7)
select round(avg(total_amount))
from orders;
-- 8)
select round(avg(total_amount)), customer_id
from orders
         join customer c on c.id = orders.customer_id
group by customer_id;
-- 9)
select *
from customecr
where country in ('Brazil', 'Spain');
-- 10
select *
from orders
where order_date between '2013-01-01' and '2014-12-31'
  and total_amount < 100.00;
-- 11)
select *
from customer
where country in ('Spain', 'Italy', 'Germany', 'France');
-- 12)
select  s.country from customer join supplier s on customer.country = s.country group by s.country;
-- 13)
select *
from customer
where first_name like 'Jo%';
-- 14)
select *
from customer
where first_name like '%a'
  and length(first_name) = 4;
-- 15)
select count(*), customer.country
from customer
group by customer.country;

-- 16)
select count(*), customer.country
from customer
group by customer.country
order by count(*) desc;
-- 17)
select sum(total_amount), count(*), orders.customer_id
from orders
         join customer c on c.id = orders.customer_id
group by customer_id
order by sum(total_amount) desc;
--18)
select sum(total_amount), count(*), customer_id, quantity
from orders
         join order_item oi on orders.id = oi.order_id
where quantity > 20
group by quantity, customer_id;
