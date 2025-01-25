setwd("C:/Users/gurka/OneDrive/Desktop/Constituency_Data_Science")
# Install the cancensus package
install.packages("cancensus")
library(cancensus)
# Replace "your_api_key_here" with your actual CensusMapper API key
options(cancensus.api_key = "CensusMapper_81f8c7d076abe1ae8033cd3913d72508")
list_census_datasets()
# Set parameters for the query
region <- "Alberta"  # Province
riding <- "Edmonton Gateway"  # Your riding name
level <- "CSD"  # Level of geography (Census Subdivision)
