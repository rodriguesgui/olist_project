
    
    

with all_values as (

    select
        rev_score as value_field,
        count(*) as n_records

    from "olist_database"."analytics"."int_orders_reviews"
    group by rev_score

)

select *
from all_values
where value_field not in (
    '1','2','3','4','5'
)


