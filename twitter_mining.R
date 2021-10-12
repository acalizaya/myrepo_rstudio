library(tidyverse)
library(rtweet)

data <- search_tweets(
  q = "coffee",
  n = 18000,
  include_rts = FALSE, 
  lang = "en",
  retryonratelimit = TRUE,
)

data <- data%>%flatten()

data%>%write_csv("12_10_2021.csv")