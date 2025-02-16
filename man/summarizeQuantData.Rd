% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MetAlyzer-class.R
\name{summarizeQuantData}
\alias{summarizeQuantData}
\title{Summarize quantification status}
\usage{
summarizeQuantData(metalyzer)
}
\arguments{
\item{metalyzer}{MetAlyzer object}
}
\value{
A status_list of metabolite vectors for each quantification status
}
\description{
This function lists the number of each quantification status and
its percentage.
}
\examples{
metalyzer <- MetAlyzer_dataset(file_path = extraction_data())

status_list <- summarizeQuantData(metalyzer)
names(status_list)
}
