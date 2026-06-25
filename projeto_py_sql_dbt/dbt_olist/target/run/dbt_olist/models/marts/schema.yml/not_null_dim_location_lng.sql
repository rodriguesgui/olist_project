
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select lng
from "olist_database"."analytics"."dim_location"
where lng is null



  
  
      
    ) dbt_internal_test