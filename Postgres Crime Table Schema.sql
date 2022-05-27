--Drop Table if exists crime_Table, crime_table;
--Drop table fbi_description;
--Drop table fbi_description;
CREATE TABLE Crime_Table (
	
    Id INT   NOT NULL,
    Case_Number VARCHAR   NOT NULL,
    Date VARCHAR   NOT NULL,
    Block VARCHAR   NOT NULL,
    IUCR VARCHAR   NOT NULL,
    Location_Description VARCHAR   NOT NULL,
    Arrest Boolean   NOT NULL,
	Domestic Boolean NOT NULL,
	Beat INT NOT NULL,
	District INT Not NULL,
	District_Name VARCHAR NOT NULL,
	District_Population INT NOT NULL,
	Ward VARCHAR NOT NULL,
	Community_Area INT NOT NULL,
	FBI_Code VARCHAR NOT NULL,
	Primary Key (id)
	
	);

CREATE TABLE FBI_Description (
    Code VARCHAR   NOT NULL,
    Description VARCHAR  NOT NULL,
    Primary Key (Code)
    );

CREATE TABLE IUCR_Codes (
    IUCR VARCHAR   NOT NULL,
    Primary_Description VARCHAR  NOT NULL,
	Secondary_Description VARCHAR NOT NULL,
	Primary key (IUCR)
	);
select * from Crime_Table; 
select * from iucr_codes;
select * from fbi_descriptions;