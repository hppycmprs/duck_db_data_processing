CREATE TABLE 
    IF NOT EXISTS bike as (
        SELECT
            *
        FROM read_csv_auto('data/bike_joined_table.csv')
);