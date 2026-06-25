
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select city
from "olist_database"."analytics"."dim_sellers"
where city is null



  
  
      
    ) dbt_internal_test