1️⃣ Top Selling Products

select product_name,sum(oi.quantity) as total_sold
from products_ecommerce p
join order_items_ecommerce oi
on p.product_id = oi.product_id
group by p.product_name
order by total_sold desc;

Output:
product_name,total_sold 
'Samsung S21','2'
'iPhone 13','1'

