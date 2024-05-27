select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        l_linestatus as value_field,
        count(*) as n_records

    from snowflake_sample_data.tpch_sf1.lineitem
    group by l_linestatus

)

select *
from all_values
where value_field not in (
    'F','O'
)



      
    ) dbt_internal_test