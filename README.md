# group5_proj2
### Project Description 
For the Extract, Transform and Load (ETL) project, we chose to use the data associated with crime in chicago, as a continuation of our earlier project. The csv files of the crime data had codes associated with the crime type namely, FBI code and IUCR code. As an objective of this project, we tried to add tables providing the further information for each of the FBI and IUCR codes. So, this project involves extrction of crime data, and the tables deciphering the FBI and IUCR crime codes, cleaning and transforming the data and creating a database of the data in postgress-SQL by using Python-pandas module and Postgress-SQL. 

<br>

## Contributors
Artem Iliushin, Bhumi Bhusal, Rafael Tem Pahs, Ryan Callaghan

<br>

## Data Sources

Data was pulled from: https://data.cityofchicago.org/Public-Safety  and .....<br>
CSV files can be found in input folder in the repo: https://github.com/bhubh/group5_proj2
<br>

## Technologies
Python-Pandas, Postgress-SQL
<br>

## Section I -Data Extraction


<br>

## Section II- Data cleaning and Transformation


<br>

## Section III- Data Loading (Creating Database)
For loading the cleaned data into the database, we generated ERD diagram for the three tables: one for crimes data, one for FBI codes and one for IUCR codes by using the ERD generator (https://www.quickdatabasediagrams.com/). The primary and foreign keys were defined for each table to indicate the inter-table relations. The codes were exported into Postgress-SQL to create the respective table in Postgress-SQL database. 

<br>
After creating the empty tables in postgress, we used Python-Pandas module and created connection through pandas to Postgress.  The column names for each table were changed to make sure they are identical to the column names in postgress-database tables. Then the pandas dataframe were used to load the data into the empty tables created in Postgress database. 

