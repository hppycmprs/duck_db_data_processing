CREATE TABLE 
    IF NOT EXISTS  as (
        SELECT
            *
        FROM read_csv_auto('data/hemnet_data_clean.csv')
);