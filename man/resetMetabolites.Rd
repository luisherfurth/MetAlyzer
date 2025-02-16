% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MetAlyzer-class.R
\name{resetMetabolites}
\alias{resetMetabolites}
\title{Reset metabolites}
\usage{
resetMetabolites(metalyzer, inplace = TRUE)
}
\arguments{
\item{metalyzer}{MetAlyzer object}
}
\description{
This function resets the filtering of metabolites.
}
\examples{
metalyzer <- MetAlyzer_dataset(file_path = extraction_data())

resetMetabolites(metalyzer)
# or
metalyzer <- resetMetabolites(metalyzer, inplace = FALSE)
}
