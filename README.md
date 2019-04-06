# ETLProject
WashU Data Analytics Bootcamp ETL Project Repo

We plan to import a CSVs of emissions data by year from the EPA's Office of Highway Policy Information and obtain several CSVs from the Federal Highway Administration by scraping their website to get the data for the past 5 years. We will then remove the unnecessary columns and import them into several Mongo collections with the ability to organize by state and year. We'll remove the data before 2012 since we only want to focus on 5 years of data (2012-2017) for this projectc's scope. 

We're opting to do the project in Mongo rather than a SQL database because it allows us to take a few more freedoms with the ETL and not having to be as rigid with our structure. Right now, we don't anticipate having more than two Mongo collections -- one from the EPA pollution data and one from the FHWA automotive data.

The biggest piece of the data transformations is probably going to be the removal of the unnecessary columns. Additionally, we're going to add a "Percentage of total" field in the automotive database so we can quickly analyze to what extent each type of transportation (bus, truck, automotible, etc.) is represented. 

Additionally, I plan to host the Mongo database on one of my home servers so we don't have to worry about local databases. 
