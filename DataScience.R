setwd("C:/Users/gurka/OneDrive/Desktop/Constituency_Data_Science")
# Install the cancensus package
if (!requireNamespace("cancensus", quietly = TRUE)) {
  install.packages("cancensus")     #install cancensus package if not already installed
}
if (!requireNamespace("sf", quietly = TRUE)) {
  install.packages("sf")        #install sf package if not already installed
}
library(cancensus)  #load liraries
library(sf)
set_cancensus_cache_path("C:/Users/gurka/OneDrive/Desktop/Constituency_Data_Science/cache", install = TRUE, overwrite = TRUE)
# Replace "your_api_key_here" with your actual CensusMapper API key
options(cancensus.api_key = "CensusMapper_81f8c7d076abe1ae8033cd3913d72508")
options(cancensus.cache_path = "C:/Users/gurka/OneDrive/Desktop/Constituency_Data_Science/cache")
datasets <- list_census_datasets()
if (length(datasets) == 0) {
  print("No datasets found. Please check your API key and internet connection.")
} else {
  print(datasets)
}

#REMOVE RECALLED CACHED DATA
remove_recalled_cached_data()