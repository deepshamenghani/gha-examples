library(httr)
library(fs)

print("Checking which files we have: ")
dir_ls()

# the URL
url_dowload = "https://www2.census.gov/programs-surveys/decennial/2020/data/apportionment/apportionment.csv"

# file name to save
file_name = paste("sigbm_download_", Sys.Date(),".csv")

print("Making a POST request and writing file on disk: ")
POST(url_download, write_disk(file_name, overwrite = TRUE))

print("Checking which files we have: ")
dir_l