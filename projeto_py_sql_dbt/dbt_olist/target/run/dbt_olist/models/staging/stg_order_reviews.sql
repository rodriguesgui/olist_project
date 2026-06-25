
  create view "olist_database"."analytics"."stg_order_reviews__dbt_tmp"
    
    
  as (
    select
    review_id as rev_id,
    order_id as ord_id,
    review_score as rev_score,
    review_comment_title as rev_comm_tit,
    review_comment_message as rev_comm_msg,
    cast(review_creation_date as date) as rev_creation_date,
    cast(review_answer_timestamp as timestamp) as rev_answer_ts
from "olist_database"."public"."olist_order_reviews_dataset"
  );