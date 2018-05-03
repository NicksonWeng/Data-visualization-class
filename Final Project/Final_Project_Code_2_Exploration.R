# process GSS DATA for Data visualzation final project 
# 4/30/2018
# Weng Haoran

##########################################################################
#preprocessing
##########################################################################
rm(list = ls())
library(Hmisc) 
library(plyr) # revalue
library(tidyr)
library(reshape2)
#path of file
path <- "D:/R_Projects/Regression_Immigration_data_with_gss/GSS DATA"
setwd("D:/R_Projects/Regression_Immigration_data_with_gss/GSS DATA")
data.list <- list.files(path)
### IMPORTANT !!!!! ####
### Please put all GSS data and no other files in a single directory as working directory for replication


### Alternative cloud database ###
### Not yet available since iteration is written in local file, can be re-wrote.
### Raw data on cloud would be too slow for iteration.

# ### patch extract data, extract only listed variables ###
# #DVS AND Key DV
# list.of.dv <- c("LETIN","IMMECON","IMMUNEMP","IMMUNITE","IMMFARE","IMMPUSH","IMMWRKUP","UNDOCWRK","UNDOCCOL","UNDOCKID")
# #IVS Control var
# list.control <- c("AGE", "SEX", "RACE")
# #Testing IV
# list.interest <- c("ECONPAST", "INCOME")
# # ECONPAST HAS NATIONAL ECONOMY IMPROVED LAST YEAR (good)
# # PASTUP DEGREE OF IMPROVEMENT IN NATIONAL ECONOMY
# # PASTDOWN DEGREE NATIONAL ECONOMY HAS GOTTEN WORSE
# list.fear <- c("FEAR", "OWNGUN")
# # OWNGUN HAVE GUN IN HOME
# # PISTOL PISTOL OR REVOLVER IN HOME
# # SHOTGUN SHOTGUN IN HOME
# # RIFLE RIFLE IN HOME
# # ROWNGUN DOES GUN BELONG TO R
# list.political <- c("POLVIEWS")
# # POLVIEWS THINK OF SELF AS LIBERAL OR CONSERVATIVE
# # POLVIEWY LIBERAL OR CONSERVATIVE-VERSION Y
# # POLVIEWX LIBERAL OR CONSERVATIVE-VERSION X
# list.cultural <- c("ENGTEACH", "ENGBALLT", "ENGOFFCL", "BILINGED")
# #  OPINION ON TEACHING CLASSES ONLY IN ENGLISH
# #  ENGBALLT ATTITUDE TOWARD PRINTING BALLOTS ONLY IN ENGLISH
# #  ENGOFFCL FAVOR LAW MAKING ENGLISH THE OFFICIAL LANGUAGE
# #  BILINGED SUPPORT OR OPPOSE BILINGUAL EDUCATION
# list.education <- c("EDUC")
# #YEAR OF EDUCATION
# 
# list.of.iv <- c(list.control, list.interest, list.fear,list.political,list.cultural,list.education)
# list.of.var <- c(list.of.dv,list.of.iv)
# 
# write(list.of.var, file = "D:/R_Projects/Regression_Immigration_data_with_gss/varlist.txt")


#list of variable used
url.var <- "https://raw.githubusercontent.com/NicksonWeng/Data-visualization-class/master/Final%20Project/varlist.txt"
list.of.var <- scan(url.var, character(), quote = "")

ds <- rbind(list.of.var,seq(1,length(list.of.var),1))

for (e in 1:length(data.list)){
  gssdataframe <- spss.get(toString(data.list[e],use.value.labels=TRUE))
  ds_column <- c()
  for (i in 1:length(list.of.var)){
    x <- list.of.var[i]
    return <- toString(x) %in% colnames(gssdataframe)
    ds_column <- c(ds_column,return)
    print(x)
  }
  ds <- rbind(ds,ds_column)
  print(e)
}

ds1 <- as.data.frame(ds)
colnames(ds1) <- list.of.var
ds1.5 <- ds1[-(1:2),]

ds1.5$year<- data.list
ds2 <- ds1[,c(length(colnames(ds1.5)),seq(1:(length(colnames(ds1.5))-1)))]


# reshape ds1.5 for has letin
# ds1.5$has.LETIN <- FALSE
# ds1.5$has.LETIN[ds1.5$LETIN == TRUE | ds1.5$LETIN1 == TRUE | ds1.5$LETIN1A == TRUE]<- TRUE
# ds1.5 <- ds1.5[,-(1:3)]
# ds1.5 <- ds1.5[,c(38, seq(1,37,1))]
# Plot try to show the contain pattern of dataset.


