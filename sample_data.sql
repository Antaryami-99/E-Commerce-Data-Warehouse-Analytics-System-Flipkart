INSERT INTO customers_ecommerce VALUES
(1,'Rahul Sharma','rahul@email.com','9999999999','Bangalore','Karnataka','2021-01-01'),
(2,'Priya Singh','priya@email.com','8888888888','Mumbai','Maharashtra','2021-03-11');


INSERT INTO products_ecommerce VALUES
(101,'iPhone 13','Mobiles','Apple',69999,'2022-05-01'),
(102,'Samsung S21','Mobiles','Samsung',54999,'2022-04-15');


INSERT INTO orders_ecommerce VALUES
(5001,1,'2023-01-05','Delivered',124999),
(5002,2,'2023-02-15','Delivered',54999);


INSERT INTO order_items_ecommerce VALUES
(1,5001,101,1,69999),
(2,5001,102,1,54999),
(3,5002,102,1,54999);


INSERT INTO payments_ecommerce VALUES
(9001,5001,'UPI','2023-01-05',124999,'Success'),
(9002,5002,'Card','2023-02-15',54999,'Success');


INSERT INTO returns_ecommerce VALUES
(3001,5001,102,'2023-01-12','Defective',54999);