
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select cust_state
from "olist_database"."analytics"."stg_customers"
where cust_state is null



  
  
      
    ) dbt_internal_test