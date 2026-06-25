select
    sell_id,
    sell_zip_code_prefix,
    sell_city as city,
    sell_state as state
from {{ ref('stg_sellers') }}
union all 
select
    '9999999999999999999' as sell_id ,
    0000 as sell_zip_code_prefix,
    'Unknown' as city,
    'Unknown' as state