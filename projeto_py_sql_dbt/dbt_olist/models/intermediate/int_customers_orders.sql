with pagamentos as (
    select 
        ord_id,
        sum(pay_value) as pay_value,
        max(pay_type) as pay_type
    from {{ ref('stg_order_payments') }}
    group by ord_id
)
select 
    c.cust_id,
    c.cust_unique_id,
    c.cust_zip_code_prefix,
    od.ord_id,
    od.ord_purchase_ts,
    pg.pay_type,
    pg.pay_value
from {{ ref('stg_customers') }} c
left join {{ ref('stg_orders') }} od on c.cust_id = od.cust_id
left join pagamentos pg on od.ord_id = pg.ord_id