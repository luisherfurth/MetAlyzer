% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/impute_data.R
\name{zero_imputation}
\alias{zero_imputation}
\title{Zero imputation}
\usage{
zero_imputation(vec, perc_of_min, impute_NA)
}
\arguments{
\item{vec}{A numeric vector containing the concentration values}

\item{perc_of_min}{A numeric value below 1}

\item{impute_NA}{Logical value whether to impute NA values}
}
\description{
This function performs zero imputation with the minimal positive value times
perc_of_min.
}
\keyword{internal}
