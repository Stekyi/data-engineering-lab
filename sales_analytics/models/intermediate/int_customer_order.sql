select c.customer_id,
    c.customer_name,
    c.email,
    o.order_id,
    o.order_amount,
    o.order_status,
    o.created_at as order_created_at
from {{ ref('stg_customers') }} c
inner join {{ ref('stg_orders') }} o 
on c.customer_id = o.customer_id