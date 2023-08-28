\name{ssfa}
\alias{ssfa}
\alias{ssfa.fit}
\title{Spatial stochastic frontier estimation}
\description{This function estimates the Spatial Stochastic Frontier model introduced by Fusco and Vidoli (2013) in the following form:
\deqn{log(y_{i}) = log(f(x_{i};\beta_i)) +v_{i}-u_{i}}
\deqn{u_{i}=\rho \sum_{i}w_{i.}u_{i} + \widetilde{u_{i}}}
where \eqn{y_i} are the outputs, \eqn{x_i} the inputs, \eqn{v_i} the stochastic noise, \eqn{u_{i}} the inefficiency term, \eqn{rho} the spatial lag, \eqn{w_{i.}} a standardized row of the spatial weights matrix and \eqn{\widetilde{u_{i}}} the stochastic noise of the inefficiency term.\cr

}
\usage{ssfa(formula, data = NULL, data_w = NULL, intercept = TRUE, pars = NULL, par_rho = TRUE, 
                 form = "cost")}
\arguments{
  \item{formula}{an object of class \code{formula} (or one that can be coerced to that
class): a symbolic description of the model to be fitted.}
  \item{data}{an optional data frame containing the variables in the model.}
  \item{data_w}{a data frame containing the spatial weight matrix.}
  \item{intercept}{logical. If true the model includes intercept.}
  \item{pars}{initial values for the parameters to be estimated.}
  \item{par_rho}{logical. If true the function estimates the Spatial Stochastic Frontier (SSFA) otherwise the classical Stochastic Frontier (SFA).}
  \item{form}{specifies the form of the frontier model as "cost" or "production".}
}
\value{\code{ssfa} returns the following objects of class \code{ssfa}:
  \item{y}{the dependent variable.}
  \item{x}{the covariates.}
  \item{X}{the model matrix.}
  \item{coef}{the estimated coefficients.}
  \item{sc}{the form of the frontier model estimated (-1 = cost, 1 = production).}
  \item{hess}{a symmetric matrix giving an estimate of the Hessian at the solution found.}
  \item{logLik}{the value of the log likelihood function.}
  \item{ols}{the linear model for the LR-test.}
  \item{sigmau2}{the estimation of sigmau2 (only if par_rho=FALSE): value of inefficiency variance.}
  \item{sigmau2_dmu}{the estimation of sigmau2_dmu (only if par_rho=TRUE): value of the part of the inefficiency variance due to DMU's specificities.}
  \item{sigmau2_sar}{the estimation of sigmau2_sar: value of the part of the inefficiency variance due to the spatial correlation.}
  \item{sigmav2}{the estimation of sigmav2: value of the stochastic error variance.}
  \item{sigma2}{the estimation of sigma2: value of the total variance.}
  \item{rho}{the estimation of the spatial lag parameter rho.}
  \item{fun}{the distribution of the inefficiency term u.}
  \item{list_w}{a listw object from \code{nb2listw} (See \link{nb2listw}).}}
  
\note{
  NOTE 1: In this version the distribution of the inefficiency term \eqn{u} is only "half-normal". \cr
  
  NOTE 2: The method used to maximize the log likelihood function is the Newton-Raphson. Please see the R function \code{\link{maxNR}} of the \code{maxLik} package for details (Henningsen and Toomet (2011)). \cr
  
  NOTE 3: Please note that the classical SFA inefficiency variance \code{sigmau2}, in the SSFA, is decomposed into \code{sigmau2_dmu} and \code{sigmau2_sar}, respectively the part of inefficiency variance due to DMU's specificities and to the spatial dependence, \emph{i.e.} \code{sigmau2 = sigmau2_dmu + sigmau2_sar} and consequently the total variance is given by \code{sigma2 = sigmau2_dmu + sigmau2_sar + sigmav2}.
  }
  
\references{
Battese, G. E., and T. J. Coelli (1995). \emph{A Model for Technical Inefficiency Effects in a
Stochastic Frontier Production Function for Panel Data.} Empirical Economics 20(2):
325-332.

Fusco, E. and Vidoli, F. (2013). \emph{Spatial stochastic frontier models: controlling spatial global and local heterogeneity}, International Review of Applied Economics, 27(5) 679-694.

Fusco, E. (2020). \emph{Spatial Dependence in Efficiency Parametric Models: A Generalization and Simulation Studies}, "Scienze Regionali, Italian Journal of Regional Science" Speciale/2021, 595-618.

Kumbhakar, S. C., and C. A. K. Lovell (2000). \emph{Stochastic Frontier Analysis}, Cambridge University Press.

Henningsen, A. and Toomet, O. (2011). \emph{maxLik: A package for maximum likelihood estimation in R}. Computational Statistics 26(3), 443-458.

}
\author{Fusco E. and Vidoli F.}
\examples{
library(ssfa) 
data(SSFA_example_data)
data(Italian_W)
ssfa <- ssfa(log_y ~ log_x, data = SSFA_example_data, 
             data_w=Italian_W, form = "production", par_rho=TRUE)

### SSFA total variance decomposition 
sigma2 = ssfa$sigmau2_dmu + ssfa$sigmau2_sar + ssfa$sigmav2
sigma2
ssfa$sigma2
}
