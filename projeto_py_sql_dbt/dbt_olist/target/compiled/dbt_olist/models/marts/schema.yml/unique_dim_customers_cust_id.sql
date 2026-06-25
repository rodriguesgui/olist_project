
    
    

select
    cust_id as unique_field,
    count(*) as n_records

from "olist_database"."analytics"."dim_customers"
where cust_id is not null
group by cust_id
having count(*) > 1


