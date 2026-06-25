select 
    cust_id,
    cust_unique_id,
    cust_zip_code_prefix,
    cust_city as city,
    cust_state as state
from "olist_database"."analytics"."stg_customers"