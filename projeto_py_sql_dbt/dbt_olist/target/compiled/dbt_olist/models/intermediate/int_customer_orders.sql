select c.cust_id,
    c.cust_unique_id,
    geo.geo_zip_code_prefix,
    geo.geo_city,
    geo.geo_state,
    od.ord_id,
    od.ord_purchase_ts,
    op.pay_type,
    op.pay_value
from "olist_database"."analytics"."stg_customers" c
left join "olist_database"."analytics"."stg_orders" od on c.cust_id = od.cust_id
left join "olist_database"."analytics"."stg_order_payments" op on od.ord_id = op.ord_id
left join "olist_database"."analytics"."stg_geolocation" geo on c.cust_zip_code_prefix = geo.geo_zip_code_prefix