library(SingleCellExperiment)
library(tidyverse)
library(scater)
counts_matrix <- data.frame(cell_1 = rpois(10, 10), 
                            cell_2 = rpois(10, 10), 
                            cell_3 = rpois(10, 30))
rownames(counts_matrix) <- paste0("gene_", 1:10)
counts_matrix <- as.matrix(sc_counts) # must be a matrix object!

sce <- SingleCellExperiment(assays = list(counts = counts_matrix))
