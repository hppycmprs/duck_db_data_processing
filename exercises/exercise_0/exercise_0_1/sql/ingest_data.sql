CREATE TABLE 
    IF NOT EXISTS hemnet as (
        SELECT
            *
        FROM read_csv_auto('data/hemnet_data_clean.csv')
);