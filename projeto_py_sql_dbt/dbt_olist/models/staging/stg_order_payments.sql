select
    order_id as ord_id,
    payment_sequential as pay_seq,
    payment_type as pay_type,
    cast(payment_installments as int) as pay_installments,
    cast(payment_value as decimal(10,2)) as pay_value
from {{ source
('oliststaging', 'olist_order_payments_dataset') }}