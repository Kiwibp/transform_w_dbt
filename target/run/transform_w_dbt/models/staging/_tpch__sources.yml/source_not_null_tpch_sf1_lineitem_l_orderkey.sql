select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select l_orderkey
from snowflake_sample_data.tpch_sf1.lineitem
where l_orderkey is null



      
    ) dbt_internal_test