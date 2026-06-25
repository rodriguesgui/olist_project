
  create view "olist_database"."analytics"."int_orders_payments_values__dbt_tmp"
    
    
  as (
    with pagamentos as (
    select 
        ord_id,
        sum(pay_value) as pay_value,
        max(pay_type) as pay_type,
        max(pay_seq) as pay_seq
    from "olist_database"."analytics"."stg_order_payments"
    group by ord_id
)
select 
    o.ord_id,
    o.cust_id,
    o.ord_purchase_ts,
    o.ord_status,
    o.ord_approved_ts,
    o.ord_delivered_carrier_ts,
    o.ord_delivered_cust_ts,
    o.ord_est_deliv_dt,
    pg.pay_seq,
    pg.pay_type,
    pg.pay_value,
    oi.ord_item_id,
    oi.sell_id,
    oi.prod_id,
    oi.shipping_limit_date,
    oi.price,
    oi.freight_value
from "olist_database"."analytics"."stg_orders" o
left join "olist_database"."analytics"."stg_order_items" oi on o.ord_id = oi.ord_id
join pagamentos pg on o.ord_id = pg.ord_id
  );