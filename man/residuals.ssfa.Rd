\name{residuals.ssfa}
\alias{residuals.ssfa}
\title{
SSFA residuals
}
\description{
This function returns the residuals of the fitted SSFA model.
}
\usage{
\method{residuals}{ssfa}(object, \dots)
}
\arguments{
   \item{object}{an object of class \code{ssfa}.}
   \item{\dots}{further arguments for methods.}
}  
\examples{
library(ssfa) 
data(SSFA_example_data)
data(Italian_W)
ssfa <- ssfa(log_y ~ log_x, data = SSFA_example_data, 
             data_w=Italian_W, form = "production", par_rho=TRUE)
residuals.ssfa(ssfa)
}