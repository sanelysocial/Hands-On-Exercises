getwd()
setwd("C:\\YYYYYY\\AMMA 2017\\Data")


emp = read.csv("Emp.csv")
dept = read.csv("Dept.csv")
#Question 1
empbydeptno = merge(dept, emp, by = "DEPTNO")

#Question 2
aggregate(SAL ~ LOC, empbydeptno, mean)

#Question 3
?cbind

