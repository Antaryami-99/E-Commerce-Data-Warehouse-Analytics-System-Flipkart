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

2️⃣ Revenue by Month

SELECT DATE_FORMAT(order_date, '%Y-%m-%d') AS month,
SUM(total_amount) AS monthly_revenue
FROM orders_ecommerce
GROUP BY month
ORDER BY month;

Output:
month,monthly_revenue
'2023-01-01','124999.00'
'2023-02-01','54999.00'

3️⃣ Customer Lifetime Value (LTV)

select c.customer_id,c.customer_name,
sum(o.total_amount) as lifetime_value
from customers_ecommerce c 
join orders_ecommerce o on c.customer_id =o.customer_id
group by c.customer_id,c.customer_name
order by lifetime_value desc;

Output:
customer_id,customer_name,lifetime_value
'1','Rahul Sharma','124999.00'
'2','Priya Singh','54999.00'


4️⃣ Window Function – Ranking Top Customers

select customer_id,sum(total_amount),
rank() over(order by sum(total_amount) desc) as rn
from orders_ecommerce
group by customer_id;

Output:
customer_id,sum(total_amount),rn
'1','124999.00','1'
'2','54999.00','2'  

