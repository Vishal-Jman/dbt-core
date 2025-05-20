{{
  config(
    materialized = 'table',
    )
}}


with tt as (
    select 
    `index` as ind,
    `User Id` as user_id
    from dwh_dev_raw.raw.customer
)
select * from tt;