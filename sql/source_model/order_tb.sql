CREATE TABLE sales.orders (
order_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
customer_id INTEGER NOT NULL,
order_amount NUMERIC(10, 2) NOT NULL,
order_status VARCHAR(20) NOT NULL DEFAULT 'pending',
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT fk_orders_customers
FOREIGN KEY (customer_id)
REFERENCES sales.customers (customer_id)
);

