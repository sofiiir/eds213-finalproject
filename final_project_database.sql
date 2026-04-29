-- convert the clean dataframe into a table
CREATE TABLE Salmon (
    id BIGINT PRIMARY KEY,
    species VARCHAR,
    length_measurement_type VARCHAR,
    sampleyear BIGINT,
    asl_project_type VARCHAR,
    sampledate DATE,
    length DOUBLE,
    weight VARCHAR,
    sex VARCHAR,
    salt_water_age DOUBLE,
    fresh_water_age DOUBLE,
    gear VARCHAR,
    stat_area DOUBLE,
    datasource VARCHAR,
    locationunique VARCHAR,
);

INSERT INTO Salmon
SELECT * FROM read_csv('salmon_data_clean.csv', header=true, quote='"');



CREATE TABLE Salmon_location (
    location_id VARCHAR,


)

-- view the new table
.table