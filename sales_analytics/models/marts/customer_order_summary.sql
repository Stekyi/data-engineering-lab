select customer_id,
    customer_name, 
    count(order_id) as total_orders,
    sum(order_amount) as total_order_amount
    from {{ ref('int_customer_order') }}
    group by customer_id, customer_name