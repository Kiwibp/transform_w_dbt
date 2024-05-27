select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        o_orderstatus as value_field,
        count(*) as n_records

    from snowflake_sample_data.tpch_sf1.orders
    group by o_orderstatus

)

select *
from all_values
where value_field not in (
    'F','O','P'
)



      
    ) dbt_internal_test