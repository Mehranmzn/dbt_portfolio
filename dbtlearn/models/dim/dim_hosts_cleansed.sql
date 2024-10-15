{{
config(
  materialized='view'
)
}}

WITH src_hosts AS (
    SELECT 
    * 
    FROM {{ref("src_hosts")}}
)
SELECT
    host_id,
    NVL(
        host_name,
        'Anonymous'
    ) AS host_name,
    is_superhost,
    host_create,
    host_updated
FROM
    src_hosts