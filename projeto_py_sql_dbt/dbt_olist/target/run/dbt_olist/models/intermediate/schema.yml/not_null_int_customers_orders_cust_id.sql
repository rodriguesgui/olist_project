
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select cust_id
from "olist_database"."analytics"."int_customers_orders"
where cust_id is null



  
  
      
    ) dbt_internal_test