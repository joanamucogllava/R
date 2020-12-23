# Problem 1
install.packages('gtools') #We will need this packages for the combination and permutation
library('gtools')

professors_name = c("Cahoy", "Garza", "Jegdic", "King", "Moon") # We are declaring all professors name 
number_classes = 3 # We are stating the number of the offered classes 
#a
event1 = combinations(5, 3, v = professors_name) 
event1 #displays all the possible configurations
nrow(event1) #number of all possible results (10)
#b
event2 = combinations(5, 3, v = professors_name, repeats = T)
event2 #displays all the possible configurations
nrow(event2)  #number of all possible results (35)
#c
event3 = permutations(5, 3, v = professors_name)
event3  #displays all the possible configurations
nrow(event3)  #number of all possible results (60)
#d
event4 = permutations(5, 3, v = professors_name, repeats = T)
event4  #displays all the possible configurations
nrow(event4)  #number of all possible results (125)

#Problem2
playlist_number = 100 #declare the playlist number
U2 = 10  #declare U2 number 
#a
pfirst = function(n, k) #creating pfirst function 
{
  total = 0
  for (i in 99:(100-k)) #looping through 
  {
    total = total + choose(i, 9)
  }
  probability = total / choose(100,10)
  return(probability) 
}
pfirst(100, 5)  #probability that one of the first k songs is a U2 song (0.4162476)
#b
prob=numeric(20)
k=1:20
for (i in k)
{
  prob[i] = pfirst(100, i)
}

table = cbind(k, prob)
table # table with two columns that displays the probabilities that one of the first k songs is a U2 song (20)
#c
plot(k, prob, col="pink",pch=10,
     xlab = "The first k songs",                        #adding label x
     ylab="P(One of the first k songs is a U2 song)")   #adding label y

abline(h =0.5, lty=2, col="yellow")  #adding horizontal line for the 50% probability
prob  #all the possible probabilities (15)