library(reshape2)
Overview <- reshape2::melt(ds1.5,"year", varnames = c("y", "x"), value.name = "value")
Overview$type[Overview$variable %in% list.of.var[1:3]] <- "Let In"
Overview$type[Overview$variable %in% list.of.var[4:20]] <- "Immigrant related Question"
Overview$type[Overview$variable %in% list.of.var[21:25]] <- "Illegal Immigrant related Question"
Overview$type[Overview$variable %in% list.of.var[26:34]] <- "Personal Concerns"
Overview$type[Overview$variable %in% list.of.var[35:39]] <- "Control Variables"

Overview$value.na <- Overview$value
Overview$value.na[Overview$value == FALSE] <- NA
Overview$type[Overview$value == FALSE] <- NA

Overview <- separate(Overview, year, c("year","file"), sep = "\\.")




#Keep working data
working.data <- c("GSS1994.sav","GSS1996.sav", "GSS2000.sav","GSS2004.sav", "GSS2006.sav", "GSS2008.sav", "GSS2010.sav", "GSS2012.sav",
                   "GSS2014.sav", "GSS2016.sav")
rm(list=setdiff(ls(), c("working.data","Overview")))
# read all working data


#Plot heat map
library(RColorBrewer)
myColors <- brewer.pal(5,"Set1")
heat.map <- ggplot(Overview, aes(x = variable, y = year)) + 
  geom_tile(aes(fill = factor(type)),size=1) +
  scale_fill_manual(name = "Categories",values = myColors,
                    labels = c("Control Variables",
                               "Illegal Immigration",
                               "Legal Imiigration",
                               "Key Variable",
                               "Personal Concerns")) +
  theme_bw() +
  theme(axis.text.x = element_text(angle=90, vjust=0.6,size=8))+
  labs(title="Availability of Variable in Longitudinal Data", 
       subtitle="Heat map of Immigration related Questions in GSS data",
       caption="Data Source； General Social Survey",
       x="",
       y="")

# setwd("D:/R_Projects/Regression_Immigration_data_with_gss/GSS DATA")

yearlist <- c(1994,1996,2000,2004,2006,2008,2010,2012,2014,2016)
for (e in 1:length(working.data)){
  gssdataframe <- spss.get(toString(working.data[e],use.value.labels=TRUE))
  gssdataframe$year <- yearlist[e]
  assign(paste("GSS",yearlist[e],sep = ""), gssdataframe)
}

# Drop LETIN1 FROM 2014
drops <- c("LETIN1")
GSS2014 <- GSS2014[ , !(names(GSS2014) %in% drops)]


