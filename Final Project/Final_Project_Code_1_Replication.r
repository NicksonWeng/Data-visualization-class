# Replication of Social factors influencing immigration attitudes
# Haoran Weng


rm(list = ls())
# Data source

library(Hmisc)
library(plyr) # revalue

library(psych) # factor analysis
library(GPArotation) # factor analysis
url <- "D:/works/Regression/Project/discrimination immigrant/GSS1994.sav"
ds <-   spss.get(url)
# ds <-   spss.get("D:/works/Regression/Project/discrimination immigrant/GSS1994.sav")

# extracting varaible
# "LETIN" INCREASE OR DECREASE IMMIGRANTS TO US N = 1397 
# "IMMECON" WILL IMMIGRANTS LEAD TO ECONOMIC GROWTH
# "IMMUNEMP" WILL IMMIGRANTS FUEL UNEMPLOYMENT
# "IMMUNITE" WILL IMMIGRANTS AFFECT NATIONAL UNITY
# "IMMFARE" IMMIGRANTS ELIGIBLE FOR GOVT ASSISTANCE?
#  IMMPUSH ARE IMMIGRANTS DEMANDING TOO MANY RIGHTS?
#  IMMWRKUP SHOULD IMMIGRANTS OVERCOME BIAS WITHOUT HELP
#  UNDOCWRK SHOULD ILLEGAL IMMIGRANTS GET WORK PERMITS?
#  UNDOCCOL ILLEGAL IMMIGRANTS ACCESS TO PUBLIC UNIVERSITIES?
#  UNDOCKID US CITIZENSHIP FOR CHILDREN OF ILLEGAL IMMIGRANTS

## Missing part: factor analysis of dependent variable

# Keeping main data 1461 so far?? (Why minor difference)
newdata <- subset(ds, select=c(LETIN,IMMECON,IMMUNEMP,IMMUNITE,IMMFARE,IMMPUSH,IMMWRKUP,UNDOCWRK,UNDOCCOL,UNDOCKID))
newdata <- data.frame(lapply(newdata, as.character), stringsAsFactors=FALSE)
newdata[!is.na(newdata)] <- 1
newdata[is.na(newdata)] <- 0
newdata <- data.frame(lapply(newdata, as.numeric), stringsAsFactors=FALSE)
newdata$check <- rowSums(newdata)
# newdata <- data.frame(lapply(newdata, as.character), stringsAsFactors=TRUE)
# newdata$check <- rowSums(newdata) #!~!!!!!!!!!!!!!!!!!!!!!!!!!!
ds$check <- newdata$check
newdata <- subset(ds, check != 0)


#DVS AND Key DV
list.of.dv <- c("LETIN","IMMECON","IMMUNEMP","IMMUNITE","IMMFARE","IMMPUSH","IMMWRKUP","UNDOCWRK","UNDOCCOL","UNDOCKID")

  #IVS Control var
list.control <- c("AGE", "SEX", "RACE")
#Testing IV
list.interest <- c("ECONPAST", "INCOME")
# ECONPAST HAS NATIONAL ECONOMY IMPROVED LAST YEAR (good)
# PASTUP DEGREE OF IMPROVEMENT IN NATIONAL ECONOMY
# PASTDOWN DEGREE NATIONAL ECONOMY HAS GOTTEN WORSE
list.fear <- c("FEAR", "OWNGUN")
# OWNGUN HAVE GUN IN HOME
# PISTOL PISTOL OR REVOLVER IN HOME
# SHOTGUN SHOTGUN IN HOME
# RIFLE RIFLE IN HOME
# ROWNGUN DOES GUN BELONG TO R
list.political <- c("POLVIEWS")
# POLVIEWS THINK OF SELF AS LIBERAL OR CONSERVATIVE
# POLVIEWY LIBERAL OR CONSERVATIVE-VERSION Y
# POLVIEWX LIBERAL OR CONSERVATIVE-VERSION X
list.cultural <- c("ENGTEACH", "ENGBALLT", "ENGOFFCL", "BILINGED")
#  OPINION ON TEACHING CLASSES ONLY IN ENGLISH
#  ENGBALLT ATTITUDE TOWARD PRINTING BALLOTS ONLY IN ENGLISH
#  ENGOFFCL FAVOR LAW MAKING ENGLISH THE OFFICIAL LANGUAGE
#  BILINGED SUPPORT OR OPPOSE BILINGUAL EDUCATION
list.education <- c("EDUC")
#YEAR OF EDUCATION
list.of.extension <- c("BORN", "PARBORN","RELIG")
#RELIG RS RELIGIOUS PREFERENCE
#BORN WAS R BORN IN THIS COUNTRY

