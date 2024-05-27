select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select o_orderstatus
from snowflake_sample_data.tpch_sf1.orders
where o_orderstatus is null



      
    ) dbt_internal_test