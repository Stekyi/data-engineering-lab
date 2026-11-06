{{
config(
    materialized='incremental',
    unique_key='order_id'
)
}}

select order_id,
    customer_id,
    order_amount,
    order_status,
    updated_at,
    created_at
    from {{ source('sales', 'orders') }}

{% if is_incremental() %}
    where (created_at > (select max(created_at) from {{ this }}))
    or (updated_at > (select max(updated_at) from {{ this }}))
{% endif %}