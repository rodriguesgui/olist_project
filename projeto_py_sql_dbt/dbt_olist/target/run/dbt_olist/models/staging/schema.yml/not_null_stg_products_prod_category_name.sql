
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select prod_category_name
from "olist_database"."analytics"."stg_products"
where prod_category_name is null



  
  
      
    ) dbt_internal_test