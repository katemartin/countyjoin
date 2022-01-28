#install packages: dply

library(dplyr)

counties <-read.csv("countypop.csv")
reports <-read.csv("who_reports.csv")

joined <- left_join(reports, counties, by = c("county"="county", "Start_Year"="year"))

glimpse(joined)
  
write.csv(joined,'who_reports_joined.csv',na="")
