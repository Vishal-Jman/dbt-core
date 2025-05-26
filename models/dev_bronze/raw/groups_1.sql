WITH groups_1 AS (
    SELECT
        TRIM(`user_group_id`) AS user_group_id,              -- Remove leading/trailing spaces
        INITCAP(TRIM(`display_name`)) AS display_name,       -- Capitalize first letter, trim spaces
        LOWER(TRIM(`permission`)) AS permission,             -- Lowercase permission for consistency
        TRIM(`workspace_name`) AS workspace_name              -- Trim spaces
    FROM
        dev_bronze.raw.groups_1
    WHERE
        `user_group_id` IS NOT NULL                           -- Filter out rows without group ID
)
SELECT
    *
FROM
    groups_1
