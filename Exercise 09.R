##Conor Ratigan
###Exercise 09

##Write a function that takes a directory name as an 
##argument called dir plus any other arguments requried to
##accomplish the specified task.
##The function should read data from each file 
##in the specified directory and calculate the coefficient of variation
##(standard deviation divided by the mean) for a user 
##specified column. These values should be returned as a
##vector.

file = function(dir,c){
  
  path=list.files(dir)
  ## label return vector
  answer = vector(mode="numeric", length(path1))
  ## loop to read data
  for(i in 1: length(path1)){
    
    file_name= paste(dir, path1[i], sep="/")
    ##read data
    data=read.table(file_name,header = TRUE, sep = ",",stringsAsFactors = FALSE)
    
    if (length )(data[,c]>50){
      answer[i]= (sd(data[,c])/mean(data[,c]))*100 ##coefficient
      
    }else{
      
      print(paste0("Error: This file has less then 50 obs"))
      return() # function output
    }
  }
  return(answer) ##function output
}
