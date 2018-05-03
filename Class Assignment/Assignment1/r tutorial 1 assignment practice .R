# Data visualization Workshop 1
# by Haoran 
# 2/2/2018
# R developed from S (statistics) by John Chambers

rm(list = ls())
url <- ("https://raw.githubusercontent.com/NicksonWeng/Data-visualization-class/master/hpi-data-2016.csv")
happy <- read.csv(url)

library(ggplot2)

# folder to save the plots
mainDir <- "d:/hell lot of plots" 
dir.create(file.path(mainDir))
setwd(file.path(mainDir))   

# LIST of IV
list.1 <- c("Footprint..gha.capita.","Inequality.of.Outcomes","Average.Life..Expectancy")
# List of DV
list.2 <- c("Average.Wellbeing..0.10.", "Average.Wellbeing..0.10.","Inequality.of.Outcomes")

# lIST OF Names of IV DV
list.3 <- c("Eco-Footprint","Inequality of Outcomes","Average Life Expectancy")
list.4 <- c("Average Wellbeing", "Average Wellbeing","Inequality of Outcomes")

# loop to plot
x = 1
while(x<4){
  
  plot1 <- ggplot(happy, aes_string(x = list.1[x], y = list.2[x]))+
    geom_point(aes(size = Happy.Planet.Index, color = Region))+
    scale_size(range = c(0, 10))+
    geom_smooth(se = FALSE)+
    labs(title = "Scatter Plot of HPI", subtitle = paste(list.4[x], "against", list.3[x], sep = " ", collapse = NULL),
         x = list.3[x], y = list.4[x])
  
  file.name1 <- paste ("plot of",list.3[x],"#", list.4[x],".jpeg", sep = " ", collapse = NULL)
  ggsave(file.name1, plot = plot1, device = "jpeg")
  x <- x+1
}

# following is the Code I tried to incorperate the abbreviations

# select the lines, and use "ctrl + shift + c" to de-comment or make them comment

# c.url <- "https://raw.githubusercontent.com/NicksonWeng/Data-visualization-class/master/Book1.xlsx.csv"
# country.list <- read.csv(c.url)
# colnames(country.list) <- c("Country", "ABV", "key")
# happy.ab <- merge(happy, country.list, by = "Country", all = TRUE)
#  # Inequality.of.Outcomes
# ggplot(happy.ab, aes(x = Average.Life..Expectancy, y = Inequality.of.Outcomes))+
#   geom_point(aes(size = Happy.Planet.Index, color = Region))+
#   scale_size(range = c(0, 10))+
#   geom_smooth(se = FALSE)+
#   geom_text(aes(label = happy.ab$ABV), size = 3)

