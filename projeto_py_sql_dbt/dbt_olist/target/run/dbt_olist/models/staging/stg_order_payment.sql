
  create view "olist_database"."analytics"."stg_order_payment__dbt_tmp"
    
    
  as (
    select
    order_id as ord_id,
    payment_sequential as pay_seq,
    payment_type as pay_type,
    cast(payment_installments as int) as pay_installments,
    cast(payment_value as decimal(10,2)) as pay_value
from "olist_database"."public"."olist_order_payments_dataset"
  );