make_manhattan <- function(wrangled_dataset) {
  wrangled_dataset %>%
    ggplot(aes(
      x = Gene, y = neg_log10_p,
      colour = identified_as,
      label = gene_label
    )) +
    geom_point(
      alpha = 0.5,
      size = 2
    ) +
    geom_hline(
      yintercept = -log10(0.05),
      linetype = "dashed"
    ) +
    ggrepel::geom_label_repel(
      size = 5,
      max.overlaps = 15
    ) +
    theme_classic(base_family = "Helvetica") +
    theme(
      axis.text.x = element_blank(),
      legend.position = "bottom"
    ) +
    labs(
      x = "Gene",
      y = "Minus log10(p)",
      title = "Manhattan Plot"
    ) +
    scale_color_manual(values = c("#E7B860", "#00AFCC"))
}
