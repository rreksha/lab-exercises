## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# This doesn't work because initials is a string. 
# You cannot add an integer and a string. 

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# Have not stored paticular package yet 

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# initial is misspelled and should be initials


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
names <- c("Bob","Ben","Barry")
typeof(names)


# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(x,y){
  dif <- abs(length(y)-length(x))
  sentence <- paste("The difference in length is ", dif)
  return (sentence)
}

# Pass two vectors of different length to your `CompareLength` function
vector1 <- c(1,2,3,4)
vector2 <- c(1,2,3,4,5,6,7)
vector3 <- c(1,2)
print (CompareLength(vector1, vector2))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(x,y){
  dif <- (length(y)-length(x))
  if(diff > 0){
    text <- paste("Your second vector is longer by", diff, "elements")
  } else {
    text <- paste("Your first vector is longer by", abs(diff), "elements")
  }
  
}
# Pass two vectors to your `DescribeDifference` function
print(DescribeDifference(vector1, vector2))

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVector <- function(v1,v2,v3){
  return (c(v1,v2,v3))
}
# Send 3 vectors to your function to test it.
print(CombineVector(vector1,vector2,vector3))
# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(courses){
  gsub("[A-Z]","", courses)
}


