
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select ord_approved_ts
from "olist_database"."analytics"."stg_orders"
where ord_approved_ts is null



  
  
      
    ) dbt_internal_test