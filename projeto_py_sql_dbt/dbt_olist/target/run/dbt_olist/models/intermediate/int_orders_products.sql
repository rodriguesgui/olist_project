
  create view "olist_database"."analytics"."int_orders_products__dbt_tmp"
    
    
  as (
    select 
    o.ord_id,
    o.cust_id,
    o.ord_purchase_ts,
    o.ord_status,
    o.ord_approved_ts,
    o.ord_delivered_carrier_ts,
    o.ord_delivered_cust_ts,
    o.ord_est_deliv_dt,
    op.pay_seq,
    op.pay_type,
    op.pay_value,
    oi.ord_item_id,
    oi.prod_id,
    oi.shipping_limit_date,
    oi.price,
    oi.freight_value
from "olist_database"."analytics"."stg_orders" o
left join "olist_database"."analytics"."stg_order_items" oi on o.ord_id = oi.ord_id
left join "olist_database"."analytics"."stg_order_payments" op on o.ord_id = op.ord_id
  );