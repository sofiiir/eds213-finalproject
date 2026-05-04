-- convert the clean dataframe into a table
CREATE TABLE Salmon (
    id BIGINT PRIMARY KEY,
    species VARCHAR,
    length_measurement_type VARCHAR,
    sampleyear BIGINT,
    sampledate DATE,
    length DOUBLE,
    weight VARCHAR,
    sex VARCHAR,
    salt_water_age DOUBLE,
    fresh_water_age DOUBLE,
    gear VARCHAR,
    stat_area DOUBLE,
    datasource VARCHAR,
    locationunique VARCHAR REFERENCES Salmon_location(locationunique)
);

INSERT INTO Salmon
SELECT * FROM read_csv('salmon_data_clean.csv', header=true, quote='"');



CREATE TABLE Salmon_location (
    id BIGINT,
    locationunique VARCHAR PRIMARY KEY,
    sasap_region_corrected VARCHAR,
    location VARCHAR ,
    aslprojecttype VARCHAR,
    district VARCHAR,
    sub_district VARCHAR,
    lat DOUBLE,
    lon DOUBLE,
    locationid VARCHAR
);

INSERT INTO Salmon_location
SELECT * FROM read_csv('location_clean.csv', header=true, quote='"');

CREATE TABLE Salmon_gear (
    id BIGINT,
    gear VARCHAR PRIMARY KEY,
    sasap_gear VARCHAR
);

INSERT INTO Salmon_gear
SELECT * FROM read_csv('gear_clean.csv', header=true, quote='"');

SELECT * FROM Salmon_gear;

-- view the new table
.table