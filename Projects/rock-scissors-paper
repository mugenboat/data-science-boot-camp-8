answers <- c("rock","paper","scissor")
point <- 0
round <- 0

powyingchoop <- function(){

  while(TRUE){
  print("Pow Ying Choop!")
  ans<-readLines("stdin",n=1)
    
    if(ans=="quit"){
      break
    }

    while (!ans %in% answers){
    print("Your input incorrect please try again")
    print("Pow Ying Choop!")
    ans<-readLines("stdin",n=1)
  }
  
  bot_ans <- sample(answers,1)
  print(bot_ans)
  round <- round+1
  
  if(ans=="rock" & bot_ans =="paper"){
    print('You won')
    point <- point+1
  }else if(ans=="rock" & bot_ans =="scissor"){
    print('You lose')
  }else if(ans=="paper" & bot_ans =="rock"){
    print('You won')
    point <- point+1
  }else if(ans=="paper" & bot_ans =="scissor"){
    print('You lose')
  }else if(ans=="scissor" & bot_ans=="paper"){
    print('You won')
    point <- point+1
  }else if(ans=="scissor" & bot_ans=="rock"){
    print('You lose')
  }else{
    print('Draw')
  }}
    paste("Your win ",point,": play",round," round")
}

powyingchoop()
