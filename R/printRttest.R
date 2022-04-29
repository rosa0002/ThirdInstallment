#' @title Print method  for the constructor function of class Rttest
#'
#'
#' @param x the data frame from the list in the constructor function
#' @param ... extra parameters
#'
#' @return the data frame x and y
#' @export print.Rttest
#' @export
#'
#' @examples
#' \dontrun{ obj <- myConstr(x = x, y = y, alpha = 0.05); print(obj)}
print.Rttest = function(x, ...){

  f = kableExtra::kable(x[["data"]], align = c('c', 'c') ,linesep = "\\addlinespace", digits = 4, booktabs = TRUE, caption = "population samples y and x")
  kableExtra::kable_styling(f)

}

