library(tidyverse)
install.packages("nycflights23")
library("nycflights23")
View(flights)
View(planes)
library("dplyr")
"plane_fligts" <- left_join (flights, planes, by = "tailnum")
View(plane_fligts)
ggplot(data = plane_fligts, aes(x = seats, y = dep_delay)) +
geom_point() +
geom_smooth(method = "lm")
summary(lm(dep_delay ~ seats, data = plane_fligts))

  