select  customer_id,
    customer_name,
    email,
    created_at
    from {{ source('sales', 'customers') }}