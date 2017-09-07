#Question 1 and 2

#Installing and loading required packages
install.packages("data.table")
install.packages("datasets")
library(data.table)
library(datasets)

#Initializing an object to store the final answer
count <- 0
#Calcultion of women who match the criteria
for(i in 1:nrow(women))
{
  if
  (women$height[i]>65.0 & women$weight[i]<136.7)
  {
  count<- count+1
 }
} 
print("Answer:")
print(count)

#---------------------------------------------------------------------------------------
#Question 3

install.packages("RCurl")
install.packages("XML")
library(RCurl)
library(XML)
pages <- getURL("http://www.worldatlas.com/articles/the-biggest-cities-in-india.html")

citiesnpop <- readHTMLTable(pages, header = T, which = 1, stringAsFactors = F)

citiesnpopDF <- as.data.frame(citiesnpop)

Answer <- citiesnpopDF[,c(2,3)]
View(Answer)