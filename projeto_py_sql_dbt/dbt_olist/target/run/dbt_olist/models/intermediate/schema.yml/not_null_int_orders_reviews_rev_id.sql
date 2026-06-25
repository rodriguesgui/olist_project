
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select rev_id
from "olist_database"."analytics"."int_orders_reviews"
where rev_id is null



  
  
      
    ) dbt_internal_test