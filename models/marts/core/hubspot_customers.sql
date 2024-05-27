
SELECT 
    customer_key, 
    customer_name, 
    address, 
    phone
FROM {{ ref('stg_tpch__customers') }}