{{
    config(
        materialized='view'
        )
}}
-- CTE = Common Table Expression
WITH SUBSCRIPTIONS AS
(
    SELECT *
    FROM WORKSHOP02.PUBLIC.SUBSCRIPTIONS
)
SELECT
    sb.user_id,
    sb.plan,
    sb.status,
    sb.payment_term,
    sb.payment_method,
    sb.subscription_term
FROM SUBSCRIPTIONS AS sb