# make a pca rotation table. 
make_rotation_table <- function(pca_fit) {
  pca_fit %>%
    tidy(matrix = "rotation")
}