for (e in 1:length(working.data)){
  #Get data
  gssdataframe <- get(paste("GSS",yearlist[e],sep = ""))
  if("LETIN" %in% colnames(gssdataframe)){  
  gssdataframe$LETIN.all[gssdataframe$LETIN == "INCREASED A LOT"] <- 1
  gssdataframe$LETIN.all[gssdataframe$LETIN == "INCREASED A LITTLE"] <- 0.5
  gssdataframe$LETIN.all[gssdataframe$LETIN == "SAME AS NOW"] <- 0
  gssdataframe$LETIN.all[gssdataframe$LETIN == "DECREASED A LITTLE"] <- -0.5
  gssdataframe$LETIN.all[gssdataframe$LETIN == "DECREASED A LOT"] <- -1
  # gssdataframe$LETIN.all <- as.factor(gssdataframe$LETIN.all)
  print(paste("GSS",yearlist[e]," has LETIN",sep = ""))
  }
  # recode LETIN1
  if("LETIN1" %in% colnames(gssdataframe)){  
  gssdataframe$LETIN.all[gssdataframe$LETIN1 == "INCREASED A LOT"] <- 1
  gssdataframe$LETIN.all[gssdataframe$LETIN1 == "INCREASED A LITTLE"] <- 0.5
  gssdataframe$LETIN.all[gssdataframe$LETIN1 == "REMAIN THE SAME AS IT IS"] <- 0
  gssdataframe$LETIN.all[gssdataframe$LETIN1 == "REDUCED A LITTLE"] <- -0.5
  gssdataframe$LETIN.all[gssdataframe$LETIN1 == "REDUCED A LOT"] <- -1
  # gssdataframe$LETIN.all <- as.factor(gssdataframe$LETIN.all)
  print(paste("GSS",yearlist[e]," has LETIN1",sep = ""))
  }
  if("LETIN1A" %in% colnames(gssdataframe)){  
  gssdataframe$LETIN.all[gssdataframe$LETIN1A == "Increased a lot"] <- 1
  gssdataframe$LETIN.all[gssdataframe$LETIN1A == "Increased a little"] <- 0.5
  gssdataframe$LETIN.all[gssdataframe$LETIN1A == "Remain the same as it is"] <- 0
  gssdataframe$LETIN.all[gssdataframe$LETIN1A == "Reduced a little"] <- -0.5
  gssdataframe$LETIN.all[gssdataframe$LETIN1A == "Reduced a lot, or"] <- -1
  # gssdataframe$LETIN.all <- as.factor(gssdataframe$LETIN.all)
  print(paste("GSS",yearlist[e]," has LETIN1A",sep = ""))
  }
  
  #Recode Race
  if("RACE" %in% colnames(gssdataframe)){ 
    gssdataframe$WHITE[gssdataframe$RACE == "WHITE"] <- 1
    gssdataframe$WHITE[is.na(gssdataframe$RACE)] <- NA
    gssdataframe$WHITE[gssdataframe$RACE != "WHITE"] <- 0
    print(paste("GSS",yearlist[e]," has RACE",sep = ""))
  }
  if("RACECEN1" %in% colnames(gssdataframe)){ 
    gssdataframe$WHITE[gssdataframe$RACECEN1 == "WHITE"] <- 1
    gssdataframe$WHITE[is.na(gssdataframe$RACECEN1)] <- NA
    gssdataframe$WHITE[gssdataframe$RACECEN1 != "WHITE"] <- 0
    print(paste("GSS",yearlist[e]," has RACECEN1",sep = ""))
  }
  #Recode AGE.r
  if("AGE" %in% colnames(gssdataframe)){ 
    gssdataframe$AGE.r <- revalue(gssdataframe$AGE, c("89 OR OLDER" = "89"))
    gssdataframe$AGE.r <- as.numeric(as.character(gssdataframe$AGE.r))
    print(paste("GSS",yearlist[e]," has AGE Processed",sep = ""))
  }
  
  #Recode GENDER
  if("SEX" %in% colnames(gssdataframe)){ 
    gssdataframe$MALE[gssdataframe$SEX == "MALE"] <- 1
    gssdataframe$MALE[gssdataframe$SEX == "FEMALE"] <- 0
    # gssdataframe$MALE <- factor(gssdataframe$MALE)
        print(paste("GSS",yearlist[e]," has MALE Processed",sep = ""))
  }
  
  #Recode Poliview
  if("POLVIEWS" %in% colnames(gssdataframe)){ 
    gssdataframe$POLVIEWS.r[gssdataframe$POLVIEWS == "EXTREMELY LIBERAL"] <- 3
    gssdataframe$POLVIEWS.r[gssdataframe$POLVIEWS == "LIBERAL"] <- 2
    gssdataframe$POLVIEWS.r[gssdataframe$POLVIEWS == "SLIGHTLY LIBERAL"] <- 1
    gssdataframe$POLVIEWS.r[gssdataframe$POLVIEWS == "MODERATE"] <- 0
    gssdataframe$POLVIEWS.r[gssdataframe$POLVIEWS == "CONSERVATIVE"] <- -2
    gssdataframe$POLVIEWS.r[gssdataframe$POLVIEWS == "EXTRMLY CONSERVATIVE"] <- -3
    gssdataframe$POLVIEWS.r[gssdataframe$POLVIEWS == "SLGHTLY CONSERVATIVE"] <- -1
    # gssdataframe$POLVIEWS.r<- factor(gssdataframe$POLVIEWS.r)
    print(paste("GSS",yearlist[e]," has POLVIEWS Processed",sep = ""))
  }
  
  #Recode Education
  if("EDUC" %in% colnames(gssdataframe)){ 
    gssdataframe$EDUC <- as.numeric(gssdataframe$EDUC)
    gssdataframe$EDUC.r[gssdataframe$EDUC < 16] <- 0
    gssdataframe$EDUC.r[gssdataframe$EDUC > 15] <- 1
    gssdataframe$EDUC.r <- as.factor(gssdataframe$EDUC.r)
    print(paste("GSS",yearlist[e]," has EDUC Processed",sep = ""))
  }
  
  
  #Print processed data
  print(paste("Has Processed ","GSS",yearlist[e],sep = ""))
  assign(paste("GSS",yearlist[e],sep = ""), gssdataframe)
}

