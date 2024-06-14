# U-BDS Bulk RNA-seq workshop

This repository contains the U-BDS materials for the bulk RNA-seq workshop.
## Pre-requirements

Workshop participants are strongly encouraged to have familiarity with Unix and R (introductory level).

The Software Carpentry provides excellent introductory level material, which can be found in the following links:

* **R** <https://swcarpentry.github.io/r-novice-gapminder/>
* **Shell**: <https://swcarpentry.github.io/shell-novice/>

If you have already attended one of the previous U-BDS workshops for R and Unix
programming, then you should meet the pre-requirements. If you have not, we
heavily encourage participants to go through the materials from the links above
prior to attendance. 

_____________

## Scope of the workshop

This workshop will cover the foundational topics and methods to bulk RNA-seq analysis, including:

* Introduction to raw data management and data exploration
* Secondary analysis with `nf-core/rnaseq`
* Tertiary analysis topics: quality and control, data normalization and differential 
gene expression analysis with `DESeq2`, gene annotation, gene enrichment analysis 
(gene-ontology and gene set enrichment analysis)
* Fundamentals of data visualization for transcriptomics

## Docker

While the tertiary analysis portion of the workshop is taught using personal computer (due to time limitations),
a container with all R depedencies is available at: <https://hub.docker.com/r/uabbds/rnaseq_workshop>

**Note to maintainers/authors**: website rendering should always be performed with the latest version of the container.
This minimizes differences in the website due to versions among tools.

## Authors

* Austyn Trull
* Bharat Mishra, PhD
* Lara Ianov, PhD

A.T., B.H. and L.I. designed workshop content and initial outline. A.T. contributed
to installation instructions, data management, and secondary analysis materials. B.H.
contributed to Docker container creation and tertiary analysis materials 
(including DEG analysis, GO, WGCA, visualization etc.). 
L.I. supervised all work, reviewed all content and managed website design and deployment.

## Additional credits

In addition to U-BDS's best practices and code written by U-BDS, sections of the
teaching material for this workshop (parts of tertiary analysis), contains materials
which have been adapted or modified from the following sources (we thank the
curators and maintainers of all of these resources for their wonderful contributions,
compiling the best practices, and easy to follow training guides for beginners):

* Beta phase of carpentries meterial: <https://carpentries-incubator.github.io/bioc-rnaseq/index.html>
* Love MI, Huber W, Anders S (2014). “Moderated estimation of fold change and dispersion for RNA-seq data with DESeq2.” Genome Biology, 15, 550. doi:10.1186/s13059-014-0550-8 ; vignette: <https://bioconductor.org/packages/devel/bioc/vignettes/DESeq2/inst/doc/DESeq2.html>
* Additional references and materials: 
  * <https://alexslemonade.github.io/refinebio-examples/03-rnaseq/00-intro-to-rnaseq.html>
  * <https://bioc.ism.ac.jp/packages/3.7/bioc/vignettes/enrichplot/inst/doc/enrichplot.html>

We would also like to thank the following groups for support:

* UAB's Research Computing (HPC resources and workshop logistics with resources)
* nf-core community (rnaseq pipeline)

We would also like to thank the authors of the dataset which we implement
in our workshop:

* Koch CM, Chiu SF, Akbarpour M, Bharat A, Ridge KM, Bartom ET, Winter DR.
A Beginner's Guide to Analysis of RNA Sequencing Data. Am J Respir Cell Mol Biol.
2018 Aug;59(2):145-157. doi: 10.1165/rcmb.2017-0430TR. PMID: 29624415; PMCID: PMC6096346.

Lastly, we would also like to thank Kristen Coutinho for the dataset suggestion, 
and preliminary discussions for this workshop.
