{% macro test_never_more_records(mart_model, staging_model) %}

with staging_count as (
    select count(*) as count from {{ ref(staging_model) }}
),
mart_count as (
    select count(*) as count from {{ ref(mart_model) }}
)

select
    staging_count.count as staging_count,
    mart_count.count as mart_count
from
    staging_count,
    mart_count
where
    mart_count.count > staging_count.count

{% endmacro %}
