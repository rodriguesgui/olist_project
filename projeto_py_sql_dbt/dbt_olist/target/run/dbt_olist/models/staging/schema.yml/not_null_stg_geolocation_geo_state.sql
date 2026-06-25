
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select geo_state
from "olist_database"."analytics"."stg_geolocation"
where geo_state is null



  
  
      
    ) dbt_internal_test