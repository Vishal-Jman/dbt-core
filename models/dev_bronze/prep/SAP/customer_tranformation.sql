
WITH customer AS (
    SELECT 
        `index` AS ind,
        `User Id` AS user_id
    FROM dwh_dev_raw.raw.customer
),
joined AS (
    SELECT 
        a.ind AS ind_a,
        a.user_id AS user_a,
        b.ind AS ind_b,
        b.user_id AS user_b
    FROM customer a
    CROSS JOIN customer b
)

select *
from {{ remove_self_joins('joined', 'ind_a', 'ind_b') }}