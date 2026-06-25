select
    order_id as ord_id,
    order_item_id as ord_item_id,
    product_id as prod_id,
    seller_id as sell_id,
    cast(shipping_limit_date as timestamp) as shipping_limit_date,
    cast(price as decimal(10,2)) as price,
    cast(freight_value as decimal(10,2)) as freight_value
from "olist_database"."public"."olist_order_items_dataset"