# # Run Regression
# result <- c()
# for (e in 1:length(working.data)){
#   #Get data
#   gssdataframe <- get(paste("GSS",yearlist[e],sep = ""))
#   fit <- lm(LETIN.all ~ MALE + AGE.r + WHITE + POLVIEWS.r, gssdataframe)
#     list <- coefficients(fit)
#   list <- list[-1]
#   list <- c(yearlist[e], as.numeric(list))
#   result <- c(result, list)
# }
# 
# reg.ds <- t(structure(result, .Dim= c(5L, 10L),.Dimnames = list(c("n1", "n2", "n3", "n4", "n5"),NULL)))
# 
# reg.ds1 <- reshape2::melt(reg.ds, n1 , varnames = c("year", "Value"), value.name = "value")
# reg.ds1 <- as.data.frame(reg.ds1)
# reg.ds1 <- reg.ds1[-(1:10),]
# reg.ds1$year <- rep(yearlist,4)
# reg.ds1$Value <- c(rep("Male",10),rep("AGE",10),rep("WHITE",10),rep("Liberal",10))
# 
# ggplot(reg.ds1, aes(x = year, y = value))+
#   geom_line(aes(x = year, y = value, color = Value))

library(lm.beta)
result <- c()
significance <- c()
lower.band <- c()
higher.band <- c()
full.frequency <- c()
LETIN.frequency <- c()
list.frequency <- list <- c("LETIN.all", "WHITE", "MALE", "POLVIEWS.r", "EDUC.r")
for (e in 1:length(working.data)){
  #working data
  gssdataframe <- get(paste("GSS",yearlist[e],sep = ""))
  #Get Regression coefficent
  fit <- lm(LETIN.all ~ MALE + AGE.r + WHITE + POLVIEWS.r + EDUC.r, gssdataframe)
  list <- coefficients(fit)
  list <- coefficients(lm.beta(fit))
  list <- list[-1]
  list <- c(yearlist[e], as.numeric(list))
  result <- c(result, list)
  # Get regression significance
  s <- data.frame(summary(fit)$coef[,4])
  colnames(s) <- "p_value"
  s$star[s$p_value >= 0.1] <- 0
  s$star[s$p_value < 0.1] <- 1
  s$star[s$p_value < 0.05] <- 2
  s$star[s$p_value < 0.01] <- 3
  s <- s[-1,]
  star <- c(yearlist[e], s$star)
  significance <- c(significance, star)
  # Get regression confidence interval
  
  lower <- confint(lm.beta(fit), level = 0.95)[,1]
  higher <- confint(lm.beta(fit), level = 0.95)[,2]
  higher <- higher[-1]
  lower <- lower[-1]
  higher1 <- c(yearlist[e], higher)
  lower1 <- c(yearlist[e], lower)
  lower.band <- c(lower.band, lower1)
  higher.band <- c(higher.band, higher1)
  # Factorize
  gssdataframe$POLVIEWS.r[gssdataframe$POLVIEWS.r > 0] <- 1
  gssdataframe$POLVIEWS.r[gssdataframe$POLVIEWS.r < 0] <- -1
  gssdataframe$POLVIEWS.r[gssdataframe$POLVIEWS.r == 0] <- 0
  gssdataframe$LETIN.all[gssdataframe$LETIN.all > 0] <- 1
  gssdataframe$LETIN.all[gssdataframe$LETIN.all < 0] <- -1
  gssdataframe$LETIN.all[gssdataframe$LETIN.all == 0] <- 0
  
  #Get percentile change in LETIN
  LETIN.frequency <- rbind(summary(factor(gssdataframe$LETIN.all)),LETIN.frequency)
  
  #Get Frequency distribution
  iv.table <- c()
  column <- c()
  gssdataframe$LETIN.all <- factor(gssdataframe$LETIN.all)
  for (i in 2:length(list.frequency)){
    gssdataframe[,list.frequency[i]] <- factor(gssdataframe[,list.frequency[i]])
    x <- levels(na.omit(gssdataframe[,list.frequency[i]]))
    iv.table<- c(iv.table, x)
    for (z in 1:length(x)){
      a <- x[z]
      sub <- subset(gssdataframe, gssdataframe[,list.frequency[i]] == a)
      summary.a <- as.numeric(summary(sub$LETIN.all, digits = 3))
      column <- rbind(column, c(a, summary.a[1]/sum(summary.a),summary.a[3]/sum(summary.a),sum(summary.a)))
    }
  }
  Value <- c("non-white", "white", "Female", "Male", "Conservative", "Neutral", "Liberal", "No college", "College")
  column <- cbind(column, Value)
  column <- as.data.frame(column)
  column$Year <- yearlist[e]
  full.frequency <- rbind(full.frequency, column)


  print(paste("Year", yearlist[e], "Processed", sep = ""))
}

