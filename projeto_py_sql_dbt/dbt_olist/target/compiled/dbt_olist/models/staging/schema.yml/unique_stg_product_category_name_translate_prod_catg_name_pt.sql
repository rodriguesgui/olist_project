
    
    

select
    prod_catg_name_pt as unique_field,
    count(*) as n_records

from "olist_database"."analytics"."stg_product_category_name_translate"
where prod_catg_name_pt is not null
group by prod_catg_name_pt
having count(*) > 1


