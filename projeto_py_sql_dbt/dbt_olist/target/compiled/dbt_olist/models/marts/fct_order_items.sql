select 
    pv.ord_id as order_id,
    pv.ord_item_id as order_item_id,
    pv.prod_id as product_id,
    pv.cust_id as customer_id,
    coalesce(pv.sell_id, '9999999999999999999') as seller_id,
    pv.ord_purchase_ts as purchase_date,
    pv.price as price,
    pv.freight_value as freight_value,
    pv.pay_type as payment_type,
    pv.pay_value as payment_value
from "olist_database"."analytics"."int_orders_payments_values" pv