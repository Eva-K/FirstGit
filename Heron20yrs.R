library(tidyverse)
Heron <- read.csv("C:/Users/RSRC/Documents/R/Heron/Heron20YRS_Rec_full.csv")
head(Heron)
summary(Heron)
names(Heron)
summary(Heron$fg)
#Algae   Hard Coral       Rock       Sand   Soft Coral 
ggplot(data = Heron, aes(y = Prop, x = year, zonation == "Reef Slope", Cluster_RS == North, color=fg)) + 
  geom_point(0.2) + 
  labs(y = "Percentage Cover (%)",
       x = "Year",
       title = "Heron Reef Scale",
       color = "Benthic Cover") +  # if color doesn't work, use "fill"
  theme_bw()

