#' Example dataset Model data using Principal Components analysis
#'
#' Perform data modelling using principal components analysis
#' @param provided_dataset This is the dataset that is procided to the function 
#' @importFrom magrittr %>%
#' @importFrom dplyr select
#' @import utils 
#' @importFrom stats prcomp
#' @return modelled_data
#' @author Miss Oriade Latifah Simpson, \email{s172084@@dtu.dk}
#' @export
#' @examples
#' pca_fit <- perform_pca(a_dataset)
#' pca_fit
perform_pca <- function(provided_dataset) {
  modelled_data <- provided_dataset %>% 
    dplyr::select(where(is.numeric)) %>% # retain only numeric columns
    stats::prcomp(scale = TRUE, center = TRUE)
  
  return(modelled_data)
}
utils::globalVariables("where")
