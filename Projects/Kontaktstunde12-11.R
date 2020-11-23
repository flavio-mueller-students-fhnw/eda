library(tidyverse)

datapath <- "/Users/flavio/Desktop/DS/1.\ Semester/eda/Projects/telecom.csv"

data <- read.csv(datapath)

summary(data)

str(data)

head(data, 10)


sample_n(data, 3)

slice_sample(data, n = 3)


data %>%
  filter(is.na(MonthlyCharges))

data <- data %>%
  mutate(flag_complete_obs = complete.cases(data))

data %>%
  count(flag_complete_obs)

data %>% summarise(n_complete_obs = sum(flag_complete_obs))


sum(duplicated(data))


data <- data %>%
  mutate(TotalCharges = as.numeric(TotalCharges))


data <- data %>% 
  mutate(PaymentMethod = replace(PaymentMethod, PaymentMethod %in%  c("--", ""), NA))

median(data$MonthlyCharges, na.rm = TRUE)
