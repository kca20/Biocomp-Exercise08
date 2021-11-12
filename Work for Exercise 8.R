
##  1.makes a plot of score vs time for UW and MSU
game<-read.csv("UWvMSU_1-22-13.txt", sep="",header = TRUE)#
UW<-game[grep("UW",game$team),] #subsets data for UW
MSU<-game[grep("MSU",game$team),] #subsets data for MSU


UWscorevstime<-UW[c(1,3)] #removes the team column
MSUscorevstime<- MSU[c(1,3)] #removes the team column

cumscoresUW<-cumsum(UW$score) # creates a column in UWscorevstime with cumulative scores
UWscorevstime$Points<-cumscoresUW

cumscoresMSU<-cumsum(MSU$score)
MSUscorevstime$Points<-cumscoresMSU # creates a column in MSUscorevstime with cumulative scores

plot(UWscorevstime[c(1,3)], type="l", col="green") #creates a score vs. time plot for MSU and UW
lines(MSUscorevstime[c(1,3)], type="l", col="blue")

## 2. guess my number game
#####1st way
x<-(1:100) #create a vector with numbers 1 to 100
answer<-sample(x, 1) #picks a random number from x


while(guess !=answer){ #will keep recurring until answer is correct
  guess<-readline(prompt = "Enter a number between 1 and 100:") #prompts user to enter number from 1 to 100 and stores number
if(guess>answer){
  print("Lower")    
}else if(guess<answer){
  print("Higher")
}else{
  print("Correct!")
}
}

#2nd way with for if-else nested in for loop
x<-(1:100) #create a vector with numbers 1 to 100
answer<-sample(x, 1) #picks a random number from x

for (i in x[1:100]){ 
  guess<-readline(prompt = "Enter a number between 1 and 100:") #prompts user to enter number from 1 to 100 and stores number
  if(guess>answer){
    print("Lower")
  }else if(guess<answer){
    print("Higher")
  }else if(guess==answer){
    print("Correct!")
  }
}