list.of.iv <- c(list.control, list.interest, list.fear,list.political,list.cultural,list.education)
list.of.var <- c(list.of.dv,list.of.iv, list.of.extension)
newdata1 <- newdata[,list.of.var]

# write.csv(newdata1, file = "D:/works/Regression/Project/discrimination immigrant/shortdata.csv")


# recoding
#LETIN
newdata1$LETIN.r[newdata1$LETIN == "INCREASED A LOT"] <- 5
newdata1$LETIN.r[newdata1$LETIN == "INCREASED A LITTLE"] <- 4
newdata1$LETIN.r[newdata1$LETIN == "SAME AS NOW"] <- 3
newdata1$LETIN.r[newdata1$LETIN == "DECREASED A LITTLE"] <- 2
newdata1$LETIN.r[newdata1$LETIN == "DECREASED A LOT"] <- 1
newdata1$LETIN.b[newdata1$LETIN.r > 3] <- "Increase"
newdata1$LETIN.b[newdata1$LETIN.r < 3] <- "Decrease"
newdata1$LETIN.b[newdata1$LETIN.r == 3] <- "SAME"
newdata1$LETIN.b<- factor(newdata1$LETIN.b)

#RACE
newdata1$WHITE[newdata1$RACE == "WHITE"]<- "White"
newdata1$WHITE[newdata1$RACE != "WHITE"] <- "Non-white"
newdata1$BLACK[newdata1$RACE != "BLACK"] <- "Non-Black"
newdata1$BLACK[newdata1$RACE == "BLACK"] <- "Black"
newdata1$BLACK<- factor(newdata1$BLACK)
newdata1$WHITE<- factor(newdata1$WHITE)
#Income
newdata1$INCOME.r[newdata1$INCOME == "LT $1000"] <- 1
newdata1$INCOME.r[newdata1$INCOME == "$1000 TO 2999"] <- 1
newdata1$INCOME.r[newdata1$INCOME == "$3000 TO 3999"] <- 1
newdata1$INCOME.r[newdata1$INCOME == "$4000 TO 4999"] <- 1
newdata1$INCOME.r[newdata1$INCOME == "$5000 TO 5999"] <- 1
newdata1$INCOME.r[newdata1$INCOME == "$6000 TO 6999"] <- 1
newdata1$INCOME.r[newdata1$INCOME == "$7000 TO 7999"] <- 1
newdata1$INCOME.r[newdata1$INCOME == "$8000 TO 9999"] <- 1
newdata1$INCOME.r[newdata1$INCOME == "$10000 - 14999"] <- 2
newdata1$INCOME.r[newdata1$INCOME == "$15000 - 19999"] <- 2
newdata1$INCOME.r[newdata1$INCOME == "$20000 - 24999"] <- 3
newdata1$INCOME.r[newdata1$INCOME == "$25000 OR MORE"] <- 3
#INCOME.R
newdata1$INCOME.r[newdata1$INCOME.r == 1] <- "Less than 10000"
newdata1$INCOME.r[newdata1$INCOME.r == 2] <- "10000 - 19999"
newdata1$INCOME.r[newdata1$INCOME.r == 3] <- "20000 or more"
newdata1$INCOME.r<- factor(newdata1$INCOME.r)
#Gender
newdata1$MALE.r <- "FEMALE"
newdata1$MALE.r[newdata1$SEX == "MALE"] <- "MALE"
newdata1$MALE.r<- factor(newdata1$MALE.r)
#age
newdata1$AGE.r <- revalue(newdata1$AGE, c("89 OR OLDER" = "89"))
newdata1$AGE.r <- as.numeric(as.character(newdata1$AGE.r))
newdata1$AGE.r1[newdata1$AGE.r > 64] <- "65 & over"
newdata1$AGE.r1[newdata1$AGE.r < 65 & newdata1$AGE.r > 49] <- "50–64"
newdata1$AGE.r1[newdata1$AGE.r < 50 & newdata1$AGE.r > 29] <- "30–49"
newdata1$AGE.r1[newdata1$AGE.r < 30] <- "18–29"
newdata1$AGE.r1<- factor(newdata1$AGE.r1)
#Political View
newdata1$POLVIEWS.r[newdata1$POLVIEWS == "EXTREMELY LIBERAL"] <- "LIBERAL"
newdata1$POLVIEWS.r[newdata1$POLVIEWS == "LIBERAL"] <- "LIBERAL"
newdata1$POLVIEWS.r[newdata1$POLVIEWS == "SLIGHTLY LIBERAL"] <- "LIBERAL"
newdata1$POLVIEWS.r[newdata1$POLVIEWS == "MODERATE"] <- "MODERATE"
newdata1$POLVIEWS.r[newdata1$POLVIEWS == "CONSERVATIVE"] <- "CONSERVATIVE"
newdata1$POLVIEWS.r[newdata1$POLVIEWS == "EXTRMLY CONSERVATIVE"] <- "CONSERVATIVE"
newdata1$POLVIEWS.r[newdata1$POLVIEWS == "SLGHTLY CONSERVATIVE"] <- "CONSERVATIVE"
newdata1$POLVIEWS.r<- factor(newdata1$POLVIEWS.r)
#Education level
newdata1$EDUC <- as.numeric(newdata1$EDUC)
newdata1$EDUC.r[newdata1$EDUC < 16] <- "Not College graduate"
newdata1$EDUC.r[newdata1$EDUC > 15] <- "college graduate"
newdata1$EDUC.r <- as.factor(newdata1$EDUC.r)
# Culture threat

