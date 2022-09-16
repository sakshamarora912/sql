 use sql_store;
-- select * from customers where first_name in ('Elka','Ambur');        -- first name is Elka or Ambur
-- select * from customers where last_name regexp 'ey$|on$';            -- Last name end by ey or on;
-- select * from customers where last_name regexp '^my|se';             -- last name start with my or contain se
-- select * from customers where last_name regexp 'b[ru]';				-- last name contain b follwed by r or u
-- select * from customers where phone is null;
-- select * from customers order by first_name desc;
-- select first_name , last_name from customers order by date_birth;

-- select *,quantity*unit_price as total_price  from order_items where order_id=2 order by total_price;

-- select * from customers limit 4,5; 
-- select * from customers limit 5;
-- select first_name,last_name,points from customers order by points desc limit 5;
-- select order_id ,orders.customer_id, first_name, last_name from orders join customers on orders.customer_id=customers.customer_id;
-- select order_id, p.product_id,quantity,p.unit_price  from order_items oi join products p on oi.product_id=p.product_id;
-- select * from sql_inventory.products p join order_items oi on p.product_id= oi.product_id;

-- use sql_hr;
-- select e.employee_id,e.first_name,m.first_name as manager from employees e join employees m on e.reports_to=m.employee_id;
--  
--  
--  use sql_store; 
--  select p.product_id,p.name as product_item,os.name as status,oi.order_id,o.order_date,o.shipped_date from order_statuses os 
-- 		join orders o on os.order_status_id=o.status 
-- 		join order_items oi on oi.order_id=o.order_id
-- 		join sql_inventory.products p on p.product_id=oi.product_id 
--         order by product_id; 
--         
-- select * from order_item_notes oin join order_items oi;

-- use sql_invoicing;
-- select pm.name as payment_method,date
--  from payments p 
--   join clients c 
--   on p.client_id=c.client_id
--   join payment_methods pm 
--   on p.payment_id=pm.payment_method_id
-- ;
use sql_store;
select * from order_item_notes oin join order_items oi on oin.order_id=oi.order_id;

select c.customer_id,c.first_name,o.order_id 
from customers c
 left join orders o on c.customer_id=o.customer_id
 order by c.customer_id