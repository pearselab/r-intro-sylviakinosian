#loop that prints numbers 20 to 10
for (i in 20:10){
  print(i)
}

#calcluate if a number is even
for (i in 20:10){
  if (i %% 2 == 0){
    print(i)
  }
}

#calculate if a number is a prime number
prime <- function(x){
  for (i in 1:x){
    if (x %% i == 0){
      print(x)
    }else{
      break}
  }
}



prime numbers
break!