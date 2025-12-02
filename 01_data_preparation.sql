SELECT
    t.transaction_id,
    t.date AS transaction_date,
     t.time AS transaction_time,
    CASE 
        WHEN DATEPART(WEEKDAY, t.date) IN (1, 7) THEN 'Weekend'
        ELSE 'Weekday'
    END AS day_type,
    t.store_id,
    t.customer_id,
    t.item_id,
    t.channel,
    t.payment_method,
    t.quantity,
    t.unit_price,
    t.discount,
    t.final_unit_price,
    (t.quantity * t.final_unit_price) AS line_revenue,
    CASE WHEN t.discount > 0 THEN 1 ELSE 0 END AS is_promo,
    f.feedback_id,
    f.rating,
    f.nps_score,
    f.feedback_channel,
    f.review_text,
    CASE 
        WHEN f.nps_score >= 9 THEN 'Promoter'
        WHEN f.nps_score BETWEEN 7 AND 8 THEN 'Passive'
        WHEN f.nps_score IS NULL THEN 'No Feedback'
        ELSE 'Detractor'
    END AS nps_group,

    CASE 
        WHEN f.rating >= 4 THEN 'Positive'
        WHEN f.rating = 3 THEN 'Neutral'
        WHEN f.rating IS NULL THEN 'No Feedback'
        ELSE 'Negative'
    END AS rating_group

INTO fact_sales_feedback
FROM fnb_transactions t
LEFT JOIN fnb_feedback f 
    ON t.transaction_id = f.transaction_id;


--------------------------------------------------------------



SELECT DISTINCT
    customer_id,
    UPPER(c.gender) AS gender,
    age,
    CASE 
        WHEN age < 20 THEN 'Under 20'
        WHEN age BETWEEN 20 AND 24 THEN '20-24'
        WHEN age BETWEEN 25 AND 34 THEN '25-34'
        WHEN age BETWEEN 35 AND 44 THEN '35-44'
        WHEN age BETWEEN 45 AND 54 THEN '45-54'
        ELSE '55+'
    END AS age_band,
    signup_date,
    segment
INTO dim_customers
FROM fnb_customers ;

--------------------------------------------------------------

SELECT DISTINCT
    item_id,
    item_name,
    category,
    base_price,
    is_promo_eligible,
    CASE 
        WHEN category IN ('Chicken','Burger') THEN 'Main'
        WHEN category IN ('Rice','Noodles') THEN 'Carbs'
        WHEN category = 'Drink' THEN 'Beverage'
        WHEN category IN ('Side','Dessert') THEN 'Side/Dessert'
        ELSE 'Other'
    END AS product_group
INTO dim_menu_item
FROM fnb_menu_items

---------------------------------------------------------------

SELECT
    competitor_name,
    category,
    reference_item_name,
    competitor_price
INTO dim_competitor_pricing
FROM fnb_competitor_pricing 

------------------------------------------------------------

SELECT DISTINCT
    store_id,
    LTRIM(RTRIM(city)) AS city,
    region,
   format,
    opening_date
INTO dim_stores
FROM fnb_stores 
