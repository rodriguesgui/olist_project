
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select sell_zip_code_prefix
from "olist_database"."analytics"."dim_sellers"
where sell_zip_code_prefix is null



  
  
      
    ) dbt_internal_test