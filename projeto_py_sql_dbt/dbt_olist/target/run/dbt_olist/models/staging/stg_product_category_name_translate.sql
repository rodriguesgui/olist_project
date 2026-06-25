
  create view "olist_database"."analytics"."stg_product_category_name_translate__dbt_tmp"
    
    
  as (
    select
    product_category_name as prod_catg_name_pt,
    product_category_name_english as prod_catg_name_eng
from "olist_database"."public"."product_category_name_translation"
  );