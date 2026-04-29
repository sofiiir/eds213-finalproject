-- view the tables in the database
.table


SELECT * FROM Salmon LIMIT 5;
SELECT * FROM Salmon_location LIMIT 5;

SELECT species, aslprojecttype, COUNT(*) AS num_by_proj
    FROM Salmon JOIN Salmon_location 
    USING (locationunique)
    GROUP BY species, aslprojecttype;