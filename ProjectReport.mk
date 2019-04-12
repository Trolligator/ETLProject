Project Report

Extract

We had two sources of data: an Excel spreadsheet of pollution records collected by EPA sorted by state and several CSVs of vehicle registration data from the Federal Highway Administration obtained by scraping their website. The state pollution records Excel spreadsheet was easily converted into a CSV file so we could more easily operate on it within Pandas. The HTML of the vehicle registration data was scraped directly from the FHWA's site then imported into a dataframe within Pandas.

Transform

Vehicle Data source: Scraped the table from each page, removed special characters (-, ., some other random unicode characters), removed extraneous characters from the state names, created a column of state abbreviations matched to the state names so the columns could match between data sources if necessary, removed unnecessary columns, iterated through all rows in the cleaned dataframe to import all the needed cells into a list of records, then input the list into the database. 

EPA Pollutant Data source: Dropped unnecessary columns, dropped all the rows where the pollutant code was not Carbon Monoxide, renamed all the needed columns, converted the number columns to floats, filled in the NaN values with 0, grouped the dataframe by state, created a new dataframe with the sums of all the CO for every state, reset the index from the grouping, iterated through every row in the dataframe and output them to a list of records, then input the list of records into the mongo database.


Load

We loaded all the data into a Mongo database for its flexibility. We loaded both data sources with similar methods (by importing lists of records) with compatible keys so they could be more easily joined, if needed. 