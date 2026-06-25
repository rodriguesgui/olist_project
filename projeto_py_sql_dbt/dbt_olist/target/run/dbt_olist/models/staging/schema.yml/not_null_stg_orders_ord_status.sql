
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select ord_status
from "olist_database"."analytics"."stg_orders"
where ord_status is null



  
  
      
    ) dbt_internal_test