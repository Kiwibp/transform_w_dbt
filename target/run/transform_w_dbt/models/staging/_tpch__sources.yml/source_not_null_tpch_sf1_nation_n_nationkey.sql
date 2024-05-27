select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select n_nationkey
from snowflake_sample_data.tpch_sf1.nation
where n_nationkey is null



      
    ) dbt_internal_test