# Produce Frequency table:
list <- c("LETIN.b", "MALE.r", "WHITE", "BLACK", "AGE.r1", "ECONPAST", "INCOME.r", "FEAR", "OWNGUN", "POLVIEWS.r", "ENGTEACH", "ENGBALLT", "ENGOFFCL", "BILINGED", "EDUC.r")
newdata2 <- newdata1[,list]

iv.table <- c()
column <- c()
for (i in 2:length(list)){
  x <- levels(na.omit(newdata2[,list[i]]))
  iv.table<- c(iv.table, x)
  for (e in 1:length(x)){
    a <- x[e]
    sub <- subset(newdata2, newdata2[,list[i]] == a)
    summary.a <- as.numeric(summary(sub$LETIN.b, digits = 3))
    column <- rbind(column, c(a, summary.a[1]/sum(summary.a),summary.a[2]/sum(summary.a),sum(summary.a)))
  }
}

column <- as.data.frame(column)
options(digits=3)
column$V5 <- paste((round(as.numeric(as.character(column$V2)), digits = 3) * 100), "%", sep = "")
column$V6 <- paste((round(as.numeric(as.character(column$V3)), digits = 3) * 100), "%", sep = "")
column <- column[,-(2:3)]
column <- column[, c(1,3,4,2)]
colnames(column) <- c("Variable", "Decrease", "Increase", "N")
column[] <- lapply(column, factor)
stargazer::stargazer(column, summary = FALSE,rownames = FALSE)

#Summary data
#table <- cbind(iv.table.list,count.list,frequency.list,frequency.list.d)
#write.csv(table, file = "D:/works/Regression/Project/discrimination immigrant/summary table.csv")

 
# Factor analysis for Dependent variable

recoded.dv <- c("LETIN.b",list.of.dv)
FA1 <- subset(newdata1, select = recoded.dv)

FA1$LETIN.b1[FA1$LETIN.b == "Increase"] <- 1
FA1$LETIN.b1[FA1$LETIN.b == "Decrease"] <- -1
FA1$LETIN.b1[FA1$LETIN.b == "SAME"] <- 0
FA1$IMMECON.b1[FA1$IMMECON == "VERY LIKELY"] <- 1
FA1$IMMECON.b1[FA1$IMMECON == "SOMEWHAT LIKELY"] <- 1
FA1$IMMECON.b1[FA1$IMMECON == "NOT SO LIKELY"] <- -1
FA1$IMMECON.b1[FA1$IMMECON == "NOT AT ALL LIKELY"] <- -1
FA1$IMMUNEMP.b1[FA1$IMMUNEMP == "VERY LIKELY"] <- -1
FA1$IMMUNEMP.b1[FA1$IMMUNEMP == "SOMEWHAT LIKELY"] <- -1
FA1$IMMUNEMP.b1[FA1$IMMUNEMP == "NOT SO LIKELY"] <- 1
FA1$IMMUNEMP.b1[FA1$IMMUNEMP == "NOT AT ALL LIKELY"] <- 1

