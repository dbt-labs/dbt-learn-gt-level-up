WITH input_1 AS (
  SELECT
    *
  FROM {{ ref('jaffle_shop', 'dim_customers') }}
), untitled_sql AS (
  SELECT
    *
  FROM input_1
)
SELECT
  *
FROM untitled_sql