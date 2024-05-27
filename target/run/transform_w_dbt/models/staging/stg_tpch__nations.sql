
  create or replace   view dev.staging.stg_tpch__nations
  
   as (
    -- write staging model following best practices and coventions outlined in style guide
SELECT 
    ROW_NUMBER() OVER (ORDER BY n_nationkey) AS object_id,
    n_nationkey AS nation_key,
    n_name AS nation_name,
    n_regionkey AS region_key,
    n_comment AS comment
FROM snowflake_sample_data.tpch_sf1.nation
-- be sure to also update any downstream dependencies
  );

