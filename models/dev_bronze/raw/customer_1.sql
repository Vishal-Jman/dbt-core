WITH customer_1 AS (
    SELECT
        CAST(`index` AS INT) AS ind,  -- Ensure index is integer
        TRIM(`User Id`) AS user_id,  -- Remove leading/trailing spaces
        INITCAP(TRIM(`First Name`)) AS first_name,  -- Capitalize first letter and trim spaces
        INITCAP(TRIM(`Last Name`)) AS last_name,
        CASE 
            WHEN LOWER(TRIM(`Gender`)) IN ('male', 'm') THEN 'Male'
            WHEN LOWER(TRIM(`Gender`)) IN ('female', 'f') THEN 'Female'
            ELSE 'Other'
        END AS gender,  -- Standardize gender values
        LOWER(TRIM(`Email`)) AS email,  -- Lowercase and trim email
        REGEXP_REPLACE(`Phone`, '[^0-9]', '') AS phone,  -- Remove all non-numeric chars from phone
        TRY_CAST(`Date of birth` AS DATE) AS dob,  -- Cast to date safely (use TRY_CAST if available)
        INITCAP(TRIM(`Job Title`)) AS job_title
    FROM
        dev_bronze.raw.customer_1
    WHERE
        `User Id` IS NOT NULL  -- Filter out records with missing user_id
)
SELECT
    *
FROM
    customer_1
