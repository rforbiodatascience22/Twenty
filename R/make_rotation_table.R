# make a pca rotation table. 
#' Title
#'
#' @param pca_fit 
#' @importFrom magrittr %>%
#' @return
#' @author Miss Oriade Latifah Simpson, \email{s172084@@dtu.dk}
#' @export
#'
#' @examples
make_rotation_table <- function(pca_fit) {
  pca_fit %>%
    tidy(matrix = "rotation")
}