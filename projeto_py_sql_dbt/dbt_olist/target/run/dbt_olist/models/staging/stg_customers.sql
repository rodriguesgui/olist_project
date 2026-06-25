
  create view "olist_database"."analytics"."stg_customers__dbt_tmp"
    
    
  as (
    select
    customer_id as cust_id,
    customer_unique_id as cust_unique_id,
    customer_zip_code_prefix as cust_zip_code_prefix,
    customer_city as cust_city,
    customer_state as cust_state
from "olist_database"."public"."olist_customers_dataset"
  );