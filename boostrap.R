library(tidyverse)
library(ggplot2)
library(dplyr)
library(tidyr)

df <- read.csv('errorcalc.csv')


d <- ggplot(df(truePercent, reportedPercent)) + geom_point()

# d + stat_summary(fun.data="", colour="", size=2)


