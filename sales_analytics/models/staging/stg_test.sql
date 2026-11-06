select customer_id,
    '{{ this.name }}' as table_name,
    '{{ this.schema }}' as schema_name,
    '{{ this.database }}' as database_name,
    '{{ this }}' as table_ref
    from {{ source('sales', 'customers') }}
