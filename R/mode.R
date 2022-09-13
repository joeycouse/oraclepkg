#' Return the mode of numeric vector
#'
#' @param x numeric vector
#'
#' @return numeric
#'
#' @examples
#'
#' \dontrun{
#'
#' library(cousepkg)
#'
#' x <- c(1,2,3,4,4,5,5,5)
#'
#' mode(x)
#'
#' }
#'
#' @export
#'
mode <- function(x) {
ux <- unique(x)
ux[which.max(tabulate(match(x, ux)))]
}
