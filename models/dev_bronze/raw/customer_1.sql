WITH customer_1 AS(
    Select 
        `index` as ind,
        `User Id`  as user_id,
        `First Name` as first_name,
        `Last Name` as last_name,
        `Gender` as gender,
        `Email` as email,
        `Phone` as phone,
        `Date of birth` as dob,
        `Job Title` as job_title 
    from  dev_bronze.raw.customer_1
)
select * from customer_1