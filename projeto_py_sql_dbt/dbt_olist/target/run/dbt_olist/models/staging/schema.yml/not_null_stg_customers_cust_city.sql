
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select cust_city
from "olist_database"."analytics"."stg_customers"
where cust_city is null



  
  
      
    ) dbt_internal_test