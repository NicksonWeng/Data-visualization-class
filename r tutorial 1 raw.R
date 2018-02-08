# Data visualization Workshop 1
# by Haoran 
# 2/2/2018
rm(list = ls())

# Import Raw Data
url <- ("https://raw.githubusercontent.com/NicksonWeng/Data-visualization-class/master/hpi-data-2016.csv")
happy <- read.csv(url)

#libraries
library(ggplot2)



# LIST of IV
# list.1 <- c("Footprint..gha.capita.","Inequality.of.Outcomes","Average.Life..Expectancy")
# # List of DV
# list.2 <- c("Average.Wellbeing..0.10.", "Average.Wellbeing..0.10.","Inequality.of.Outcomes")
# lIST OF Names of IV DV
# list.3 <- c("Eco-Footprint","Inequality of Outcomes","Average Life Expectancy")
# list.4 <- c("Average Wellbeing", "Average Wellbeing","Inequality of Outcomes")


plot1 <- ggplot(happy, aes_string(x = "Footprint..gha.capita.", y = "Average.Wellbeing..0.10."))+
  geom_point(aes(size = Happy.Planet.Index, color = Region))+  # adding spots
  scale_size(range = c(0, 10))+  # re-sizing spots
  geom_smooth(se = FALSE)+  # add fit curve 
  labs(title = "Scatter Plot of HPI", subtitle = "Eco-Footprint against Average Wellbeing",
       x = "Eco-Footprint", y = "Average Wellbeing") # adding labels

# folder to save the plots
mainDir <- "d:/hell lot of plots"  #set a file path
dir.create(file.path(mainDir))  # create that folder
setwd(file.path(mainDir))    # set working directory to that folder
file.name1 <- "Eco-Footprint against Average Wellbeing.jpeg"  # set the file name
ggsave(file.name1, plot = plot1, device = "jpeg", dpi = 900)  # save the plot as jpeg
