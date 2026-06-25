
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select pay_installments
from "olist_database"."analytics"."stg_order_payments"
where pay_installments is null



  
  
      
    ) dbt_internal_test