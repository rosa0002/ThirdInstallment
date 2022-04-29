#' @title Plot method for the Constructor function of class Rttest
#'
#' @param x data set containing population variables x and y
#' @param ... extra parameters
#' @importFrom ggplot2 geom_boxplot aes coord_flip labs scale_fill_manual
#'
#' @return a ggplot with side by side boxplots of the two population samples
#' @export
#'
#' @examples
#' \dontrun{ obj <- myConstr(x = x, y = y, alpha = 0.05); plot(obj)}
plot.Rttest = function(x, ...){
  populations = NULL
  count = NULL
  x_pop = x[["data"]][["x"]]
  y_pop = x[["data"]][["y"]]

  letters <- rep(c('x','y'), c(30,30))
  df <- data.frame(count = c(x_pop,y_pop), populations = letters)
  g <- ggplot2::ggplot(df) +
    geom_boxplot(aes(x = populations, y = count, fill = populations), notch = TRUE) +
    coord_flip() +
    labs(
      title = "Boxplot of populations x and y",
      subtitle = "by Wagner Rosa",
      caption = "from print.Rttest method"
      #x = "Count",
      #y = "Populations"
    ) +
    scale_fill_manual(values = c("#e74c3c", "#2ecc71"))
  #g + scale_fill_brewer(palette="Blues") + theme_classic()
  g
}




