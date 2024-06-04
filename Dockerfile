FROM bioconductor/bioconductor_docker:RELEASE_3_18

# LABEL adds metadata to an image:
LABEL maintainer="Bharat Mishra <bharat26@uab.edu>"
LABEL description="Environment which contains several commonly used Bulk RNA-Seq tools in U-BDS for Workshop"

# Install Bioconductor and other commonly used packages with BiocManager::install

RUN R --no-restore --no-save -e "BiocManager::install(c('DESeq2', 'tximport', \
'vsn','apeglm', 'tidyverse', 'SummarizedExperiment', 'vidger', \ 
'biomaRt', 'clusterProfiler', 'msigdbr', 'Glimma', 'simplifyEnrichment', \
'enrichplot', 'kableExtra','ggrepel','ggpubr', 'ComplexHeatmap','ComplexUpset','EnhancedVolcano', \
'RColorBrewer', 'hexbin', 'cowplot','gplots', 'ggplot2'))"

# installing CRAN with install.packages as

RUN R --no-restore --no-save -e "install.packages(c('BiocManager', 'remotes', 'gprofiler2', 'ggridges','rmarkdown'))"


# Install Github dependencies with
#RUN R --no-restore --no-save -e "devtools::install_github('<package name>', upgrade='never')"