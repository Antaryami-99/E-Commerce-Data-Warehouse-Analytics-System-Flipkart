CREATE TABLE IF NOT EXISTS customers_ecommerce (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    city VARCHAR(50),
    state VARCHAR(50),
    created_at DATE
);


CREATE TABLE IF NOT EXISTS products_ecommerce (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(200),
    category VARCHAR(50),
    brand VARCHAR(50),
    price DECIMAL(10,2),
    listed_date DATE
);


CREATE TABLE IF NOT EXISTS orders_ecommerce (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(20),
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers_ecommerce(customer_id)
);


CREATE TABLE IF NOT EXISTS order_items_ecommerce (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders_ecommerce(order_id),
    FOREIGN KEY (product_id) REFERENCES products_ecommerce(product_id)
);


CREATE TABLE IF NOT EXISTS payments_ecommerce (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(20),
    payment_date DATE,
    amount DECIMAL(10,2),
    status VARCHAR(20),
    FOREIGN KEY (order_id) REFERENCES orders_ecommerce(order_id)
);


CREATE TABLE IF NOT EXISTS returns_ecommerce (
    return_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    return_date DATE,
    reason VARCHAR(200),
    refund_amount DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders_ecommerce(order_id),
    FOREIGN KEY (product_id) REFERENCES products_ecommerce(product_id)
);