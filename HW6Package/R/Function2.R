#' Function 2
#'
#' This function allows you to know the oldest player in the year you put in.
#' @param year Input should be a year.
#' @keywords OldestPlyr
#' @export
#' @examples
#' OldestPlyr(1950)

# Function 2
OldestPlyr <- function(YearInput2) {
  dataset2 <- tidyverse::arrange(select(filter(DF, Year == YearInput2), Player, Age), desc(Age))
  sprintf("For %s, the oldest player is %s", YearInput2, dataset2[1,"Player"])
}
