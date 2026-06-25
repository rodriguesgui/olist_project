
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select estimated_delivery_date
from "olist_database"."analytics"."fct_orders"
where estimated_delivery_date is null



  
  
      
    ) dbt_internal_test