
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select pay_value
from "olist_database"."analytics"."stg_order_payments"
where pay_value is null



  
  
      
    ) dbt_internal_test