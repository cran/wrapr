% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mapvars.R
\name{mapsyms}
\alias{mapsyms}
\title{Map symbol names to referenced values if those values are string scalars (else throw).}
\usage{
mapsyms(...)
}
\arguments{
\item{...}{symbol names mapping to string scalars}
}
\value{
map from original symbol names to new names (names found in the current environment)
}
\description{
Map symbol names to referenced values if those values are string scalars (else throw).
}
\examples{

x <- 'a'
y <- 'b'
print(mapsyms(x, y))
d <- data.frame(a = 1, b = 2)
let(mapsyms(x, y), d$x + d$y)

}
\seealso{
\code{\link{let}}
}
