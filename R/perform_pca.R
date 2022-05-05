#' Title
#'
#' @param provided_dataset 
#' @importFrom magrittr %>%
#' @return
#' @author Miss Oriade Latifah Simpson, \email{s172084@@dtu.dk}
#' @export
#'
#' @examples
perform_pca <- function(provided_dataset) {
  provided_dataset %>% 
    select(where(is.numeric)) %>% # retain only numeric columns
    prcomp(scale = TRUE, center = TRUE)
}