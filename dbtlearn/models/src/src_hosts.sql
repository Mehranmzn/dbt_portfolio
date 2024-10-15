WITH raw_hosts AS (
    SELECT * FROM AIRBNB.RAW.RAW_HOSTS
)
SELECT 
    id AS host_id,
    name AS host_name,
    is_superhost,
    created_at AS host_create,
    updated_at AS host_updated
    
FROM
    raw_hosts
