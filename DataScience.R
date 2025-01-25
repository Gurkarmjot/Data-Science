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

# Retrieve Census data
# Replace "CA16" with the appropriate Census year (e.g., 2016)
data <- get_census(
  dataset = "CA16",  # 2016 Census
  regions = list(CSD = riding),  # Query the riding
  vectors = c("v_CA16_408", "v_CA16_409"),  # Specify census variables
  geo_format = "sf",  # Retrieve as spatial data
  level = level
)

# Display the first few rows of the data
head(data)
# Search for variables related to your query
search_census_vectors("income")
# Load visualization libraries
library(ggplot2)
library(tmap)

# Example: Plot the riding boundary
tm_shape(data) +
  tm_polygons("v_CA16_408", title = "Population")  # Replace with a variable of interest
