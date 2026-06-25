
  create view "olist_database"."analytics"."int_orders_reviews__dbt_tmp"
    
    
  as (
    with X as (
    select 
        ors.rev_id,
        ors.rev_score,
        ors.rev_comm_tit,
        ors.rev_comm_msg,
        ors.rev_creation_date,
    ors.rev_answer_ts,
    o.ord_id,
    o.cust_id,
    o.ord_status,
    o.ord_purchase_ts,
    o.ord_approved_ts
from "olist_database"."analytics"."stg_order_reviews" ors
left join "olist_database"."analytics"."stg_orders" o on ors.ord_id = o.ord_id),
base as (
    select *,
    row_number() over (partition by ord_id order by rev_creation_date desc) as rn
    from X
) 
select * from base where rn = 1
  );