#' Table of Genes in a long format
#'
#' Transformation of a gene expression matrix into a 3 column table. 
#' @param the_dataset This is a dataset often in a wide format. 
#' @importFrom magrittr %>%
#' @importFrom tidyr pivot_longer
#' @return gene_data
#' @author Oriade Latifah Simpson
#' @export
#' @examples
#' data("data_two")
#' my_data_two
#' my_long_data <- convert_to_long(my_data_two)
#' my_long_data
convert_to_long <- function(the_dataset) {
  gene_data <- the_dataset %>%
    pivot_longer((c(stringr::str_c("gene_", seq(1, 7129)))),
                 names_to = "Gene",
                 values_to = "expression_level",
                 values_drop_na = TRUE)
  
  return(gene_data)
}