#' Nested dataset to use downstream 
#'
#' Creates nested table of grouped genes that may be useful for further modelling.
#' @param long_dataset 
#' @param Gene 
#' @importFrom magrittr %>%
#' @author Miss Oriade Latifah Simpson, \email{s172084@@dtu.dk}
#' @return nested_outcome
#' @export
#'
#' @examples
#' outcome <- make_nested(dataset, grouping_category)
#' outcome 
make_nested <- function(long_dataset, Gene) {
  nested_outcome <- long_dataset %>%
    # group the data by genes and put it in double brackets. 
    dplyr::group_by(Gene) %>%
    # create a nested tibble composed of outcome and expression level.
    tidyr::nest(data = c(value, expression_level))
  
  return(nested_outcome)
}