#delete
# list <- c("LETIN.b", "MALE.r", "WHITE", "BLACK", "AGE.r1", "ECONPAST", "INCOME.r", "FEAR", "OWNGUN", "POLVIEWS.r", "ENGTEACH", "ENGBALLT", "ENGOFFCL", "BILINGED", "EDUC.r")
# newdata2 <- newdata1[,list]
# 
# iv.table <- c()
# column <- c()
# for (i in 2:length(list)){
#   x <- levels(na.omit(newdata2[,list[i]]))
#   iv.table<- c(iv.table, x)
#   for (e in 1:length(x)){
#     a <- x[e]
#     sub <- subset(newdata2, newdata2[,list[i]] == a)
#     summary.a <- as.numeric(summary(sub$LETIN.b, digits = 3))
#     column <- rbind(column, c(a, summary.a[1]/sum(summary.a),summary.a[2]/sum(summary.a),sum(summary.a)))
#   }
# }
#delete







# Reshape coefficients into matrix
reg.ds <- t(structure(result, .Dim= c(6L, 10L),.Dimnames = list(c("n1", "n2", "n3", "n4", "n5", "n6"),NULL)))
reg.ds1 <- reshape2::melt(reg.ds, n1 , varnames = c("year", "Value"), value.name = "value")
reg.ds1 <- as.data.frame(reg.ds1)
reg.ds1 <- reg.ds1[-(1:10),]
reg.ds1$year <- rep(yearlist,5)
reg.ds1$type <- c(rep("Male",10),rep("AGE",10),rep("WHITE",10),rep("Liberal",10),rep("College",10))

# Rshape stars p_value ???
star.ds <- t(structure(significance, .Dim= c(6L, 10L),.Dimnames = list(c("n1", "n2", "n3", "n4", "n5", "n6"),NULL)))
star.ds1 <- reshape2::melt(star.ds, n1 , varnames = c("year", "Value"), value.name = "value")
star.ds1 <- as.data.frame(star.ds1)
star.ds1 <- star.ds1[-(1:10),]
star.ds1$year <- rep(yearlist,5)
star.ds1$type <- c(rep("Male",10),rep("AGE",10),rep("WHITE",10),rep("Liberal",10),rep("College",10))

reg.ds1$star <- star.ds1$value

# Reshape Confidence Interval
higher.band <- t(structure(higher.band, .Dim= c(6L, 10L),.Dimnames = list(c("n1", "n2", "n3", "n4", "n5", "n6"),NULL)))
higher.band1 <- reshape2::melt(higher.band, n1 , varnames = c("year", "Value"), value.name = "value")
higher.band1 <- as.data.frame(higher.band1)
higher.band1 <- higher.band1[-(1:10),]
higher.band1$year <- rep(yearlist,5)
higher.band1$type <- c(rep("Male",10),rep("AGE",10),rep("WHITE",10),rep("Liberal",10),rep("College",10))

reg.ds1$higher.band <- higher.band1$value

lower.band <- t(structure(lower.band, .Dim= c(6L, 10L),.Dimnames = list(c("n1", "n2", "n3", "n4", "n5", "n6"),NULL)))
lower.band1 <- reshape2::melt(lower.band, n1 , varnames = c("year", "Value"), value.name = "value")
lower.band1 <- as.data.frame(lower.band1)
lower.band1 <- lower.band1[-(1:10),]
lower.band1$year <- rep(yearlist,5)
lower.band1$type <- c(rep("Male",10),rep("AGE",10),rep("WHITE",10),rep("Liberal",10),rep("College",10))

reg.ds1$lower.band <- lower.band1$value

# Read Immigration data
url.img <- "https://raw.githubusercontent.com/NicksonWeng/Data-visualization-class/master/Final%20Project/MPI-Data-Hub_USImmigFlow_since1820_2016.csv"
immigration_ds <- read.csv(url.img)
colnames(immigration_ds) <- c("year", "immigration")

immigration_ds$immigration.sd <- (immigration_ds$immigration - mean(immigration_ds$immigration)) / sd(immigration_ds$immigration)

