library(tidyverse)
library(ggplot2)
library(dplyr)
library(tidyr)

df <- read.csv('errorcalc.csv')


# ggplot(aes(vis, log(abs(guess-truepercent), 2) ) ) + geom.point()

d <- ggplot(df(vis, guess)) + geom_point()

# d + stat_summary(fun.data="mean_cl_boot", colour=red"", size=2)

d + coord_flip()


