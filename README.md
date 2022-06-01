# group5_proj2
### Project Description 
For the Extract, Transform and Load (ETL) project, we chose to use the data associated with crime in chicago, as a continuation of our earlier project. The csv files of the crime data had codes associated with the crime type namely, FBI code and IUCR code. As an objective of this project, we tried to add tables providing the further information for each of the FBI and IUCR codes. So, this project involves extrction of crime data, and the tables deciphering the FBI and IUCR crime codes, cleaning and transforming the data and creating a database of the data in postgress-SQL by using Python-pandas module and Postgress-SQL. 

<br>

## Contributors
Artem Iliushin, Bhumi Bhusal, Rafael Tem Pahs, Ryan Callaghan

<br>

## Data Sources

Data was pulled from:

 https://data.cityofchicago.org/Public-Safety <br>
 https://home.chicagopolice.org/statistics-data/data-requests/ <br>
https://home.chicagopolice.org/statistics-data/data-requests/Chicago-Police-Department-Illinois-Uniform-Crime-R/c7ck-438e/ <br>
CSV files can be found in input folder in the repo: https://github.com/bhubh/group5_proj2
<br>

## Technologies
Python-Pandas, Postgress-SQL
<br>

## Section I -Data Extraction

We obtained five different data files in CSV format from the city of Chicago public safety website. Three of the files have identical data structure and represent crime records for years 2019, 2020 and 2021. Part of the crimes records data is FBI and IUCR codes that FBI and Chicago police department use to classify various crimes. These files combined represent approximately 800,000 rows of crimes records for the part three years. The other files are a bit smaller and contain tables that break down law enforcement categorization across various types of crime.


<br>

## Section II- Data cleaning and Transformation

We used pandas “merge” function to combine the three files that represent the crimes data. We merged the tables on the outer join parameter. Once merged, we performed a series of cleansing functions. First, we removed coordinate columns as those were not relevant to our table for the project. Second, we utilized “drop_duplicates” and “dropna” functions to remove duplicate entries and any rows that have at least one blank column. Lastly, we utilized function “whitespace_remover” for all columns to ensure that string values are free of extra unwanted characters. By performing above steps, we ensured our data set is free of redundant records while maintaining data integrity.
<br>
After loaded the FBI and IUCR codes CSV files into the Pandas, Python was used to remove unnecessary columns from the original file and was checked and removed duplicates row to have a clean data and then was created a new FBI and ICUR code and export into the Output data folder.


<br>

## Section III- Data Loading (Creating Database)
For loading the cleaned data into the database, we generated ERD diagram for the three tables: one for crimes data, one for FBI codes and one for IUCR codes by using the ERD generator (https://www.quickdatabasediagrams.com/). The primary and foreign keys were defined for each table to indicate the inter-table relations. The codes were exported into Postgress-SQL to create the respective table in Postgress-SQL database. 
<br>
The ERD diagram for the tables is shown below.
<br>
![erd_png_final](https://user-images.githubusercontent.com/99154332/171301335-82457adb-ea98-4443-9b56-524900597fa8.png)

<br>
After creating the empty tables in postgress, we used Python-Pandas module and created connection through pandas to Postgress.  The column names for each table were changed to make sure they are identical to the column names in postgress-database tables. Then the pandas dataframe were used to load the data into the empty tables created in Postgress database. 

<br>
We ran queries to extract data from the different tables. The headshot of the tables have been added in the 'Output_data' folder.