reg.ds1 <- merge(reg.ds1, immigration_ds, by = intersect("year", "year"), all = TRUE)

reg.ds1$immigration.sd <- (reg.ds1$immigration.sd+3)/100
reg.ds1$immigration.sd1 <- reg.ds1$immigration.sd
reg.ds1$immigration.sd1[is.na(reg.ds1$Value)] <- reg.ds1$immigration.sd[is.na(reg.ds1$Value)]*5
#add immigration data
reg.ds1$immigration.k <- signif((reg.ds1$immigration/1000),3)


#Plotting the coefficients
myColors <- brewer.pal(5,"Set1")
repeated.coefficient.plot <- ggplot(reg.ds1, aes(x = year)) +
  geom_bar(aes(y= immigration.sd1),stat = "identity", fill = "lightgrey"
           ) +
  geom_line(aes(y = value, color = factor(type)),size=1.2) +
  geom_point(aes(y = value, shape = factor(star)))+
  geom_errorbar(aes(ymin= lower.band, ymax=higher.band ,colour=factor(type)), width=.1) +
  scale_shape_manual(values=c(16, 17, 15, 8),name = "Significance Level",
                       labels = c("No significance", "< 0.1", "< 0.05", "<0.01"))+
  scale_color_manual(values = myColors,name = "Variable Names",
                     labels = c("Age", "College Degree", "Liberal", "Male", "White")) +
  geom_text(aes(y= ((immigration.sd+0.8/100)*4)),label = reg.ds1$immigration.k, vjust = -0.3) +
  theme_bw() + 
  labs(title="Regression Coefficients by year and Immigration Number", 
       subtitle="Assessing effects on attitude toward immigration",
       caption="Immigration Number by Throusand\nData Source； General Social Survey",
       x="Year",
       y="Standardized Coefficients")
  
# Focused Plot on Education and Political View
reg.ds2 <- reg.ds[, -(2:4)]
reg.ds2.1 <- reshape2::melt(reg.ds2, n1 , varnames = c("year", "Value"), value.name = "value")
reg.ds2.1 <- as.data.frame(reg.ds2.1)
reg.ds2.1 <- reg.ds2.1[-(1:10),]
reg.ds2.1$year <- rep(yearlist,2)
reg.ds2.1$type <- c(rep("Liberal",10),rep("College",10))
reg.ds2.1 <- merge(reg.ds2.1, immigration_ds, by = intersect("year", "year"), all = TRUE)
#
reg.ds2.1$immigration.sd <- (reg.ds2.1$immigration.sd+7)/80
reg.ds2.1$immigration.sd1 <- reg.ds2.1$immigration.sd
reg.ds2.1$immigration.sd1[is.na(reg.ds2.1$Value)] <- reg.ds2.1$immigration.sd[is.na(reg.ds2.1$Value)]*2
#add immigration data
reg.ds2.1$immigration.k <- signif((reg.ds2.1$immigration/1000),3)

myColors1 <- myColors[2:3]
focused.coefficients <- ggplot(reg.ds2.1, aes(x = year)) +
  geom_bar(aes(y= immigration.sd1),stat = "identity", fill = "lightgrey"
  ) +
  geom_line(aes(y = value, color = factor(type)),size=1.2) +
  scale_color_manual(name = "Variable Names",
                       labels = c("College Degree", "Liberal"),values = myColors1) +
  theme_bw() + 
  labs(title="Change of Regression Coefficients by year and Immigration Number", 
       subtitle="Assessing effects on attitude toward immigration",
       caption="Immigration Number by Throusand\nData Source； General Social Survey",
       x="Year",
       y="Standardized Coefficients")

# Plot frequency change for LETIN
LETIN.frequency <- as.data.frame(LETIN.frequency)
colnames(LETIN.frequency)<- c("decrease", "same", "increase", "NAs")
LETIN.frequency$Number <- LETIN.frequency[,1] + LETIN.frequency[,2] + LETIN.frequency[,3]
LETIN.frequency$Fre.de <- round(LETIN.frequency$decrease /LETIN.frequency$Number, digit = 3)
LETIN.frequency$Fre.in <- round(LETIN.frequency$increase /LETIN.frequency$Number, digit = 3)
LETIN.frequency$year <- rev(yearlist)
LETIN.frequency.in <- LETIN.frequency[, c(7,8)]
LETIN.frequency.in$Change_value <- "Increase"
LETIN.frequency.de <- LETIN.frequency[, c(6,8)]
LETIN.frequency.de$Fre.de <- -LETIN.frequency.de$Fre.de
LETIN.frequency.de$Change_value <- "Decrease"
colnames(LETIN.frequency.in) <- c("value", "Year", "Change_value")
colnames(LETIN.frequency.de) <- c("value", "Year", "Change_value")
LETIN.frequency <- rbind(LETIN.frequency.in,LETIN.frequency.de)
LETIN.frequency$value <- LETIN.frequency$value * 100

