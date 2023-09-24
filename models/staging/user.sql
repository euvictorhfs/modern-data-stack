{{
    config(
        materialized='view'
        )
}}
-- CTE = Common Table Expression
WITH USER AS 
(
    SELECT *
    FROM WORKSHOP02.PUBLIC.USER
)
SELECT
    pu.id,
    pu.user_id,
    pu.username,
    pu.gender,
    pu.employment,
    pu.credit_card,
    pu.subscription
FROM USER AS pu