#' Table of Genes in a long format
#'
#' Transformation of a gene expression matrix into a 3 column table. 
#' @param the_dataset This is a dataset often in a wide format. 
#' @importFrom magrittr %>%
#' @return gene_data
#' @author Oriade Latifah Simpson
#' @export
#'
#' @examples
#' my_long_data <- convert_to_long(gene_expression_table)
#' my_long_data
convert_to_long <- function(the_dataset) {
  gene_data <- the_dataset %>%
    tidyr::pivot_longer((c(str_c("gene_", seq(1, 7129)))),
                 names_to = "Gene",
                 values_to = "expression_level",
                 values_drop_na = TRUE)
  
  return(gene_data)
}