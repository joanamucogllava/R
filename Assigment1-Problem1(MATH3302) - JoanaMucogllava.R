#Problem 1

height = seq(60, 80, 5)
weight = seq(120, 300, 10)
sex = c("Female", "Male")
magic_elements = c("Earth", "Wind", "Water", "Fire")

S = expand.grid("Height" = height, "Weight" = weight, "Sex" = sex, "Magic_Elements" = magic_elements)
nrow(S) #The number of the rows(possible outcomes) is 760

E_1 = S[S$Height >= 75,]
nrow(E_1) #The size of E_1 is 304

E_2 = S[S$Weight < 150 & S$Magic_Elements == "Fire",]
nrow(E_2) #The size of E_2 is 30

E_3 = S[S$Sex == "Female" | S$Magic_Elements != "Wind",]
nrow(E_3) #The size of E_3 is 665

#Problem 2
die_1 = 1:6
die_2 = 1:6
card_deck = 1:13
suits = c("Spades", "Hearts", "Diamonds", "Clubs")

S = expand.grid("First_Die" = die_1, "Second_Die" = die_2, "Card_Deck" = card_deck, "Suits" = suits)
nrow(S) #The number of the rows(possible outcomes) is 1872

E_4 = S[S$First_Die + S$Second_Die >= 11,]
nrow(E_4) #The size of E_1 is 156

E_5 = S[S$Card_Deck != 13 & S$Suits != "Spades" | S$Card_Deck == 13 & S$Suits != "Spades" | S$Card_Deck != 13 & S$Suits == "Spades",]
nrow(E_5) #The size of E_5 is 1836
