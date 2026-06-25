
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select pay_value
from "olist_database"."analytics"."int_customers_orders"
where pay_value is null



  
  
      
    ) dbt_internal_test