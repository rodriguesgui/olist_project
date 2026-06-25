
  
    

  create  table "olist_database"."analytics"."fct_orders__dbt_tmp"
  
  
    as
  
  (
    select 
    o.ord_id as order_id,
    o.cust_id as customer_id,
    o.pay_value as total_value,
    o.ord_purchase_ts as purchase_date,
    orv.rev_score as review_score,
    so.ord_approved_ts as approved_date,
    so.ord_delivered_carrier_ts as delivered_carrier_date,
    so.ord_delivered_cust_ts as estimated_delivered_customer_date,
    so.ord_est_deliv_dt as estimated_delivery_date
from "olist_database"."analytics"."int_customers_orders" o
left join "olist_database"."analytics"."int_orders_reviews" orv on o.ord_id = orv.ord_id
left join "olist_database"."analytics"."stg_orders" so on o.ord_id = so.ord_id
  );
  