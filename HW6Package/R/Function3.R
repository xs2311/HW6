#' Function 3
#'
#' This function allows you to get correlation matrix of all the numerical variables we have in the dataset in a particular year.
#' @param year Input should be a year.
#' @keywords cortable
#' @export
#' @examples
#' cortable(1950)

# Function 3

cortable <- function(YearInput3) {
  CorData <- tidyverse::keep(
    filter(DF,Year==YearInput3),
    is.numeric)
  cor(CorData)
}
