FROM bioconductor/bioconductor_docker:RELEASE_3_18

# LABEL adds metadata to an image:
LABEL maintainer="Bharat Mishra <bharat26@uab.edu>"
LABEL description="Environment which contains several commonly used Bulk RNA-Seq tools in U-BDS"

# Install Bioconductor and other commonly used packages with BiocManager::install

RUN R --no-restore --no-save -e "BiocManager::install(c('DESeq2', 'edgeR', 'limma', 'tximport', 'biomaRt', 'Glimma', 'GeneOverlap', 'apeglm', \
'EnhancedVolcano', 'ComplexHeatmap', 'clusterProfiler', 'msigdbr', 'org.Mm.eg.db', 'vsn', 'RColorBrewer', 'hexbin', 'cowplot', \
'enrichplot', 'gplots', 'ggplot2', 'simplifyEnrichment', 'apeglm', 'microbenchmark', 'Biostrings'))"

# installing CRAN with install.packages as

RUN R --no-restore --no-save -e "install.packages(c('pheatmap','tidyverse', 'openxlsx', 'devtools', 'ComplexUpset', 'gprofiler2', 'readr', \
'ggrepel', 'RColorBrewer', 'plyr', 'htmlwidgets', 'htmltools', 'kableExtra', 'devtools', 'AER', 'dendextend', 'ggpubr', \
'rmarkdown', 'tinytex', 'markdown'))"
