select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    line_item_key as unique_field,
    count(*) as n_records

from dev.staging.order_line_items
where line_item_key is not null
group by line_item_key
having count(*) > 1



      
    ) dbt_internal_test