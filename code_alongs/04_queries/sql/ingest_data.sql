CREATE TABLE 
    IF NOT EXISTS jobs as (
        SELECT
            *
        FROM read_csv_auto('data/ai_jobs_market_2025_2026.csv')
);