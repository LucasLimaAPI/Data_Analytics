#Capstone Project
#Este projeto tem como referencia o "moneyball" e usarei minhas habilidades desenvolvidas no decorrer do curso
#Para ajudar os Oakland a recrutar jogadores.

#Vamos começar lendo o batedor.
batting <- read.csv('Batting.csv')
batting
head(batting$AB)
head(batting$X2B)

#Formulas 
batting$BA <- batting$H / batting$AB
tail(head(batting),5)

batting$OBP <- (batting$H + batting$BB + batting$HBP)/(batting$AB + batting$BB + batting$SF)

str(batting)
             
#Salario e ano destes jogadores.
sal <- read.csv("Salaries.csv")
batting <- subset(batting,yearID >= 1985)
summary(batting)

#Combination
combo <- merge(batting,sal,by=c('playerID','yearID'))
summary(combo)

#Subconjunto de chamadas de dados livres e chamada de ultimo jogador
lost_players <- subset(combo,playerID %in% c('giambja01','damonjo01','saenzol01'))
lost_players <- subset(lost_players,yearID==2001)
lost_players <- lost_players[,c("playerID","H","X2B")]
#REPLACEMENT PLAYERS
combo <- subset(combo,yearID == 2001)
str(combo)


ggplot(combo, aes(x=OBP,y=salary)) + geom_point(size=2)
combo <- subset(combo,salary > 8000000 & OBP > 0)
str(combo)

head(arrange(combo,OBP),10)

options <- head(arrange(combo,desc(OBP)),10)
options[,c('AB','salary')]
