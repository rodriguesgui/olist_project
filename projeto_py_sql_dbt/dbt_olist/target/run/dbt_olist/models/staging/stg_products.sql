
  create view "olist_database"."analytics"."stg_products__dbt_tmp"
    
    
  as (
    select
    product_id as prod_id,
    product_category_name as prod_catg_name,
    product_name_lenght as prod_name_lenght,
    product_description_lenght as prod_description_lenght,
    product_photos_qty as prod_photos_qty,
    product_weight_g as prod_weight_g,
    product_length_cm as prod_length_cm,
    product_height_cm as prod_height_cm,
    product_width_cm as prod_width_cm
from "olist_database"."public"."olist_products_dataset"
  );