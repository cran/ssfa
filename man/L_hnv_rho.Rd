\name{L_hNV_rho}
\alias{L_hNV_rho}
\title{
SSFA half-normal log likelihood function 
}
\description{
This function is used to estimate the parameters of the SSFA model where half-normal distribution of inefficiency term is assumed.
}
\usage{
L_hNV_rho(p, y = y, X = X, sc = sc, w = w, sigmau2_sar = sigmau2_sar)
}
\arguments{
  \item{p}{a vector with the parameters to be estimated.}
  \item{y}{the dependent variable.}
  \item{X}{the model matrix.}
  \item{sc}{specifies the form of the frontier model (-1 = cost, 1 = production).}
  \item{w}{the spatial weight matrix.}
  \item{sigmau2_sar}{is the variance of the spatial correlated part of the inefficiency term estimated into \code{ssfa.fit} function.}
}
\value{
Value of the SSFA log likelihood function.
}
\note{
 Please note that \code{sigmau2_sar} is not a free parameter because it is estimated into the \code{ssfa.fit} function.
  }
  
\seealso{
\code{\link{ssfa}}
}