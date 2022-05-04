convert_to_long <- function(the_dataset) {
  the_dataset %>%
    pivot_longer((c(str_c("gene_", seq(1, 7129)))),
                 names_to = "Gene",
                 values_to = "expression_level",
                 values_drop_na = TRUE
    )
}