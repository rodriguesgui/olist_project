
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select sell_id
from "olist_database"."analytics"."stg_order_items"
where sell_id is null



  
  
      
    ) dbt_internal_test