
    
    

with child as (
    select cust_id as from_field
    from "olist_database"."analytics"."int_customers_orders"
    where cust_id is not null
),

parent as (
    select cust_id as to_field
    from "olist_database"."analytics"."stg_customers"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


