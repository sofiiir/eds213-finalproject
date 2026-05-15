# Alaska Salmon Database 1922 - 2017

This repository holds the code to create a relational database to house data on Alaska salmon data from 1922 - 2017. The Alaska salmon data can be found on [The Knowledge Network for Biocomplexity (KNB) dataset](https://knb.ecoinformatics.org/view/doi:10.5063/F1707ZTM). This dataset has over 14 million entries hence it is not included directly in this repository.

Additionally, this repository houses code in SQL and R to investigate the count of each Salmon species that was collected through each project type. 

## Repository Structure

```{bash}
.
├── Alaskan-salmon1922-2017
│   ├── data
│   │   ├── ASLProjectType.csv
│   │   ├── ASL_master.csv
│   │   ├── ASL_processing.Rmd
│   │   ├── ASL_summary_byFWSWage.csv
│   │   ├── Locations_subdistricts_uniqueID.csv
│   │   └──gear.csv
│   └── metadata
├── README.md
├── alaska-salmon-database
│   ├── database.duckdb
│   ├── gear_clean.csv
│   ├── location_clean.csv
│   └── salmon_data_clean.csv
├── alaska-salmon-exploration.ipynb
├── alaska-salmon-master-cleaning.ipynb
├── alaska_salmon.qmd
├── environment.yml
├── final_project_database.sql
└── querying-salmon-database.sql
```

## Repository contents

- [alaska-salmon-master-cleaning.ipynb](https://github.com/sofiiir/eds213-finalproject/blob/main/alaska-salmon-master-cleaning.ipynb) : Jupyter notebook to clean the raw data.
- [final_project_database.sql](https://github.com/sofiiir/eds213-finalproject/blob/main/final_project_database.sql) : SQL code for the database creation
- [querying-salmon-database.sql](https://github.com/sofiiir/eds213-finalproject/blob/main/querying-salmon-database.sql) : SQL code to assess the Salmon catch by species for each project type
- [alaska_salmon.qmd](https://github.com/sofiiir/eds213-finalproject/blob/main/alaska_salmon.qmd): Quarto document to query the database for the total Salmon catch by species for each project type and visualization creation
- [environment.yml](https://github.com/sofiiir/eds213-finalproject/blob/main/environment.yml): Yaml file to create an environment to run the python code

## Data Access

The data is publicly available through [The Knowledge Network for Biocomplexity (KNB) dataset](https://knb.ecoinformatics.org/view/doi:10.5063/F1707ZTM). 

# References

Clark, J.,  Brenner, R., & Lewis, B. (2018). Compiled age, sex, and length data for Alaskan salmon, 1922-2017. Retrieved from [https://knb.ecoinformatics.org/view/doi:10.5063/F1707ZTM](https://knb.ecoinformatics.org/view/doi:10.5063/F1707ZTM) 

Oke, K.B., Cunningham, C.J., Westley, P.A.H. et al. Recent declines in salmon body size impact ecosystems and fisheries. Nat Commun 11, 4155 (2020). https://doi.org/10.1038/s41467-020-17726-z



