library(XML)
library(RCurl)

url=getURL("http://stats.espncricinfo.com/ci/content/records/284248.html")
recordsofCric=readHTMLTable(url,header=T,which=1,stringAsFactors=F)

#Question 1 
#Plot 5 highest runs

order(recordsofCric$Runs) #To sort by runs in case the column is not already sorted

#Taking subset of top 5 scores
toprecords = recordsofCric[1:5,]

#Drop unused levels and convert runs to numeric values
toprecords$Year = factor(toprecords$Year)
toprecords$Runs = as.numeric(levels(toprecords$Runs))[toprecords$Runs]

#Created a bar plot using ggplot2

library(ggplot2)

ggplot(data=toprecords, aes(x=toprecords$Year, y=toprecords$Runs)) +
  geom_bar(stat="identity", width = 0.5) +
  geom_text(aes(label=toprecords$Runs), vjust=1.6, color="white", size=3.5)

#Question 2
#Creating a frequency table for all players
players=plyr::count(recordsofCric, 'Player')

#Printing player with the highest frequency value
print(players[which.max(players[,2]),])