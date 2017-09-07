#Question 1

mortalityrates <- read.csv("C:\\YYYYYY\\AMMA 2017\\Data\\DP_LIVE_02072017055613917.csv")
Answer <- mortalityrates[,-c(8)]

#Question 2

pages <-  getURL("https://en.wikipedia.org/wiki/India%E2%80%93Pakistan_cricket_rivalry")

overall_matches <- readHTMLTable(pages, header = T, which = 2, stringAsFactors =F)
View(overall_matches)

matchesWon <- overall_matches[3,3,3]

print(paste('Total no of ODIs won by India are', matchesWon))
