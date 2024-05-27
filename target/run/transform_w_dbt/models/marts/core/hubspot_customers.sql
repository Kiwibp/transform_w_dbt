
  create or replace   view dev.staging.hubspot_customers
  
   as (
    SELECT 
    customer_key, 
    customer_name, 
    address, 
    phone
FROM dev.staging.stg_tpch__customers
  );

