% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calc_cv.R
\name{calc_CV}
\alias{calc_CV}
\title{Add mean, SD and CV}
\usage{
calc_CV(aggregated_data, cv_thresholds = c(0.1, 0.2, 0.3))
}
\arguments{
\item{aggregated_data}{aggregated_data tibble data frame}

\item{cv_threshs}{A numeric vector of upper thresholds (CV <= t) between 0
and 1 for CV categorization.}
}
\value{
An updated aggregated_data tibble data frame
}
\description{
This function calculates the mean, standard deviation (SD)
and the coefficient of variation (CV) for each group and adds them to
aggregated_data.
}
