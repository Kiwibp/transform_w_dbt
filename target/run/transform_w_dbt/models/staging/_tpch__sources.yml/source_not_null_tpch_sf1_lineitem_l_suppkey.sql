select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select l_suppkey
from snowflake_sample_data.tpch_sf1.lineitem
where l_suppkey is null



      
    ) dbt_internal_test