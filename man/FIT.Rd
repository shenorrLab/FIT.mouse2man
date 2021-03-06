% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.r
\name{FIT}
\alias{FIT}
\title{Run FIT pipeline}
\usage{
FIT(MouseFile, DataType)
}
\arguments{
\item{MouseFile}{File name that includes the mouse data, in CSV format}

\item{DataType}{Either "microarray" or "rnaseq", depending on the technology by which the data was assayed.}
}
\value{
A data.frame containing the following columns:
\itemize{
  \item{\strong{Mouse.Entrez, Human.Entrez, Mouse.symbol, Human.symbol} - Gene IDs}
  \item{\strong{Mouse_FoldChange} - Mouse fold-change as computed from the mouse input data}
  \item{\strong{Mouse_Ztest} - Mouse Z-test values as computed from the mouse input data}
  \item{\strong{FIT_prediction} - Human effect-size prediction by the FIT model}
  \item{\strong{FIT_percentile} - Percentiles of absolute values of FIT's predictions}
  \item{\strong{UpDown} - Sign of prediction}
  \item{\strong{CI_low, CI_low, CI_size, CI_percentile} - Confidenc einterval values (low, high), overall size (high-low) and percentile}
  }
}
\description{
This function runs the whole FIT pipeline: checks input file format, pre-processes data (for microarray data only) 
and computes predictions.
}
