
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select rev_creation_date
from "olist_database"."analytics"."stg_order_reviews"
where rev_creation_date is null



  
  
      
    ) dbt_internal_test