
    
    

select
    rev_id as unique_field,
    count(*) as n_records

from "olist_database"."analytics"."stg_order_reviews"
where rev_id is not null
group by rev_id
having count(*) > 1


