select
    geolocation_zip_code_prefix as geo_zip_code_prefix,
    geolocation_lat as geo_lat,
    geolocation_lng as geo_lng,
    geolocation_city as geo_city,
    geolocation_state as geo_state
from {{ source('oliststaging', 'olist_geolocation_dataset') }}