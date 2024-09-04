## data ##
choice <- c("rock","paper","scissors")
random <- function() {sample(choice,size=1)}
player_score <- 0
com_score <- 0
count <- 1

## pao ying choob ##
pyc <- function() {
  print("Let's play Pao-Ying-Choob!")
  while (count<=10) {
  print(paste0("Round ",count))
  player <- readline("Choose between rock, paper or scissors: ")
  computer <- random()
  print(paste("Computer chose: ",computer))
  if ((player=="rock" & computer =="scissors")| (player=="paper" & computer =="rock")|(player=="scissors" & computer =="paper")) {
  print("You win!")
  player_score <- player_score+1
  com_score <- com_score+0
  } else if ((computer=="rock" & player =="scissors")| (computer=="paper" & player =="rock")|(computer=="scissors" & player =="paper")) {
    print("You lose!")
    player_score <- player_score+0
    com_score <- com_score+1
  } else {
    print("Dual")
    player_score <- player_score+0
    com_score <- com_score+0
  }
  count <- count+1
  }
  print(paste("Your score is",player_score))
  print(paste("Computer score is",com_score))
  ifelse(player_score>com_score,"Congratulations...You Win!","Sorry...You Lose!")
}
