% File src/library/stats/man/ARMAtoMA.Rd
% Part of the R package, https://www.R-project.org
% Copyright 1995-2012 R Core Team
% Distributed under GPL 2 or later

\name{ARMAtoMA}
\alias{ARMAtoMA}
\title{Convert ARMA Process to Infinite MA Process}
\description{
  Convert ARMA process to infinite MA process.
}
\usage{
ARMAtoMA(ar = numeric(), ma = numeric(), lag.max)
}
\arguments{
  \item{ar}{numeric vector of AR coefficients}
  \item{ma}{numeric vector of MA coefficients}
  \item{lag.max}{Largest MA(Inf) coefficient required.}
}
\value{
  A vector of coefficients.
}

\references{
  Brockwell, P. J. and Davis, R. A. (1991) \emph{Time Series: Theory and
    Methods}, Second Edition.  Springer.
}

\seealso{\code{\link{arima}}, \code{\link{ARMAacf}}.}

\examples{
ARMAtoMA(c(1.0, -0.25), 1.0, 10)
## Example from Brockwell & Davis (1991, p.92)
## answer (1 + 3*n)*2^(-n)
n <- 1:10; (1 + 3*n)*2^(-n)
}
\keyword{ts}

