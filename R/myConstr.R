#' @title Constructor function
#'
#' Takes two vectors and a alpha value, and returs a list containing a data frame of the vectors, alpha, confidence interval, and the p-value from a t-test. Assumes that the variances of the two vectors are equal.
#'
#'
#' @param x vector describing population x
#' @param y vector describing population y
#' @param alpha alpha value for the t-test
#'
#' @return a list containing a data frame of the vectors, alpha, confidence interval, and the p-value
#' @export
#'
#' @examples
#' \dontrun{ obj <- myConstr(x = x, y = y, alpha = 0.05)}
myConstr = function(x, y, alpha){
  df <- data.frame(x=x,y=y)
  t = stats::t.test(x, y, mu=0, var.equal = TRUE)

  ci = t["conf.int"]
  p_value = t["p.value"]

  # the named list CHECK CHECK
  myList = list(data = df, alpha = alpha, confidence_interval = ci, p_value = p_value)
  class(myList) = "Rttest"
  myList
}



