\name{summary}
\alias{print.ssfa}
\alias{summary.ssfa}
\alias{print.summary.ssfa}
\title{
SSFA summaries
}
\description{
The function \code{print.ssfa} is used to display the values of SFA and SSFA estimated coefficients. In particular:

- for SFA the function displays the \code{Intercept}, the regressors beta coefficients, the inefficiency variance \code{sigmau2}, the stochastic error variance \code{sigmav2} and the total variance \code{sigma2};\cr
- for SSFA the function displays, in addition, the decomposition of the inefficiency variance into \code{sigmau2_dmu} and \code{sigmau2_sar}, respectively the part of inefficiency variance due to DMU's specificities and to the spatial dependence, and finally, the spatial lag parameter \code{rho}.

The function \code{summary.ssfa} is used to display the summary results of SFA and SSFA. In particular:

- for SFA the summary shows the estimation of SFA coefficients (\code{Intercept}, beta coefficients, \code{sigmau2} and \code{sigmav2}) and others useful information as the total variance \code{sigma2}, the inefficiency parameter \code{Lambda} \code{(sigmau/sigmav)}, the Moran \code{I} statistic, the mean of efficiency, the LR-test and the AIC values;\cr
- for SSFA the summary shows, in addition, the decomposition of the inefficiency variance into \code{sigmau2_dmu} and \code{sigmau2_sar} and the spatial lag parameter \code{rho}.
}

\note{
Please note that the classical SFA inefficiency variance \code{sigmau2}, in the SSFA, is decomposed into \code{sigmau2_dmu} and \code{sigmau2_sar}, respectively the part of inefficiency variance due to DMU's specificities and to the spatial dependence, \emph{i.e.} \code{sigmau2 = sigmau2_dmu + sigmau2_sar} and consequently the total variance is given by \code{sigma2 = sigmau2_dmu + sigmau2_sar + sigmav2}.
}

\usage{
\method{print}{ssfa}(x, \dots)
\method{summary}{ssfa}(object, \dots)
}
\arguments{
   \item{x}{an object of class \code{ssfa}.}
   \item{object}{an object of class \code{ssfa}.}
   \item{\dots}{further arguments for methods.}
}
\references{
Anselin, L. (1995). \emph{Local indicators of spatial association, Geographical Analysis}, 27, 93-115.

Fusco, E. and Vidoli, F. (2013). \emph{Spatial stochastic frontier models: controlling spatial global and local heterogeneity}, International Review of Applied Economics, 27(5) 679-694.

Kumbhakar, S. C., and C. A. K. Lovell (2000). \emph{Stochastic Frontier Analysis}, Cambridge University Press.
}
\examples{
library(ssfa) 
data(SSFA_example_data)
data(Italian_W)
ssfa <- ssfa(log_y ~ log_x, data = SSFA_example_data, 
             data_w=Italian_W, form = "production", par_rho=TRUE)

print(ssfa)
summary(ssfa)
}