select
    product_category_name as prod_catg_name_pt,
    product_category_name_english as prod_catg_name_eng
from {{ source('oliststaging', 'product_category_name_translation') }} 