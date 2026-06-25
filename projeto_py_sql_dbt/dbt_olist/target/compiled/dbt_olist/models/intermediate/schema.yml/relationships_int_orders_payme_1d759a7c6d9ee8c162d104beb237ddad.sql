
    
    

with child as (
    select ord_id as from_field
    from "olist_database"."analytics"."int_orders_payments_values"
    where ord_id is not null
),

parent as (
    select ord_id as to_field
    from "olist_database"."analytics"."stg_orders"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


