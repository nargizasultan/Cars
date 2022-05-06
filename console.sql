SELECT brand, model, price
from cars; --1
SELECT count(*)
FROM cars; --2
SELECT *
FROM cars
WHERE brand = 'Hyundai'; --3
SELECT *
FROM cars
WHERE color ilike 'red'
   or color ilike 'blue'; --4
SELECT *
FROM cars
WHERE year_of_issue BETWEEN 2000 AND 2010;--5
SELECT count(*)
FROM cars
WHERE brand = 'Chevrolet'; --6
SELECT round(avg(year_of_issue))
from cars;--7
SELECT *
FROM cars
WHERE brand in ('Audi','Toyota','Kia' ,'Ford'); --8

SELECT * FROM cars WHERE model LIKE 'T%';--9
SELECT * FROM cars WHERE model LIKE '%e';--10
SELECT * FROM cars WHERE length(brand) = 5;--11

SELECT sum(price) FROM cars WHERE brand ILIKE 'Mercedes-Benz';--12
SELECT * FROM cars WHERE price = (SELECT max(price) FROM cars) or price = (SELECT min(price) FROM cars) order by price desc;--13
SELECT * FROM cars WHERE brand not ilike 'Toyota'; --14
SELECT * FROM cars order by price desc limit 10;--15
SELECT * FROM cars order by year_of_issue desc OFFSET 5 LIMIT 10;--16
SELECT * FROM cars WHERE year_of_issue  not between 1995 and 2005;--17
SELECT color, count(*)as cars_count from cars group by color order by count(*) desc;