letin_plot <- ggplot(LETIN.frequency, aes(x = Year, y = value, fill = Change_value)) +
  geom_bar(data = subset(LETIN.frequency, Change_value == "Increase"), stat = "identity",width = 0.5, position = position_dodge(width = 1)) + 
  geom_bar(data = subset(LETIN.frequency, Change_value == "Decrease"), stat = "identity",width = 0.5, position = position_dodge(width = 1)) +
  scale_fill_manual(name = "Acceptive toward /nImmigration",
                     labels = c("Want less", "Want More"),values = myColors1)+
  scale_y_continuous(breaks = seq(-70, 70, 5),
                     labels = paste0(as.character(c(seq(70, 0, -5), seq(5, 70,5))), "%")) +
  scale_x_continuous(breaks = seq(1994, 2016,2), labels = seq(1994, 2016,2))+
  coord_flip()+
  theme_bw() +
  theme(axis.title.x=element_blank(),axis.title.y=element_blank()) +
  labs(title="Frequency distribution of LETIN", 
       subtitle="Percentage change of people's acceptance toward immigration",
       caption="Data Source； General Social Survey")
letin_plot 
# Plot demographical change for supports in different educational level/political view
full.frequency <- full.frequency[,-1]
colnames(full.frequency) <- c("Decrease", "Increase", "Number", "Value", "Year")
full.frequency$Decrease <- round(as.numeric(as.character(full.frequency$Decrease)), digit = 3)* 100
full.frequency$Increase <- round(as.numeric(as.character(full.frequency$Increase)), digit = 3)* 100
full.frequency$Decrease <- -full.frequency$Decrease

full.frequency.in <- full.frequency[,-1]
full.frequency.in$Change <- "Increase"
colnames(full.frequency.in) <- c("frequency", "Number", "Value", "Year", "Change")
full.frequency.de <- full.frequency[,-2]
full.frequency.de$Change <- "Decrease"
colnames(full.frequency.de) <- c("frequency", "Number", "Value", "Year", "Change")
full.frequency <- rbind(full.frequency.in,full.frequency.de)
full.frequency$Change_value <- paste(full.frequency$Change, full.frequency$Value, sep = "_")




#Generating plot for comparisom
full.frequency$Change_value_combine[full.frequency$Change_value == "Increase_Liberal" | full.frequency$Change_value == "Increase_College" ] <- "Increase_college_Liberal"
full.frequency$Change_value_combine[full.frequency$Change_value == "Decrease_Liberal" | full.frequency$Change_value == "Decrease_College" ] <- "Decrease_college_Liberal"
fre.co.lib <- ggplot(full.frequency, aes(x = Year, y = frequency, fill = Change_value)) +
  geom_bar(data = subset(full.frequency, Change_value_combine == "Increase_college_Liberal" & Change == "Increase"), stat = "identity",width = 0.5, position = position_dodge(width = 1)) + 
  geom_bar(data = subset(full.frequency, Change_value_combine == "Decrease_college_Liberal" & Change == "Decrease"), stat = "identity",width = 0.5, position = position_dodge(width = 1)) +
  scale_fill_discrete(name = "Groups",
                    labels = c("College Decrease", "Liberal Decrease", "College Increase", "Liberal Increase")) +
  scale_y_continuous(breaks = seq(-50, 50, 5),
                     labels = paste0(as.character(c(seq(50, 0, -5), seq(5, 50,5))), "%")) +
  scale_x_continuous(breaks = seq(1994, 2016,2), labels = seq(1994, 2016,2))+
  coord_flip()+
  theme_bw() +
  theme(axis.title.x=element_blank(),axis.title.y=element_blank()) +
  labs(title="Frequency distribution of LETIN among Liberal/College Educated Group",
       subtitle="Percentage change of people's acceptance toward immigration",
       caption="Data Source； General Social Survey")

