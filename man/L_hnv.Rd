\name{L_hNV}
\alias{L_hNV}
\title{
SFA half-normal log likelihood function
}
\description{
This function is used to estimate the parameters of the classical SFA model where half-normal distribution of inefficiency term is assumed.
}
\usage{
L_hNV(p, y = y, X = X, sc = sc)
}
\arguments{
  \item{p}{a vector with the parameters to be estimated.}
  \item{y}{the dependent variable.}
  \item{X}{the model matrix.}
  \item{sc}{specifies the form of the frontier model (-1 = cost, 1 = production).}
}
\value{
Value of the SFA log likelihood function.
}
