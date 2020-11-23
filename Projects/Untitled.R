library(tidyverse)

datapath <- "telecom.csv"

data <- read.csv(datapath)

summary(data)


str(data)
