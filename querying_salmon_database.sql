-- view the tables in the database
.table


SELECT * FROM Salmon LIMIT 5;
SELECT * FROM Salmon_location LIMIT 5;

-- What is the species count for each salmon species based on each project type throughout the Alaska salmon dataset from 1922-2017? 
SELECT species, aslprojecttype, COUNT(*) AS num_by_proj
    FROM Salmon JOIN Salmon_location 
    USING (locationunique)
    GROUP BY species, aslprojecttype;