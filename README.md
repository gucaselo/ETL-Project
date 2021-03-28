# ETL Project
## Extract (E)
Utilized IMdb and Oscars Awards datasets from [kaggle](www.kaggle.com).

## Transform (T)
Used `Python` and `Pandas` inside `Jupyter Notebook` to clean the data by removing unwanted columns, missing rows and filtering categories.

In preparation for the Load step in this entire process called ETL, we generated multiple csv files to be utilized in a separate jupyter notebook file dedicated for that task alone. Some of the files created were based on the structure of the database:
-	IMdb dataset cleaned and filtered (source: IMdb dataset).
-	Oscars Awards with title ID extracted from IMdb (source: Both).
-	Director's name (source: IMdb dataset).
-	Oscars Awards categories with generated ID (source: Oscars Awards dataset).
-	Awarded with movie title ID and oscar ID (source: Oscars Awards dataset).
-	Awarded Directors with title ID and director ID (source: Oscars Awards dataset).

Following the three most common forms of Data Normalization (1NF, 2NF and 3NF), we created an ERD diagram to show the structure and relationship between our two data sources and what values we merged them on.

## Load (L)
Loaded the data into the relational database, PostGRES, after we finished cleaning it up. We chose a relational database because it provides the ability to generate meaningful information by joining tables. The ability to join tables gives us the ability to understand the relationships between the data. 

Database was manually created and named “movies_db” and by using classes we created our tables.



