% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Bmsm_marginals.R
\name{Bmsm_marginals}
\alias{Bmsm_marginals}
\title{Marginal Probabilities for \code{\link{Bmsm}} components.}
\usage{
Bmsm_marginals(smoothed.p, m01, m02, kbar)
}
\arguments{
\item{smoothed.p}{is matrix of smoothed/filtered \code{\link{Bmsm}} state probabilities.
See also \code{\link{Msm}}, \code{\link{Msm_likelihood2}}.}

\item{m01}{is the volatility state value for return series 1 in (1, 2].}

\item{m02}{is the volatility state value for return series 2 in (1, 2].}

\item{kbar}{is the number of frequency components in the \code{\link{Msm}}(k) model.}
}
\value{
a list consisting of:
\item{palpha}{marginal probabilities for volatility state vectors of series 1}
\item{pbeta}{marginal probabilities for volatility state vectors of series 2}
\item{Malpha}{\eqn{2^k} by \eqn{k} grid of \code{\link{Msm}} volatility components for series 1}
\item{Mbeta}{\eqn{2^k} by \eqn{k} grid of \code{\link{Msm}} volatility components for series 2}
}
\description{
Calculates the matrix of marginal probabilities for \code{\link{Bmsm}}(k) volatility components.
}
\examples{
data("calvet2006returns")
ret <- as.matrix(calvet2006returns[,2:3])*100
fit <- Bmsm(ret, kbar=2, n=252, s.err=FALSE)
marg <- Bmsm_marginals(fit$filtered, fit$para[1], fit$para[2],2)

}

