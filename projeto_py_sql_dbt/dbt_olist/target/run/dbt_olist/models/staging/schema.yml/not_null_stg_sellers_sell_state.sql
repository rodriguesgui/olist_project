
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select sell_state
from "olist_database"."analytics"."stg_sellers"
where sell_state is null



  
  
      
    ) dbt_internal_test