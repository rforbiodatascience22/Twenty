#' Creation of a Manhattan Plot 
#' 
#' Creation of a Manhattan plot from a small selection of expressed genes. 
#'
#' @param wrangled_dataset This is a dataset that has been cleaned
#' @param dna_segment This is the gene column 
#' @param negative_pvalue This is the negative p value column
#' @param significance_id This is the identified_as which shows if the gene is significant or not. 
#' @param gene_name This is the gene identification label. 
#'
#' @importFrom magrittr %>%
#' @author Oriade Latifah Simpson, \email{s172084@@dtu.dk}
#' @return visualisation_of_genes 
#' @export
#' @examples
#' manhattan_plot <- make_manhattan(nested_dataset)
#' manhattan_plot
make_manhattan <- function(wrangled_dataset, dna_segment, negative_pvalue, significance_id, gene_name) {
  visualisation_of_genes <- wrangled_dataset %>%
    ggplot2::ggplot(ggplot2::aes(
      x = dna_segment, y = negative_pvalue,
      colour = significance_id,
      label = gene_name
    )) +
    ggplot2::geom_point(
      alpha = 0.5,
      size = 2
    ) +
    ggplot2::geom_hline(
      yintercept = -log10(0.05),
      linetype = "dashed"
    ) +
    ggrepel::geom_label_repel(
      size = 5,
      max.overlaps = 15
    ) +
    ggplot2::theme_classic(base_family = "Helvetica") +
    ggplot2::theme(
      axis.text.x = ggplot2::element_blank(),
      legend.position = "bottom"
    ) +
    ggplot2::labs(
      x = "Gene",
      y = "Minus log10(p)",
      title = "Manhattan Plot"
    ) +
    ggplot2::scale_color_manual(values = c("#E7B860", "#00AFCC"))
  
  return(visualisation_of_genes)
}
