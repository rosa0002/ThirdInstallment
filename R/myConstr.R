#' Constructor function
#'
#' Takes two vectors and a alpha value, and returs a list containing a data frame of the vectors, alpha, confidence interval, and the p-value from a t-test. Assumes that the variances of the two vectors are equal.
#'
#'
#' @param x
#' @param y
#' @param alpha
#'
#' @return a list containing a data frame of the vectors, alpha, confidence interval, and the p-value
#' @export
#'
#' @examples
#' x <-rnorm(30,5,2); y<- rnorm(30, 3,2); alpha <- 0.05; myConstr(x = x, y = y, alpha = 0.05)
#'
myConstr = function(x, y, alpha){
  df <- data.frame(x=x,y=y)
  t = t.test(x, y, mu=0, var.equal = TRUE)
  #names(t)
  ci = t["conf.int"]
  p_value = t["p.value"]

  # the named list CHECK CHECK
  myList = list(data = df, alpha = alpha, confidence_interval = ci, p_value = p_value)
  class(myList) = "Rttest"
  myList
}

library(magrittr)
library(kableExtra)
print.Rttest = function(x){
  #print the data using kableExtra::kable()
  kableExtra::kable(x[["data"]], align = c('c', 'c') , digits = 4, booktabs = TRUE, caption = "population samples y and x") %>%
    kable_styling()

}
