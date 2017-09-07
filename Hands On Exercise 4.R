# Read and merge datasets

Maths = read.table("C:\\YYYYYY\\AMMA 2017\\Data\\student\\student-mat.csv",sep=";",header=TRUE)

# Keeping only relevant columns

Sub_Math = subset(Maths,select=c(2,12,30:33))

G1Avg = aggregate(Sub_Math$G1, by=list(Sub_Math$sex), data = Sub_Math, mean)
print(G1Avg)

G2Avg = aggregate(Sub_Math$G2,by=list(Sub_Math$sex), data = Sub_Math, mean)
print(G2Avg)

G3Avg = aggregate(Sub_Math$G3,by=list(Sub_Math$sex), data = Sub_Math, mean)
print(G3Avg)

# Question 2
# Divide data into quartiles using dplyr
library(dplyr)
Sub_Math$Quartile <- ntile(Sub_Math$absences, 4)

G1Avg_abs = aggregate(Sub_Math$G1,by=list(Sub_Math$Quartile), data = Sub_Math, mean)
# Average of G1
print(G1Avg_abs)

G2Avg_abs = aggregate(Sub_Math$G2, by=list(Sub_Math$Quartile), data = Sub_Math, mean)
# Average of G2
print(G2Avg_abs)

G3Avg_abs = aggregate(Sub_Math$G3, by=list(Sub_Math$Quartile), data = Sub_Math, mean)
# Average of G3
print(G3Avg_abs)