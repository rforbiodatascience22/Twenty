perform_pca <- function(provided_dataset) {
  provided_dataset %>% 
    select(where(is.numeric)) %>% # retain only numeric columns
    prcomp(scale = TRUE, center = TRUE)
}