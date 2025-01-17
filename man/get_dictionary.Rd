% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_aux.R
\name{get_dictionary}
\alias{get_dictionary}
\title{get_dictionary}
\usage{
get_dictionary(
  version = NULL,
  ppp_version = NULL,
  release_version = NULL,
  api_version = "v1",
  format = c("rds", "json", "csv"),
  server = NULL
)
}
\arguments{
\item{version}{character: Data version. See \code{get_versions()}}

\item{ppp_version}{ppp year to be used}

\item{release_version}{date when the data was published in YYYYMMDD format}

\item{api_version}{character: API version}

\item{format}{character: Response format either of c("rds", "json", "csv")}

\item{server}{character: Server. For WB internal use only}
}
\description{
Returns a data dictionary with a description of all variables
available through the PIP API.
}
\examples{
\dontrun{
# Short hand to get dictionary
get_dictionary()
}
}