FA1$IMMUNIT.b1[FA1$IMMUNITE == "VERY LIKELY"] <- -1
FA1$IMMUNIT.b1[FA1$IMMUNITE == "SOMEWHAT LIKELY"] <- -1
FA1$IMMUNIT.b1[FA1$IMMUNITE == "NOT SO LIKELY"] <- 1
FA1$IMMUNIT.b1[FA1$IMMUNITE == "NOT AT ALL LIKELY"] <- 1

FA1$IMMFARE.b1[FA1$IMMFARE == "ELIGIBLE"] <- 1
FA1$IMMFARE.b1[FA1$IMMFARE == "NOT ELIGIBLE"] <- -1
FA1$IMMPUSH.b1[FA1$IMMPUSH == "STRONGLY AGREE"] <- -1
FA1$IMMPUSH.b1[FA1$IMMPUSH == "AGREE"] <- -1
FA1$IMMPUSH.b1[FA1$IMMPUSH == "NEITHER AGREE NOR DISAGREE"] <- 0
FA1$IMMPUSH.b1[FA1$IMMPUSH == "DISAGREE"] <- 1
FA1$IMMPUSH.b1[FA1$IMMPUSH == "STRONGLY DISAGREE"] <- 1

FA1$IMMWRKUP.b1[FA1$IMMWRKUP == "STRONGLY AGREE"] <- -1
FA1$IMMWRKUP.b1[FA1$IMMWRKUP == "AGREE"] <- -1
FA1$IMMWRKUP.b1[FA1$IMMWRKUP == "NEITHER AGREE NOR DISAGREE"] <- 0
FA1$IMMWRKUP.b1[FA1$IMMWRKUP == "DISAGREE"] <- 1
FA1$IMMWRKUP.b1[FA1$IMMWRKUP == "STRONGLY DISAGREE"] <- 1

FA1$UNDOCWRK.b1[FA1$UNDOCWRK == "YES, ENTITLED"] <- 1
FA1$UNDOCWRK.b1[FA1$UNDOCWRK == "NO, NOT ENTITLED"] <- -1

FA1$UNDOCCOL.b1[FA1$UNDOCCOL == "YES, ENTITLED"] <- 1
FA1$UNDOCCOL.b1[FA1$UNDOCCOL == "NO, NOT ENTITLED"] <- -1

FA1$UNDOCKID.b1[FA1$UNDOCKID == "YES, QUALIFY"] <- 1
FA1$UNDOCKID.b1[FA1$UNDOCKID == "NO, NOT QUALIFY"] <- -1
#Factor analysis dataset
FA <- FA1[,12:21]
parallel <- fa.parallel(FA, fm = 'minres', fa = 'fa')
twofactor <- fa(FA,nfactors = 2,rotate = "oblimin",fm="minres")
# New variable after factor analysis
FA$Attitude_Legal <- 0.530*FA$LETIN.b1 + 0.282*FA$IMMECON.b1 + 0.352*FA$IMMUNEMP.b1 + 
  0.537*FA$IMMUNIT.b1 + 0.379*FA$IMMFARE.b1 + 0.677*FA$IMMPUSH.b1  + 0.399*FA$IMMWRKUP.b1 + 
  0.144*FA$UNDOCKID.b1
FA$Attitude_Illegal <- 0.146*FA$IMMECON.b1 + 0.132*FA$IMMFARE.b1 + 0.508*FA$UNDOCWRK.b1 +
  0.782*FA$UNDOCCOL.b1 + 0.544*FA$UNDOCKID.b1
