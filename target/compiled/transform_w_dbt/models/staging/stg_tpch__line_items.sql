SELECT 
    -- creates a unique key for line items 
    md5(cast(coalesce(cast(l_orderkey  as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(l_linenumber as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT)) AS line_item_key, 
    l_orderkey AS order_key, 
    l_partkey AS part_key, 
    l_suppkey AS supplier_key, 
    l_linenumber AS line_number, 
    ROUND(l_quantity, 0) AS item_quantity, 
    l_extendedprice AS extended_price_usd,
    l_discount AS discount_amount_usd, 
    l_tax AS tax_amount_usd, 
    l_returnflag AS return_flag_code, 
    l_linestatus AS line_status_code, 
    l_shipdate::date AS ship_date
FROM snowflake_sample_data.tpch_sf1.lineitem