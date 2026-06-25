
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select ord_est_deliv_dt
from "olist_database"."analytics"."stg_orders"
where ord_est_deliv_dt is null



  
  
      
    ) dbt_internal_test