#' Function 1
#'
#' This function allows you to know a player and his team.
#' @param year Input should be a year.
#' @keywords TmPlayer
#' @export
#' @examples
#' TmPlayer(1950)

# Function 1
TmPlayer <- function(YearInput) {
  dataset1 <- tidyverse::select(filter(DF, Year == YearInput), Year, Player, Tm)
  sprintf("In %s,  %s played in Team %s", YearInput, dataset1[1,"Player"], dataset1[1,"Tm"])
}
