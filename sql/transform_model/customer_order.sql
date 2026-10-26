CREATE VIEW sales.customer_orders AS
SELECT
c.customer_id,
c.customer_name,
o.order_id,
o.order_amount,
o.order_status,
o.created_at AS order_created_at
FROM sales.customers AS c
INNER JOIN sales.orders AS o
ON c.customer_id = o.customer_id;
