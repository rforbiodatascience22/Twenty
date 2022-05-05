# The Rotation Table from Principal Components analysis 
#'
#' Create a rotation table from a modelled PCA object. 
#' @param pca_fit This is a model object. 
#' @importFrom magrittr %>%
#' @return rt
#' @author Miss Oriade Latifah Simpson, \email{s172084@@dtu.dk}
#' @export
#'
#' @examples
#' rot_tab <- make_rotation_table(fitted_pca_object)
#' rot_tab
make_rotation_table <- function(pca_fit) {
  rt <- pca_fit %>%
    broom::tidy(matrix = "rotation")
  
  return(rt)
}