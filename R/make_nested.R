#' Nested dataset to use downstream 
#'
#' Creates nested table of grouped genes that may be useful for further modelling.
#'
#' @param long_dataset This is the dataset provided
#' @param value The is the value variable. 
#' @param expression_level This is the expression level variable. 
#' @param Gene This is the list of genes. 
#'
#' @importFrom magrittr %>%
#' @author Miss Oriade Latifah Simpson, \email{s172084@@dtu.dk}
#' @return nested_outcome
#' @export
#' @examples
#' outcome <- make_nested(dataset, grouping_category)
#' outcome 
make_nested <- function(long_dataset, Gene, value, expression_level) {
  nested_outcome <- long_dataset %>%
    # group the data by genes and put it in double brackets. 
    dplyr::group_by(Gene) %>%
    # create a nested tibble composed of outcome and expression level.
    tidyr::nest(data = c(value, expression_level))
  
  return(nested_outcome)
}