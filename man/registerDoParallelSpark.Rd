\name{registerDoParallelSpark}
\alias{registerDoParallelSpark}
\title{
Register a spark backend for \code{foreach}}
\description{
Allows to run code in parallel on a spark backend using \code{foreach}
}
\usage{
registerDoParallelSpark(sc = sparkR.init())
}
\arguments{
  \item{sc}{Spark context if already available}
}
\details{
After calling this function you can use \code{foreach} with operator \code{\%dopar\%} to run R in parallel.
}
\value{
A function returning information about the parallel environment. Currently unimplemented.
}
\author{
Revolution Analytics <rhadoop@revolutionanalytics.com>}
\examples{
library(foreach)
registerDoParallelSpark()
system.time(foreach(i = 1:8) \%dopar\% Sys.sleep(1))}
