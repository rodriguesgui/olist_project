
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select cust_id as from_field
    from "olist_database"."analytics"."int_orders_payments_values"
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



  
  
      
    ) dbt_internal_test