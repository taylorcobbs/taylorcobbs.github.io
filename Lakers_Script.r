NBA_Teams <- read.csv("NBA_Top_Teams.csv")
lakers_only <- read.csv("Lakers_Only.csv")
install.packages("ggplot2")
install.packages("scales")
library("scales")
library("ggplot2")

## This is the code for the top 8 NBA teams plus the lakers colored in by Team
ggplot(data = NBA_Teams) +
  geom_point(mapping = aes(x=NETRTG, y=Salary, color = TEAM,)) +
  facet_wrap(~TEAM)+
  scale_y_continuous(labels = comma)

## This is code for the Lakers colored in by 'Players'

ggplot(data = lakers_only) +
  geom_point(mapping = aes(x=NETRTG, y= Salary, color = PLAYERS,))+
  scale_y_continuous(labels = comma)