# Recode newdata1 for Full model
newdata1$Attitude_Legal <- FA$Attitude_Legal
newdata1$Attitude_Illegal <- FA$Attitude_Illegal
#Recoding IV into numeric
newdata1$WHITE.r <- 0
newdata1$WHITE.r[newdata1$WHITE == "White"] <- 1
newdata1$FEMALE.r1 <- 0
newdata1$FEMALE.r1[newdata1$MALE.r == "FEMALE"] <- 1
newdata1$ECONPAST.r[newdata1$ECONPAST == "GOTTEN BETTER"] <- 1
newdata1$ECONPAST.r[newdata1$ECONPAST == "STAYED THE SAME"] <- 0
newdata1$ECONPAST.r[newdata1$ECONPAST == "GOTTEN WORSE"] <- -1
newdata1$EDUC.b <- 0
newdata1$EDUC.b[is.na(newdata1$EDUC.r)] <- NA
newdata1$EDUC.b[newdata1$EDUC.r == "college graduate"] <- 1
newdata1$CONSERV.r <- NA
newdata1$CONSERV.r[newdata1$POLVIEWS.r == "CONSERVATIVE"] <- 1
newdata1$CONSERV.r[newdata1$POLVIEWS.r == "LIBERAL"] <- -1
newdata1$CONSERV.r[newdata1$POLVIEWS.r == "MODERATE"] <- 0

#Factor analysis for Culture threat
FA.C <- subset(newdata1, select = c("ENGTEACH", "ENGBALLT", "ENGOFFCL", "BILINGED"))
FA.C$ENGTEACH.b <- 0
FA.C$ENGTEACH.b[FA.C$ENGTEACH == "ALL CLASSES IN ENGLISH"] <- 1
FA.C$ENGTEACH.b[FA.C$ENGTEACH == "1-2 YRS IN NATIVE LANG"] <- 1
FA.C$ENGTEACH.b[is.na(FA.C$ENGTEACH)] <- NA

FA.C$ENGBALLT.b <- 0
FA.C$ENGBALLT.b[FA.C$ENGBALLT == "ONLY IN ENGLISH"] <- 1
FA.C$ENGBALLT.b[is.na(FA.C$ENGBALLT)] <- NA

FA.C$ENGOFFCL.b <- 0
FA.C$ENGOFFCL.b[FA.C$ENGOFFCL == "FAVOR"] <- 1
FA.C$ENGOFFCL.b[is.na(FA.C$ENGOFFCL)] <- NA
FA.C$ENGOFFCL.b[FA.C$ENGOFFCL == "OPPOSE"] <- -1

FA.C$BILINGED.b <- NA
FA.C$BILINGED.b[FA.C$BILINGED == "STRONGLY FAVOR"] <- 0
FA.C$BILINGED.b[FA.C$BILINGED == "SOMEWHAT FAVOR"] <- 0
FA.C$BILINGED.b[FA.C$BILINGED == "SOMEWHAT OPPOSED"] <- 1
FA.C$BILINGED.b[FA.C$BILINGED == "STRONGLY OPPOSED"] <- 1

FA.C1 <- FA.C[,5:8]

parallel <- fa.parallel(FA.C1, fm = 'minres', fa = 'fa')
culture_factor <- fa(FA.C1,nfactors = 1,rotate = "oblimin",fm="minres")

#add culture threat factor to newdata1
newdata1$culture_threat <- 0.37*FA.C$ENGTEACH.b +  0.67*FA.C$ENGBALLT.b + 0.53*FA.C$ENGOFFCL.b + 0.48*FA.C$BILINGED.b
newdata1$Attitude_Legal <- -newdata1$Attitude_Legal
newdata1$Attitude_Illegal <- -newdata1$Attitude_Illegal
newdata1$ECONPAST.r<- -newdata1$ECONPAST.r

# Replication of Full model
full_model_legal <- lm(Attitude_Legal ~ AGE.r + WHITE.r + FEMALE.r1 + ECONPAST.r + EDUC.b + culture_threat + CONSERV.r, newdata1)
full_model_illegal <- lm(Attitude_Illegal ~ AGE.r + WHITE.r + FEMALE.r1 + ECONPAST.r + EDUC.b + culture_threat + CONSERV.r, newdata1)


culture_factor$loadings

#Use robust standard error for Full test
library(lmtest)
library(sandwich)
rob1<- coeftest(full_model_legal, vcov = vcovHC(full_model_legal, type="HC1"))
rob2 <- coeftest(full_model_illegal, vcov = vcovHC(full_model_illegal, type="HC1"))



