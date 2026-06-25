
    
    

with child as (
    select customer_id as from_field
    from "olist_database"."analytics"."fct_order_items"
    where customer_id is not null
),

parent as (
    select cust_id as to_field
    from "olist_database"."analytics"."dim_customers"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


