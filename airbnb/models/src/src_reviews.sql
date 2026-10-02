-- Select all fields from RAW_REVIEWS with disambiguated column aliases
-- Co-authored with CoCo
WITH RAW_REVIEWS AS (
    SELECT * FROM {{source('airbnb', 'reviews')}}
)
SELECT
    LISTING_ID,
    DATE AS REVIEW_DATE,
    REVIEWER_NAME,
    COMMENTS AS REVIEW_TEXT,
    SENTIMENT AS REVIEW_SENTIMENT
FROM RAW_REVIEWS
