menus <- c("seafood","tomyum","cheese");
pizza_size <-c("s","m","l")
size_price <-c(s=100,m=200,l=300)
menu_with_price <- c(seafood=100,tomyum=80,cheese=60);

order_pizza <- function(){
  print("What pizza you would like?")
  pizza<-readLines("stdin",n=1)

  while (!pizza %in% menus){
    print("Not in menu please order again")
    print("What pizza you would like?")
    pizza<-readLines("stdin",n=1)
  }

   print("What pizza size you would like?")
   size<-readLines("stdin",n=1)
    while (!size %in% pizza_size){
    print("we not have this size please order again")
    print("What pizza size you would like?")
    size<-readLines("stdin",n=1)
  }

  print("How many pizza would like?")
  count<-as.numeric(readLines("stdin",n=1))
  
  total_price <- (menu_with_price[pizza]+size_price[size])*count

  paste("Your order is ",total_price," Baht")

 
}

order_pizza()
