#Association using the apriori package
install.packages("arulesViz")
install.packages("arules")
install.packages("readxl")
install.packages("lubridate")
install.packages("ggplot2")
install.packages("dplyr")
install.packages("DataExplorer")
install.packages("plyr")
install.packages("tidyverse")

library(arulesViz)
library(arules)
library(readxl)
library(lubridate)
library(ggplot2)
library(dplyr)
library(DataExplorer)
library(plyr)
library(tidyverse)

#Set the working directory to the local file path.
setwd("D:\\Msc Data Science\\CourseWorks\\ASDM\\Association")
getwd()

#Set the input data set
input_ds<-read_excel('Online Retail.xlsx')
retail_ds <- input_ds

#Explore Data
names(retail_ds)
head(retail_ds)
tail(retail_ds)
summary(retail_ds)
str(retail_ds)
nrow(retail_ds)
ncol(retail_ds)
dim(retail_ds)

#Handle the missing cases
retail_ds %>% 
  map(., ~sum(is.na(.)))

retail_ds <- retail_ds[complete.cases(retail_ds), ]

retail_ds %>% 
  map(., ~sum(is.na(.)))

#Plot and check the missing data does not exist
plot_bar(retail_ds)
plot_missing(retail_ds)

#Filter the data by valid price, quantity and country by United Kingdom 
retail_ds <- retail_ds %>% 
              filter(UnitPrice > 0) %>% 
              filter(Quantity > 0) %>% 
              filter(Country == 'United Kingdom')

retail_ds$StockCode<-as.numeric(retail_ds$StockCode)
retail_ds <- retail_ds[complete.cases(retail_ds), ]
retail_ds$Description <- gsub(",","",retail_ds$Description)

retail_ds <- select(retail_ds, c(1,2,3,4))

#Write formatted file to csv for processing in SAS
write.csv(retail_ds,"OnlineRetail_UK.csv", quote = FALSE, row.names = TRUE)

#Create invoices in basket format 
retail_basket <- ddply(retail_ds,"InvoiceNo", function(df)paste(df$Description, collapse = ","))

#Write formatted file to csv
write.csv(retail_basket,"RetailProducts.csv", quote = FALSE, row.names = TRUE)

retail_transactions = read.transactions(file="RetailProducts.csv", format="basket",sep=",", cols=1)

#Removes quotes
retail_transactions@itemInfo$labels <- gsub("\"","",retail_transactions@itemInfo$labels)

#Plot the frequently purchased products
itemFrequencyPlot(retail_transactions, topN = 15,cex.names=0.7, main = "Frequently Purchased Products")

#Perform association apriori with confidence of 0.7
basket_rules <- apriori(retail_transactions,parameter = list(supp = 0.01, conf = 0.7))
basket_rules <- sort(basket_rules, by = "confidence", decreasing = TRUE)

#Summary statistics of rules
summary(basket_rules)
inspect(head(basket_rules))

# Explore the rules
ruleExplorer(basket_rules)
plot(basket_rules@quality)