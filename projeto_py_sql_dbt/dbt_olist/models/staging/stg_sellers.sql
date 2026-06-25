select
    seller_id as sell_id,
    seller_zip_code_prefix as sell_zip_code_prefix,
    seller_city as sell_city,
    seller_state as sell_state
from {{ source('oliststaging', 'olist_sellers_dataset') }} 