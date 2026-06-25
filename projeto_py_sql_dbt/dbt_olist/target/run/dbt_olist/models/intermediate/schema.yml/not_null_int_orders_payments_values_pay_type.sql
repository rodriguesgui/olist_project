
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select pay_type
from "olist_database"."analytics"."int_orders_payments_values"
where pay_type is null



  
  
      
    ) dbt_internal_test