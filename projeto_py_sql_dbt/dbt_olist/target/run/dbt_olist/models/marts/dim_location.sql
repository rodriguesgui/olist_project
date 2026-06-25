
  
    

  create  table "olist_database"."analytics"."dim_location__dbt_tmp"
  
  
    as
  
  (
    

with location as (
    select 
        geo_zip_code_prefix as zip_code_prefix,
        geo_city as city,
        geo_state as state,
        geo_lat as lat,
        geo_lng as lng
    from "olist_database"."analytics"."stg_geolocation")
select 
    zip_code_prefix,
    avg(lat) as lat,
    avg(lng) as lng,
    max(city) as city,
    max(state) as state
from location
group by zip_code_prefix
  );
  