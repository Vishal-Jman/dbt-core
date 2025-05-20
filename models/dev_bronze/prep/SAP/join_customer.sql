{{
  config(
    materialized = 'table',
    )
}}



with customer as (
    select 
        `index` as ind,
        `User Id` as user_id
    from dwh_dev_raw.raw.customer
)

select 
    a.ind as ind_a,
    a.user_id as user_a,
    b.ind as ind_b,
    b.user_id as user_b
from customer  a
join customer  b
    on a.ind = b.ind;


