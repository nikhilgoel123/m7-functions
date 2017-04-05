# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(a,b) {
  answer <- length(a) - length(b)
  answer <- abs(answer)
  return(paste("The difference in length is", answer))
}
# Pass two vectors of different length to your `CompareLength` function
a <- (1:5)
b <- (1:10)
CompareLength(a,b)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a,b) {
   if(length(a) > length(b)) {
    answer <- CompareLength(a,b)
    sentence <- c("Your first vector is longer by", answer)
    return(sentence)
  } else {
    answer <- CompareLength(b,a)
    sentence <- c("Your second vector is longer by", answer)
    return(sentence)
  }
}

# Pass two vectors to your `DescribeDifference` function
a <- c("1","2","3","5","4")
b <- c("1","2","4","5")
DescribeDifference(a,b)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer