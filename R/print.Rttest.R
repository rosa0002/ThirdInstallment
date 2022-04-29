library(magrittr)
library(kableExtra)
#' Print method  for the constructor function with the class Rttest
#'
#' @param x
#'
#' @return the data frame x and y
#' @export
#'
#' @examples
#' obj <- myConstr(x = x, y = y, alpha = 0.05); print(obj)
#'

print.Rttest = function(x){
  library(kableExtra)
  kableExtra::kable_styling(kable(x[["data"]], align = c('c', 'c') ,linesep = "\\addlinespace", digits = 4, booktabs = TRUE, caption = "population samples y and x"))

}

