\name{tolist}
\alias{tolist}
\title{Conversion to a list}
\usage{
  tolist(.Object)
}
\arguments{
  \item{.Object}{An S4 object created by
  \code{\link{ycinter}} or \code{\link{ycextra}}.}
}
\value{
  A list of the object's features in a user-friendly format
}
\description{
  This function converts the object obtained with
  \code{\link{ycinter}} and \code{\link{ycextra}} into a
  list.
}
\examples{
# Prices
 p <- c(0.9859794,0.9744879,0.9602458,0.9416551,0.9196671,0.8957363,0.8716268,0.8482628,
 0.8255457,0.8034710,0.7819525,0.7612204,0.7416912,0.7237042,0.7072136
 ,0.6922140,0.6785227,0.6660095,0.6546902,0.6441639,0.6343366,0.6250234,0.6162910,0.6080358,
 0.6003302,0.5929791,0.5858711,0.5789852,0.5722068,0.5653231)

 # Observed maturities
 u <- 1:30

 # Output maturities
 t <- seq(from = 1, to = 60, by = 0.5)

 # Svensson interpolation
 yc <- ycextra(p = p, matsin = u, matsout = t,
 method="SV", typeres="prices", UFR = 0.018)

 tolist(yc)
}
\author{
  Thierry Moudiki
}
\seealso{
  \code{\link{ycinter}}, \code{\link{ycextra}}
}
\keyword{curve}
\keyword{extrapolation,}
\keyword{interpolation,}
\keyword{yield}

