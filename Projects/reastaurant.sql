
/* Create DB
create table customers(customerId int UNIQUE,name text,telephone int)

insert into customers values (1,"Boat",0900100000),(2,"Boo",0900100001),(3,"Bua",0900100002),(4,"Bee",0900100003),(5,"Bew",0900100004);

create table foods(foodId int UNIQUE,foodName text,price int)

insert into foods values (1,"padthai",20),(2,"noodle",30),(3,"pizza",99),(4,"ramen",100),(5,"tomyum",50)

create table orders (orderId int,tableId int,foodId int,restaurantId int)

insert into orders values (1,1,1,1),(1,1,2,1),(2,2,1,3),(2,2,4,4),(1,1,5,5)

create table restaurant (restaurantId int UNIQUE,name text,location text)

insert into restaurant values (1,"ไทยอร่อย","กรุงเทพมหานคร"),(2,"ไทยอร่อย สาขา2","ชลบุรี"),(3,"ไทยอร่อย สาขา3","เลย"),(4,"ไทยอร่อย สาขา 4","เชียงใหม่"),(5,"ไทยอร่อย สาขา5","พะเยา");

create table managers(managerId int UNIQUE,name text,salary int,restaurantId int)

insert into managers values (1,"Thanate",15000,1),(2,"Thanode",16000,2),(3,"Thanat",16000,3),(4,"Thanee",16000,4),(5,"Thanatorn",16000,5);
*/

.open restaurant.db
.table
.mode column

select AVG(price) from foods;

select foods.foodId,foods.foodName
from foods
join orders
  on orders.foodId = foods.foodId
limit 3;

select * from orders;

select COUNT(*)
  from 
    (select foodName from foods 
    join orders
    on foods.foodId = orders.foodId
    where foods.foodId = 1
  );

WITH sub1 AS (select*from orders
where orders.restaurantId="1"
), sub2 AS (select*from foods
where foods.foodId = 2 
)

select *
from sub1 join sub2 
on sub1.foodId = sub2.foodId;

