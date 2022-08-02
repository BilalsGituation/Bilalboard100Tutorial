#' Randomly select a tune
#'
#' @param artist An artist/group to select a song from (default=Amerie)
#' @param data The dataset to use (default= billboard::wiki_hot_100s)
#'
#'
#' @return A random song is printed to the console
#' @export
#'
#' @examples random_tune()
#' @examples random_tune(artist = "Ray Charles")
#' @examples random_tune("Salt-n-Pepa")
#'
random_tune <- function(artist = "Amerie", data = billboard::wiki_hot_100s){
  data <- data[data$artist == artist,]
  song <- base::sample(data$title, 1)
  cat(paste0("Random song by ",artist," : ", song))
}
