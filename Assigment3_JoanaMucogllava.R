# Problem 1
#Sample space for the experiment that 2 dice will be rolled 
S=expand.grid(die1=1:6,die2=1:6)
nrow(S)

#Event1: The sum of two dice is 7
E1=subset(S, die1+die2==7)
E1

#Event2: The outcome of the first roll is 3
E2=subset(S,die1==3)
E2

#Event3: The outcome of the second roll is 4
E3=subset(S, die2==4)
E3

#We need tp show that E1, E2, E3 are pairwise independent 
#P(E1 ??? E2 ??? E3) != P(E1)P(E2)P(E3)

# E1 & E2 & E3
E1andE2andE3 = subset(S, die1+die2==7 & die1 ==3 & die2==4)
E1andE2andE3

E1andE3 = subset(S, die1+die2==7 & die2==4)
PE1givenE3=nrow(E1andE3)/nrow(E3)
PE1givenE3

E1andE2 = subset(S, die1+die2==7 & die1==3)
PE1givenE2=nrow(E1andE2)/nrow(E2)
PE1givenE2

E2andE3 = subset(S, die1==3 & die2==4)
PE2givenE3=nrow(E2andE3)/nrow(E3)
PE2givenE3

PE1givenE2given3

#Probability: P(E1) = The size of E1/the size of the sample
PE1 = nrow(E1)/nrow(S)
PE1

#P(E2) = The size of E1/the size of the sample
PE2 = nrow(E2)/nrow(S)
PE2

#P(E1) = The size of E1/the size of the sample
PE3 = nrow(E3)/nrow(S)
PE3

#Probability of the intersection of all the events
P1givenP2givenP3 = nrow(E1andE2andE3)/nrow(S)
P1givenP2givenP3

#Multiplying each probability individually 
PE1*PE2*PE3

#Probability of the intersection of all the events is not equal to multiplication of each probability individually. 
#P(E1 ??? E2 ??? E3) != P(E1)P(E2)P(E3) ==> 0.02777778 != 0.00462963 (different)
#Three events are not mutually independent. 

#Problem 2
# Monty Hall Game

#Simulates where the right door will be in 10000 tries
actual=sample(x=1:100,size=10000,replace=T)
actual
#Simulates our choice for the right door 10000 times
guess=sample(x=1:100,size=10000,replace=T)
guess
#Compares guess with correct door and marks if our choice was right or wrong
equals=(actual==guess)
equals
notequals=(actual!=guess)
notequals
#Probability of winning the car by staying with our choice
ProbNoSwitch=sum(equals)/10000
ProbNoSwitch
#Probability of winning the car by switching doors
ProbSwitch=sum(notequals)/10000
ProbSwitch
#Observation: As the sample size gets bigger, the probability of getting the car by switching the door also gets bigger. 
#The reason for that is our initial guess would most of the time be wrong due to the big sample size. 
#And since the host opens 98 doors with goats, we essentially know that the door the host left has the car 
#most of the time. When switched the probability is about 99%. 