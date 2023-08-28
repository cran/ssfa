\name{u.ssfa}
\alias{u.ssfa}
\title{
SSFA inefficiency
}
\description{
This function returns the specific inefficiency of each producer (without local spatial effects) calculated by the Jondrow et al. (JLMS) (1982) formulation modified by using an autoregressive specification in the inefficiency term.
}
\usage{
u.ssfa(object, ...)
}
\arguments{
  \item{object}{an object of class \code{ssfa}.}
  \item{\dots}{further arguments for methods.}
}
\value{Inefficiency of each producer (without local spatial effects).}
\references{
Fusco, E. and Vidoli, F. (2013) \emph{Spatial stochastic frontier models: controlling spatial global and local heterogeneity} , International Review of Applied Economics, 27(5) 679-694.

Fusco, E. (2020). \emph{Spatial Dependence in Efficiency Parametric Models: A Generalization and Simulation Studies}, "Scienze Regionali, Italian Journal of Regional Science" Speciale/2021, 595-618.

Kumbhakar, S. C., and C. A. K. Lovell. (2000) \emph{Stochastic Frontier Analysis}, Cambridge University Press.

Jondrow, J., C. A. Knox Lovell, I. S. Materov, and P. Schmidt. (1982). \emph{On the Estimation of Technical Inefficiency in the Stochastic Frontier Production Function Model.} Journal of Econometrics 19 (2-3): 233-238.
}
\seealso{\code{\link{eff.ssfa}}}
\examples{
library(ssfa) 
data(SSFA_example_data)
data(Italian_W)
ssfa <- ssfa(log_y ~ log_x, data = SSFA_example_data, 
            data_w=Italian_W, form = "production", par_rho=TRUE)
ineff <- u.ssfa(ssfa)
}
