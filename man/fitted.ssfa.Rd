\name{fitted.ssfa}
\alias{fitted.ssfa}
\title{
SSFA fitted values
}
\description{
This function returns the fitted values of the original data used to estimate the SSFA model.
}
\usage{
\method{fitted}{ssfa}(object, \dots)
}
\arguments{
   \item{object}{an object of class \code{ssfa}.}
   \item{\dots}{further arguments for methods.}
}   
\examples{
library(ssfa) 
data(SSFA_example_data)
data(Italian_W)
ssfa <- ssfa(log_y ~ log_x, data = SSFA_example_data, data_w=Italian_W, 
             form = "production", par_rho=TRUE)
fitted.ssfa(ssfa)
}