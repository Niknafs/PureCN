% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculateIntervalWeights.R
\name{calculateIntervalWeights}
\alias{calculateIntervalWeights}
\title{Calculate interval weights}
\usage{
calculateIntervalWeights(normal.coverage.files, interval.weight.file,
  plot = FALSE)
}
\arguments{
\item{normal.coverage.files}{A set of normal coverage samples
to estimate target log-ratio standard deviations.}

\item{interval.weight.file}{Output filename.}

\item{plot}{Diagnostics plot, useful to tune parameters.}
}
\value{
A \code{data.frame} with interval weights.
}
\description{
Creates an interval weight file useful for segmentation. Requires a set of 
coverage files from normal samples. Interval weights will be
set proportional to the inverse of coverage standard deviation across all
normals. Intervals with high variance in coverage in the pool of normals are
thus down-weighted.
}
\examples{

interval.weight.file <- "interval_weights.txt"
normal.coverage.file <- system.file("extdata", "example_normal.txt", 
    package="PureCN")
normal2.coverage.file <- system.file("extdata", "example_normal2.txt", 
    package="PureCN")
normal.coverage.files <- c(normal.coverage.file, normal2.coverage.file)

calculateIntervalWeights(normal.coverage.files, interval.weight.file)

}
\author{
Markus Riester
}
