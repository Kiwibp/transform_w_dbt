select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with child as (
    select o_custkey as from_field
    from snowflake_sample_data.tpch_sf1.orders
    where o_custkey is not null
),

parent as (
    select c_custkey as to_field
    from snowflake_sample_data.tpch_sf1.customer
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



      
    ) dbt_internal_test