full.frequency$Change_value_combine[full.frequency$Change_value == "Increase_Conservative" | full.frequency$Change_value == "Increase_No college" ] <- "Increase_nocollege_conservative"
full.frequency$Change_value_combine[full.frequency$Change_value == "Decrease_Conservative" | full.frequency$Change_value == "Decrease_No college" ] <- "Decrease_nocollege_conservative"
myColors2 <- brewer.pal(4,"Set1")
fre.noco.conserv <- ggplot(full.frequency, aes(x = Year, y = frequency, fill = Change_value)) +
  geom_bar(data = subset(full.frequency, Change_value_combine == "Decrease_nocollege_conservative" & Change == "Decrease"), stat = "identity",width = 0.5, position = position_dodge(width = 1)) +
  geom_bar(data = subset(full.frequency, Change_value_combine == "Increase_nocollege_conservative" & Change == "Increase"), stat = "identity",width = 0.5, position = position_dodge(width = 1)) + 
  scale_fill_manual(name = "Groups",
                    labels = c("No College Decrease", "Conservative Decrease", "No College Increase", "Conservative Increase"),values = myColors2) +
  scale_y_continuous(breaks = seq(-50, 50, 5),
                     labels = paste0(as.character(c(seq(50, 0, -5), seq(5, 50,5))), "%")) +
  scale_x_continuous(breaks = seq(1994, 2016,2), labels = seq(1994, 2016,2))+
  coord_flip()+
  theme_bw() +
  theme(axis.title.x=element_blank(),axis.title.y=element_blank()) +
  labs(title="Frequency distribution of LETIN among Concervative/Non College Group",
       subtitle="Percentage change of people's acceptance toward immigration",
       caption="Data Source； General Social Survey")

# full.frequency$Change_value_combine[full.frequency$Change_value == "Increase_Conservative" | full.frequency$Change_value == "Increase_College" ] <- "Increase_College_conservative"
# full.frequency$Change_value_combine[full.frequency$Change_value == "Decrease_Conservative" | full.frequency$Change_value == "Decrease_College" ] <- "Decrease_College_conservative"
# n3 <- ggplot(full.frequency, aes(x = Year, y = frequency, fill = Change_value)) +
#   geom_bar(data = subset(full.frequency, Change_value_combine == "Increase_College_conservative" & Change == "Increase"), stat = "identity",width = 0.5, position = position_dodge(width = 1)) + 
#   geom_bar(data = subset(full.frequency, Change_value_combine == "Decrease_College_conservative" & Change == "Decrease"), stat = "identity",width = 0.5, position = position_dodge(width = 1)) +
#   scale_y_continuous(breaks = seq(-50, 50, 5),
#                      labels = paste0(as.character(seq(-50, 50, 5)), "%")) +
#   scale_x_continuous(breaks = seq(1994, 2016,2), labels = seq(1994, 2016,2))+
#   coord_flip()+
#   theme_bw() +
#   theme(axis.title.x=element_blank(),axis.title.y=element_blank())

# Full frequency distribution table
full.frequency$Change_value_combine[full.frequency$Change_value == "Increase_Liberal" | full.frequency$Change_value == "Increase_No college" ] <- "Increase_nocollege_Liberal"
full.frequency$Change_value_combine[full.frequency$Change_value == "Decrease_Liberal" | full.frequency$Change_value == "Decrease_No college" ] <- "Decrease_nocollege_Liberal"
fre.all <- ggplot(full.frequency, aes(x = Year, y = frequency, fill = Change_value)) +
  geom_bar(data = subset(full.frequency, Change_value_combine == "Increase_nocollege_Liberal" & Change == "Increase"), stat = "identity",width = 0.5, position = position_dodge(width = 1)) + 
  geom_bar(data = subset(full.frequency, Change_value_combine == "Decrease_nocollege_Liberal" & Change == "Decrease"), stat = "identity",width = 0.5, position = position_dodge(width = 1)) +
  scale_y_continuous(breaks = seq(-50, 50, 5),
                     labels = paste0(as.character(seq(-50, 50, 5)), "%")) +
  scale_x_continuous(breaks = seq(1994, 2016,2), labels = seq(1994, 2016,2))+
  coord_flip()+
  theme_bw() +
  theme(axis.title.x=element_blank(),axis.title.y=element_blank())



# Combine into one graph
# library(ggpubr)
# ggarrange(NULL,n1, n2, NULL, 
#           labels = c("A", "B", "C", "D"),
#           ncol = 2, nrow = 2)

plots <- c(heat.map, repeated.coefficient.plot ,focused.coefficients, fre.noco.conserv, fre.co.lib, fre.all)

