#Create IDs
cust_id <- c(1:100)
#Random income for 100 customers with mean 250000 and standard deviation 75000
normal_income <- rnorm(100, mean = 250000, sd = 75000)
#Adding gender as femal for all records
gender <- c(rep("F",100))
#Take a random sample in an object to randomize the replacement of gender
i <- sample(1:100, 100, replace = FALSE)
#Carries out replacement of gender
for(q in 1:100){
  if(gender[i[q]] == "F" && q <= 40){
    # print("It is female)
  }else{
    gender[i[q]] <- c("M")
  }
}
#Creation of dataframe
custs <- data.frame(cust_id, normal_income, gender)
View(custs)