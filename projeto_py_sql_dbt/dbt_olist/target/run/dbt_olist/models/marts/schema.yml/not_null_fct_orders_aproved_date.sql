
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select aproved_date
from "olist_database"."analytics"."fct_orders"
where aproved_date is null



  
  
      
    ) dbt_internal_test