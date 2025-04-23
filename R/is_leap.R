#' is this a leap year
#'
#' @param input a number, or a string that contains a number
#'
#' @return TRUE or FALSE on whether it is a leap year
#' 
#' @export
#' 
#' @examples
#' isleap(1992) # returns TRUE
#' isleap(2000) # returns TRUE
#' isleap(1900) # returns FALSE
#' isleap(2021) # returns FALSE

is_leap <- function(input) {
  if(input <= 0 || input %% 1 != 0) {
    stop("input needs to be a positive non-zero value")
  }
  if (!is.numeric(input)) {
    stop("input must be a numeric value")
  }
  if (input %% 4 == 0) {
    return(TRUE)
  } else if (input %% 4 == 0 && input %% 100 == 0) {
    return(FALSE)
  } else if (input %% 400 == 0) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}