



with validation_errors as (

    select
        l_orderkey,l_linenumber,
        count(*) as "n_records"
    from snowflake_sample_data.tpch_sf1.lineitem
    where
        1=1
        and 
    not (
        l_orderkey is null and 
        l_linenumber is null
        
    )


    
    group by
        l_orderkey,l_linenumber
    having count(*) > 1

)
select * from validation_errors
