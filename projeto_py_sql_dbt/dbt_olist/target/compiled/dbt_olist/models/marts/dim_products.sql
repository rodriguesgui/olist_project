with traducao as (
    select
        prod_catg_name_pt,
        prod_catg_name_eng 
    from "olist_database"."analytics"."stg_product_category_name_translate"
)
select 
    pr.prod_id,
    coalesce(coalesce(t.prod_catg_name_eng, pr.prod_catg_name), 'Uncategorized') as prod_catg_name,
    pr.prod_photos_qty,
    pr.prod_weight_g,
    pr.prod_length_cm,
    pr.prod_height_cm,
    pr.prod_width_cm
from "olist_database"."analytics"."stg_products" pr
left join traducao t on pr.prod_catg_name = t.prod_catg_name_pt