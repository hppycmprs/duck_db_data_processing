CREATE TABLE 
    IF NOT EXISTS cleaned_salaries AS (
        SELECT

        experience_level,

        CASE
            WHEN employment_type = 'CT' THEN 'Contract'
            WHEN employment_type = 'FL' THEN 'Freelance'
            WHEN employment_type = 'PT' THEN 'Part time'
            WHEN employment_type = 'FT' THEN 'Full time'
        END AS employment_type,

        job_title,

        ROUND((salary_in_usd * 10.23), -3) AS salary_yearly_SEK,

        ROUND(((salary_in_usd * 10.23) / 12), -3) AS salary_monthly_SEK,

        remote_ratio,

        CASE
            WHEN company_size = 'S' THEN 'Small'
            WHEN company_size = 'M' THEN 'Medium'
            WHEN company_size = 'L' THEN 'Large'
        END AS company_size,

        CASE
            WHEN salary_monthly_SEK < 25_000 THEN 'Not worth my time'
            WHEN salary_monthly_SEK BETWEEN 25_000 AND 35_000 THEN 'Low'
            WHEN salary_monthly_SEK BETWEEN 36_000 AND 45_000 THEN 'Medium'
            WHEN salary_monthly_SEK BETWEEN 46_000 AND 75_000 THEN 'High'
            WHEN salary_monthly_SEK BETWEEN 76_000 AND 120_000 THEN 'Very high'
            WHEN salary_monthly_SEK BETWEEN 121_000 AND 160_000 THEN 'Very, very high'
            WHEN salary_monthly_SEK BETWEEN 161_000 AND 200_000 THEN 'What else have I not bought already?'
            WHEN salary_monthly_SEK > 200_000 THEN 'Insanely high'
        END AS salary_level

        FROM read_csv_auto('data/salaries.csv')
    );