#' seurat_obj
#'
#' A Seurat dataset containing single-cell RNA sequencing data.
#' 
#' This Seurat object contains pre-processed single-cell RNA-seq data that can be used 
#' for downstream analysis such as clustering, differential expression, and visualization.
#'
#' @format A `Seurat` object.
#' @usage data(seurat_obj)
#' @import SeuratObject
"seurat_obj"

#' gate_seurat_obj
#'
#' Coordinates for a gate interactively drawn using `tidygate` on a Seurat object.
#' 
#' These x, y coordinates represent a manually defined gate used to subset specific populations
#' from a Seurat object.
#'
#' @format A list containing x, y coordinates for one gate.
#' @usage data(gate_seurat_obj)
"gate_seurat_obj"

#' seurat_obj_UMAP3
#'
#' A Seurat dataset of single-cell RNA sequencing data with 3 UMAP dimensions.
#'
#' This Seurat object contains three-dimensional UMAP embeddings for visualizing cell populations
#' in a reduced-dimensional space.
#'
#' @format A `Seurat` object.
#' @usage data(seurat_obj_UMAP3)
#' @import SeuratObject
"seurat_obj_UMAP3"

#' pseudo_bulk
#'
#' A `SummarizedExperiment` object containing pseudo-bulk RNA sequencing data.
#'
#' This object was created for benchmarking purposes, representing a pseudo-bulk aggregation 
#' of single-cell data, saved due to a specific issue with GitHub actions while functioning 
#' correctly in local environments.
#'
#' @format A `SummarizedExperiment` object.
#' @usage data(pseudo_bulk)
#' @importFrom SummarizedExperiment SummarizedExperiment
"pseudo_bulk"

#' sce_obj
#'
#' A `SingleCellExperiment` dataset containing single-cell RNA sequencing data.
#'
#' This SingleCellExperiment (SCE) object contains pre-processed single-cell RNA-seq data 
#' ready for downstream analysis, such as clustering or differential expression analysis.
#'
#' @format A `SingleCellExperiment` object.
#' @usage data(sce_obj)
#' @importFrom SingleCellExperiment SingleCellExperiment
"sce_obj"

#' gate_sce_obj
#'
#' Coordinates for a gate interactively drawn using `tidygate` on a SingleCellExperiment object.
#' 
#' These x, y coordinates represent a manually defined gate used to subset specific populations
#' from a SingleCellExperiment object.
#'
#' @format A list containing x, y coordinates for one gate.
#' @usage data(gate_sce_obj)
"gate_sce_obj"

#' sce_obj_UMAP3
#'
#' A `SingleCellExperiment` dataset of single-cell RNA sequencing data with 3 UMAP dimensions.
#'
#' This SCE object contains three-dimensional UMAP embeddings, which allow visualization 
#' of cell populations in reduced-dimensional space.
#'
#' @format A `SingleCellExperiment` object.
#' @usage data(sce_obj_UMAP3)
#' @importFrom SingleCellExperiment SingleCellExperiment
"sce_obj_UMAP3"

#' theme_multipanel
#'
#' A ggplot2 theme object designed for creating multipanel plots.
#' 
#' This theme can be applied to ggplot2-based visualizations to standardize the look and feel 
#' of multipanel figures, ensuring consistency across plots.
#'
#' @format A `ggplot2` theme.
#' @usage data(theme_multipanel)
#' @importFrom ggplot2 theme
"theme_multipanel"

#' tidygate_env_gates
#'
#' A set of gates interactively drawn for spatial data using the `tidygate` package.
#'
#' This object contains gates that were drawn interactively on spatial data based on tissue morphology, 
#' highlighting areas of interest for future reproducible analysis. These gates can be loaded and applied 
#' to similar data for consistent and automated gating.
#'
#' @details 
#' Gates were saved programmatically for future use. The object was created using the `gate` function 
#' in `tidygate` and saved as an RDS file for reproducibility. This can be particularly useful in spatial 
#' transcriptomics data analysis where regions of interest are manually gated.
#'
#' @return A list of x and y coordinates representing the interactive gates.
#'
#' @format A list containing the x and y coordinates for gates.
#' 
#' @usage data(tidygate_env_gates)
#'
#' @examples
#' # Load the gates
#' data(tidygate_env_gates)
#' 
#' # Apply the gates to new data for reproducible analysis
#' # spatial_data <- applyGates(spatial_data, gates = tidygate_env_gates)
#'
#' @source Created interactively using the `tidygate` package
"tidygate_env_gates"

#' pbmc_h3k4me3_hg38
#'
#' H3K4me3 peaks for human PBMCs lifted over to hg38 genome assembly
#'
#' This object contains H3K4me3 peaks for human peripheral blood mononuclear cells (PBMCs) mapped to 
#' the hg38 genome assembly. The peaks were initially from hg19 and were lifted over to hg38 using 
#' a UCSC chain file. The peaks contain several columns of information including signal value, 
#' q-value, and peak locations, which can be used for visualisation and analysis.
#'
#' @details 
#' The H3K4me3 peaks were lifted over from the hg19 to hg38 genome assembly using the `liftOver` 
#' function from the `rtracklayer` package. The `seqlevels` and `seqinfo` were aligned with the 
#' `SingleCellExperiment` object `sce_sub`. The Ensembl-style chromosome naming convention (NCBI) 
#' was applied for consistency. This dataset contains selected columns such as `signalValue`, 
#' `qValue`, and `peak`, making it ready for downstream analysis or plotting.
#'
#' @return A GRanges object containing the H3K4me3 peaks for PBMCs in the hg38 genome assembly.
#'
#' @format A `GRanges` object with columns:
#' \describe{
#'   \item{signalValue}{The signal value for each peak.}
#'   \item{qValue}{The q-value for the significance of each peak.}
#'   \item{peak}{The peak location in the genome.}
#' }
#'
#' @usage data(pbmc_h3k4me3_hg38)
#'
#' @examples
#' # Load the dataset
#' data(pbmc_h3k4me3_hg38)
#' 
#' # Plot q-values of the H3K4me3 peaks
#' plot(pbmc_h3k4me3_hg38$qValue, type="l", ylab="q-value", main="H3K4me3 peaks")
#' abline(v=5000, lty=2)
#'
#' @source H3K4me3 peak data was lifted from hg19 to hg38 using UCSC liftOver chain files.
"pbmc_h3k4me3_hg38"