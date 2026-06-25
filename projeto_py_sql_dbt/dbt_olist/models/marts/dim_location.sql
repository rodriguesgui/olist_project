{{ config(materialized='table') }}

with location as (
    select 
        geo_zip_code_prefix as zip_code_prefix,
        geo_city as city,
        geo_state as state,
        geo_lat as lat,
        geo_lng as lng
    from {{ ref('stg_geolocation') }})
select 
    zip_code_prefix,
    avg(lat) as lat,
    avg(lng) as lng,
    max(city) as city,
    max(state) as state
from location
group by zip_code_prefix