% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/seqi.R
\name{seqi}
\alias{seqi}
\title{Increasing whole-number sequence.}
\usage{
seqi(a, b)
}
\arguments{
\item{a}{scalar lower bound}

\item{b}{scalar upper bound}
}
\value{
whole number sequence
}
\description{
Return an in increaing whole-number sequence from a to b inclusive (return integer(0) if none such). Allows for safe iteraton.
}
\examples{

# print 3, 4, and then 5
for(i in seqi(3, 5)) {
   print(i)
}

# empty
for(i in seqi(5, 2)) {
   print(i)
}

}
