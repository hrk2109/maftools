% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oncoplot.R
\name{oncoplot}
\alias{oncoplot}
\title{draw an oncoplot}
\usage{
oncoplot(maf, writeMatrix = FALSE, top = 20, genes = NULL,
  drawRowBar = TRUE, drawColBar = TRUE, showTumorSampleBarcodes = FALSE,
  annotation = NULL, annotationColor = NULL, genesToIgnore = NULL,
  removeNonMutated = FALSE, colors = NULL, fontSize = 10,
  sortByMutation = FALSE)
}
\arguments{
\item{maf}{an \code{\link{MAF}} object generated by \code{\link{read.maf}}}

\item{writeMatrix}{writes oncomatrix to output file.}

\item{top}{how many top genes to be drawn. defaults to 20.}

\item{genes}{Just draw oncoplot for these genes. defaults to NULL.}

\item{drawRowBar}{logical plots barplot for each gene.}

\item{drawColBar}{logical plots barplot for each sample.}

\item{showTumorSampleBarcodes}{logical to include sample names.}

\item{annotation}{data.frame with first column containing Tumor_Sample_Barcodes and rest of columns with annotations.}

\item{annotationColor}{list of colors to use for annotation. Default NULL.}

\item{genesToIgnore}{do not show these genes in Oncoplot. Default NULL.}

\item{removeNonMutated}{Logical. If \code{TRUE} removes samples with no mutations in the oncoplot for better visualization. Default \code{FALSE}.}

\item{colors}{named vector of colors for each Variant_Classification.}

\item{fontSize}{font size for gene names. Default 10.}

\item{sortByMutation}{Helpful in case of MAF was read along with copy number data. Default FALSE.}
}
\value{
None.
}
\description{
takes output generated by read.maf and draws an oncoplot (aka waterfall plot).
}
\details{
Takes maf file as input and plots it as a matrix. Any desired annotations can be added at the bottom of the oncoplot by providing \code{annotation}
}
\examples{
laml.maf <- system.file("extdata", "tcga_laml.maf.gz", package = "maftools")
laml <- read.maf(maf = laml.maf, removeSilent = TRUE, useAll = FALSE)
oncoplot(maf = laml, top = 3)
}
\seealso{
\code{\link{oncostrip}}
}

