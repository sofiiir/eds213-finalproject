-- convert the clean dataframe into a table
-- create a salmon data table
CREATE TABLE Salmon (
    id BIGINT,
    salmon_id BIGINT PRIMARY KEY,
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
    locationunique VARCHAR 
);

-- load in the salmon data to the salmon table
INSERT INTO Salmon
SELECT * FROM read_csv('salmon_data_clean.csv', header=true, quote='"');


-- create a locations table
CREATE TABLE Salmon_location (
    id BIGINT,
    locationunique VARCHAR PRIMARY KEY,
    sasap_region_corrected VARCHAR,
    location VARCHAR ,
    aslprojecttype VARCHAR,
    districtid VARCHAR,
    sub_districtid VARCHAR,
    lat DOUBLE,
    lon DOUBLE,
    locationid VARCHAR
);

-- read in the locations data to the locations table
INSERT INTO Salmon_location
SELECT * FROM read_csv('location_clean.csv', header=true, quote='"');

-- create a gear table
CREATE TABLE Salmon_gear (
    id BIGINT,
    gear VARCHAR PRIMARY KEY,
    sasap_gear VARCHAR
);

-- load in the gear data into the gears table
INSERT INTO Salmon_gear
SELECT * FROM read_csv('gear_clean.csv', header=true, quote='"');


-- view the new tables
.table