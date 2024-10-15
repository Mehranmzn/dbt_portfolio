WITH raw_hosts AS (
    SELECT * FROM {{ source('airbnb', 'hosts') }}
)
SELECT 
    id AS host_id,
    name AS host_name,
    is_superhost,
    created_at AS host_create,
    updated_at AS host_updated
    
FROM
    raw_hosts
