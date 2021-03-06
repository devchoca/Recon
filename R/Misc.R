#' Cartesian coordinates generator
#'
#' This function creates a grid (more especifically, a 2-cell) of coordinates in R^2. Useful for plotting and generating data points with which to apply some functions.
#'
#' @param a is the grid's lower bound. Defaults to 0.
#' @param b is the grid's upper bound. Defaults to 100.
#' @param c is the "by" parameter, the grid's density. Defaults to .5.
#'
#' @return Data Frame with a grid
#'
#' @examples
#'
#' grid2(a = 0, b = 10, c = .1)
#'
#' @export

grid2 <- function(a = 0,
                   b = 100,
                   c = .5) {

x = vector()
y = vector()

x = seq(from = a,
        to = b,
        by = c)

x = sort(rep(x,length(x)),
         decreasing = FALSE)

y = seq(from = a,
          to = b,
            by = c)

y = rep(y,
        length(y))

return(data.frame(x,y))

}
