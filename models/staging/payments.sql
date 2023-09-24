{{
    config(
        materialized='view'
        )
}}
-- CTE = Common Table Expression
WITH PAYMENTS AS 
(
    SELECT *
    FROM WORKSHOP02.PUBLIC.PAYMENTS
)
SELECT
    ps.user_id,
    ps.city,
    ps.race,
    ps.country,
    ps.currency,
    ps.credit_card_type,
    ps.subscription_price
FROM PAYMENTS AS ps