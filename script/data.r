install.packages("here")
library(tidyverse)
library(dplyr)
library(here)
 
raw <- read.csv(here("data", "raw", "Rateprof.csv"), header = TRUE)

# cleaning
raw$X <- NULL

raw$gender <- ifelse(raw$gender == "male", 1, 0)
raw$pepper <- ifelse(raw$pepper == "yes", 1, 0)
raw$discipline <- factor(raw$discipline)

write.csv(raw,"/Users/shanjiejiao/Desktop/Instructor Ratings Analysis/data/processed/cleaned.csv")

