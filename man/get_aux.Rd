% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_aux.R
\name{get_aux}
\alias{get_aux}
\title{Get auxiliary data}
\usage{
get_aux(
  table = NULL,
  version = NULL,
  ppp_version = NULL,
  release_version = NULL,
  api_version = "v1",
  format = c("rds", "json", "csv"),
  simplify = TRUE,
  server = NULL,
  assign_tb = FALSE,
  force = FALSE
)
}
\arguments{
\item{table}{Aux table}

\item{version}{character: Data version. See \code{get_versions()}}

\item{ppp_version}{ppp year to be used}

\item{release_version}{date when the data was published in YYYYMMDD format}

\item{api_version}{character: API version}

\item{format}{character: Response format either of c("rds", "json", "csv")}

\item{simplify}{logical: If TRUE (the default) the response is returned as a
\code{tibble}}

\item{server}{character: Server. For WB internal use only}

\item{assign_tb}{assigns table to specified name to the \code{.pip} environment.
If \code{FALSE} no assignment will performed. If \code{TRUE}, the table will be
assigned to  exactly the same name as the one of the desired table. If
character, the table will be assigned to that name.}

\item{force}{logical: force replacement. Default is FALSE}
}
\value{
tibble or list. If \code{assign_tb} is TRUE or character, it will return
TRUE if data was assign properly to .pip env
}
\description{
Get an auxiliary dataset. If no table is specified a vector with possible
inputs will be returned.
}
\examples{
\dontrun{
# Get list of tables
x <- get_aux()

# Get GDP data
df <- get_aux("gdp")

# Get countries
df <- get_aux("countries")

# Display auxiliary tables
get_aux()

# Display and assign to .pip env the selected auxiliary table
get_aux(assign_tb = TRUE)

# Bind gdp table to "gdp" in .pip env
get_aux("gdp", assign_tb = TRUE)

# Bind gdp table to "new_name" in .pip env
get_aux("gdp", assign_tb = "new_name")

}
}
