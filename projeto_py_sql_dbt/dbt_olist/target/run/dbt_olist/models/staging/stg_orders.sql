
  create view "olist_database"."analytics"."stg_orders__dbt_tmp"
    
    
  as (
    select
    order_id as ord_id,
    customer_id as cust_id,
    order_status as ord_status,
    cast(order_purchase_timestamp as timestamp) as ord_purchase_ts,
    cast(order_approved_at as timestamp) as ord_approved_ts,
    cast(order_delivered_carrier_date as timestamp) as ord_delivered_carrier_ts,
    cast(order_delivered_customer_date as timestamp) as ord_delivered_cust_ts,
    cast(order_estimated_delivery_date as date) as ord_est_deliv_dt
from "olist_database"."public"."olist_orders_dataset"
  );