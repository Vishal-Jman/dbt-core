With customer_1 AS (
    select 
        c1.ind,
        c1.user_id,
        c2.user_id as c2_user_id,
        c1.first_name,
        c1.last_name,
        c1.gender,
        c1.email,
        c1.phone,
        c1.dob,
        c1.job_title
    FROM {{ ref('customer_1') }} AS c1
    JOIN {{ ref('customer_2') }} AS c2 
    ON c1.ind = c2.ind
)
select * from customer_1
