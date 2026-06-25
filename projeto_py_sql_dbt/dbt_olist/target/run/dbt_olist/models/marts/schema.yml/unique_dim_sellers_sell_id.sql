
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    sell_id as unique_field,
    count(*) as n_records

from "olist_database"."analytics"."dim_sellers"
where sell_id is not null
group by sell_id
having count(*) > 1



  
  
      
    ) dbt_internal_test