\name{eff.ssfa}
\alias{eff.ssfa}
\title{SSFA efficiency}
\description{This function returns the technical efficiency of each producer (without local spatial effects) calculated by the Battese and Coelli (1988) formulation modified by using an autoregressive specification in the inefficiency term \eqn{u}.
}
\usage{eff.ssfa(object, ...)}
\arguments{
  \item{object}{an object of class \code{ssfa}.}
  \item{...}{further arguments for methods.}
}
\value{Technical efficiency of each producer (without local spatial effects).}
\references{

Battese, G. E., and T. J. Coelli (1988). \emph{Prediction of Firm-level Technical Efficiencies with a
Generalized Frontier Production Function and Panel Data.} Journal of Econometrics 38(3): 387-399.

Fusco, E. and Vidoli, F. (2013). \emph{Spatial stochastic frontier models: controlling spatial global and local heterogeneity}, International Review of Applied Economics, 27(5) 679-694.

Kumbhakar, S. C., and C. A. K. Lovell (2000). \emph{Stochastic Frontier Analysis}, Cambridge University Press.
}
\seealso{ \code{\link{u.ssfa}}}
\examples{
library(ssfa) 
data(SSFA_example_data)
data(Italian_W)
ssfa <- ssfa(log_y ~ log_x, data = SSFA_example_data, data_w=Italian_W, 
             form = "production", par_rho=TRUE)
eff <- eff.ssfa(ssfa)
}
