
  create view "olist_database"."analytics"."stg_geolocation__dbt_tmp"
    
    
  as (
    select
    geolocation_zip_code_prefix as geo_zip_code_prefix,
    geolocation_lat as geo_lat,
    geolocation_lng as geo_lng,
    geolocation_city as geo_city,
    geolocation_state as geo_state
from "olist_database"."public"."olist_geolocation_dataset"
  );