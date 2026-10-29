select order_id,
    customer_id,
    order_amount,
    order_status,
    created_at
    from {{ source('sales', 'orders') }}