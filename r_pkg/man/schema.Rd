% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exported.R
\name{schema}
\alias{schema}
\title{Return a SciDB streaming-compatible output schema for a function}
\usage{
schema(f, input)
}
\arguments{
\item{f}{an R function of a single data frame argument that returns a data frame output value.}

\item{input}{example data frame input argument that would be passed in practice to the function `f` by SciDB.}
}
\value{
a character value describing the output data frame schema required by the SciDB stream operator 'types' argument.
}
\description{
The SciDB streaming API works with R functions that map a data frame input value
to a data frame output value. The `schema` utility function returns the output
schema for a given function that can be used in an associated SciDB
stream query argument.
}
\examples{
# Identity function acting on the iris data frame
schema(I, iris)
}

