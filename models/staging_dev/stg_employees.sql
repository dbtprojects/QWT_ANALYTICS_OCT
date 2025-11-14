{{ config(materialized = 'table', schema = env_var('DBT_STGSCHEMA_NAME', 'STAGING_DEV') ) }}

select *
from
{{source("raw_qwt", "raw_employees")}}