# Extension adding new variables 
#Born in US
newdata1$BORN.b[is.na(newdata1$BORN)] <- NA
newdata1$BORN.b[newdata1$BORN == "YES"] <- 1
newdata1$BORN.b[newdata1$BORN == "NO"] <- 0
newdata1$BORN.b <- factor(newdata1$BORN.b)
#Parent born in US
newdata1$PARBORN.b <- 0
newdata1$PARBORN.b[newdata1$PARBORN == "BOTH IN U.S"] <- 1
newdata1$PARBORN.b[newdata1$PARBORN == "MOTHER; FA. DK"] <- 1
newdata1$PARBORN.b[newdata1$PARBORN == "FATHER; MO.DK"] <- 1
newdata1$PARBORN.b[newdata1$PARBORN == "DK FOR BOTH"] <- 1
newdata1$PARBORN.b[is.na(newdata1$PARBORN.b)] <- NA
newdata1$PARBORN.b<- factor(newdata1$PARBORN.b)
# Any foreign born
newdata1$US.ORI <- 1
newdata1$US.ORI[newdata1$PARBORN.b == 0] <- 0
newdata1$US.ORI[newdata1$BORN.b == 0] <- 0


# Main religious group
newdata1$MAINRELIG <- 0
newdata1$MAINRELIG[newdata1$RELIG == "PROTESTANT"] <- 1
newdata1$MAINRELIG[newdata1$RELIG == "CATHOLIC"] <- 1
# newdata1$MAINRELIG[is.na(newdata1$RELIG)] <- NA


  

ext_model_legal <- lm(Attitude_Legal ~ AGE.r + WHITE.r + FEMALE.r1 + ECONPAST.r + EDUC.b + culture_threat + CONSERV.r + US.ORI + MAINRELIG, newdata1)
ext_model_illegal <- lm(Attitude_Illegal ~ AGE.r + WHITE.r + FEMALE.r1 + ECONPAST.r + EDUC.b + culture_threat + CONSERV.r + US.ORI + MAINRELIG, newdata1)
rob3 <- coeftest(ext_model_legal, vcov = vcovHC(ext_model_legal, type="HC1"))
rob4 <- coeftest(ext_model_illegal, vcov = vcovHC(ext_model_illegal, type="HC1"))

# Out put table
stargazer::stargazer(rob1,rob2,rob3,rob4)
stargazer::stargazer(full_model_legal,full_model_illegal,ext_model_legal,ext_model_illegal)



# Running model test for full model and extension
reg.iv <- c("AGE.r","WHITE.r", "FEMALE.r1","ECONPAST.r","EDUC.b","culture_threat","CONSERV.r", "US.ORI", "MAINRELIG")
RMS <- c()
rsqd <- c()
adjrsqd <- c()
ACI <- c()
BCI <- c()
for (i in 1:length(reg.iv)){
  xname <- paste(reg.iv[1:i])
  fmla <- as.formula(paste("Attitude_Legal ~", paste(xname, collapse = "+")))
  model_legal <- lm(fmla, newdata1)
  RMS <- c(RMS, sum(model_legal$residuals ^ 2) / model_legal$df.residual)
  rsqd<- c(rsqd, summary(model_legal)$r.squared)
  adjrsqd <- c(adjrsqd, summary(model_legal)$adj.r.squared)
  ACI <- c(ACI, AIC(model_legal, k = 2))
  BCI <- c(BCI, BIC(model_legal))
}

test <- as.data.frame(cbind(RMS, rsqd, adjrsqd, ACI, BCI))
scaled.test <- as.data.frame(scale(test))
scaled.test$number <- 1:nrow(scaled.test)
test.melt <- reshape2::melt(scaled.test, "number" , value.name = "value")

test.melt$var <- 0
for (i in 1:length(reg.iv)){
  x <- toString(reg.iv[i])
  test.melt$var[test.melt$number == i] <- x
}

x_names <- c("Age","White", "Female","View of Economy","College","Culture Threat","Conservative", "US Origin", "Main Religion")

ggplot(test.melt, aes(x = number , y = value, color = variable)) +
  geom_line(size = 1.5) +
  scale_x_discrete(breaks = c(1:length(reg.iv)),labels = x_names, limits= c(1:length(reg.iv))) +
  xlab("Number of predictor") +
  ylab("Criteria") +
  ggtitle(label = "Model Assessment by Comparison of Criterion")+
  theme_bw()



