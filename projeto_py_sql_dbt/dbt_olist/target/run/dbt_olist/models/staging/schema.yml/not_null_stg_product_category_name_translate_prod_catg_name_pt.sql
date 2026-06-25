
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select prod_catg_name_pt
from "olist_database"."analytics"."stg_product_category_name_translate"
where prod_catg_name_pt is null



  
  
      
    ) dbt_internal_test