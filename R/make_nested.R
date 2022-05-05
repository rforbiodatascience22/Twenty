#' Title
#'
#' @param long_dataset 
#' @param Gene 
#' @importFrom magrittr %>%
#' @author Miss Oriade Latifah Simpson, \email{s172084@@dtu.dk}
#' @return
#' @export
#'
#' @examples
make_nested <- function(long_dataset, Gene) {
  long_dataset %>%
    # group the data by genes and put it in double brackets. 
    group_by(Gene) %>%
    # create a nested tibble composed of outcome and expression level.
    nest(data = c(value, expression_level))
}