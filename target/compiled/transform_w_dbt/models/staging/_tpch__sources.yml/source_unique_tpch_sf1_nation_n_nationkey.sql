
    
    

select
    n_nationkey as unique_field,
    count(*) as n_records

from snowflake_sample_data.tpch_sf1.nation
where n_nationkey is not null
group by n_nationkey
having count(*) > 1


