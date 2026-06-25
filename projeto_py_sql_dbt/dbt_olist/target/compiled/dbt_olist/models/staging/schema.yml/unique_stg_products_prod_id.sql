
    
    

select
    prod_id as unique_field,
    count(*) as n_records

from "olist_database"."analytics"."stg_products"
where prod_id is not null
group by prod_id
having count(*) > 1


