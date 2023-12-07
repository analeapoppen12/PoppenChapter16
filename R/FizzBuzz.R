#' Fizz.Buzz Function.
#'
#' Child’s game Fizz Buzz. The goal is to count as high as you can, but for any number
#' evenly divisible by 3, substitute “Fizz” and any number evenly divisible by 5,
#' substitute “Buzz”, and if it is divisible by both, substitute “Fizz Buzz”.
#' So the sequence will look like 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, . . .
#'
#' This function will test Fizz Buzz, based on a Youtube video
#'
#' @param a A real number
#' @param b A real number
#' @return Any number evenly divisible by 3, substitute "Fizz". Any number evenly divisible by 5,
#' substitute “Buzz”. Any number divisible by both, substitute “Fizz Buzz”
#' @examples
#' Fizz.Buzz(1:30)
#' @export
Fizz.Buzz <- function(x){
  result= NULL
  for( i in 1:length(x)){
    if( x[i] <= 0){
     stop('Error Message: Cannot calculate zero')
    }else if(is.infinite(x[i])){
     stop('Error Message: Cannot calculate infinity')
    }else if( x[i] %% 3==0 & x[i] %% 5==0 ){
      result[i] <- 'FizzBuzz'
    }else if( x[i] %% 5 == 0){
      result[i] <- 'Buzz'
    }else if( x[i] %% 3 == 0){
      result[i] <- 'Fizz'
    }
    else{
      result[i]<-x[i]
    }
  }
  return(result)
}
