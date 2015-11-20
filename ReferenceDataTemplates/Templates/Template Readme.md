The enclosing scripts can do two things:
1. Read a database table and create an XML file in the Prime Data folder.
2. Create a MERGE statement per XML file in preparation to load the data into the database.

#### Running Templates
The .tt templates can run be run by right-clicking on the .tt file and selecting _Run Custom Tool_.

### Create XML Data
In order to create an XML document for prime data follow the following steps.

1. Open Templates\\1 - Create XML File\\SQLConnection.tt and verify the connection settings. If using Windows Authentication ensure GetSecureLogin() = true; the GetSQLUsername() and GetSQLPassword() values are not necessary.
2. Open Templates\\Table Metadata.xml and add a row to the table(s) and add the table(s) to the XML. Ensure that you add the type(prime) and the indexkey (usually the primary key).
3. If running only one table then open the Templates\\1 - Create XML File\\Create XML Data.tt and change the tableName variable to the table that you wish to run. Then run the Create XML Data.tt file.
4. If refreshing the data for all of the tables then run the Templates\\1 - Create XML File\\Generate Prime Data XML.tt.

### Create MERGE Statements
This step will create the Scripts\\Post-Deployment\PrimeDataMerge.sql. In order to create the MERGE statements to deploy the data from XML to the database follow these steps.

1. Open Templates\\2 - Create Merge\\SQLConnection.tt and verify the connection settings. If using Windows Authentication ensure GetSecureLogin() = true; the GetSQLUsername() and GetSQLPassword() values are not necessary.
2. Run the Templates\\2 - Create Merge\\Generate Merge Statements.tt.

