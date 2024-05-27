
  create or replace   view dev.staging.stg_tpch__customers
  
   as (
    -- write staging model following best practices and coventions outlined in style guide
SELECT 
    ROW_NUMBER() OVER (ORDER BY c_custkey) AS object_id,
    c_custkey AS customer_key,
    c_name AS customer_name,
    c_address AS address,
    c_nationkey AS nation_key,
    c_phone AS phone,
    c_acctbal AS account_balance,
    c_mktsegment AS market_segment,
    c_comment AS comment
FROM snowflake_sample_data.tpch_sf1.customer
-- be sure to also update any downstream dependencies
  );

