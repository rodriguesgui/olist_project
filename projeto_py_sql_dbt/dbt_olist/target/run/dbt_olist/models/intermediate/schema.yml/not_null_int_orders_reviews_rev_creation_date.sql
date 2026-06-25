
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select rev_creation_date
from "olist_database"."analytics"."int_orders_reviews"
where rev_creation_date is null



  
  
      
    ) dbt_internal_test