\name{plot_fitted}
\alias{plot_fitted}
\title{
SSFA plot
}
\description{
This function allows to plot the data and the fitted values obtained by SSFA model. 
}
\usage{
plot_fitted(x, y, object, xlab, ylab, main, \dots)
}
\arguments{
   \item{x}{the x coordinates of points in the plot.}
  \item{y}{the y coordinates of points in the plot.}
  \item{object}{an object of class \code{ssfa}.}
  \item{xlab}{a title for the x axis.}
  \item{ylab}{a title for the y axis.}
  \item{main}{an overall title for the plot.}
  \item{\dots}{arguments to be passed to methods, such as graphical parameters (see \link{par}).}
}
\seealso{\link{plot}}
\examples{

library(ssfa) 
data(SSFA_example_data)
data(Italian_W)

#### SFA and SSFA comparison 
sfa <- ssfa(log_y ~ log_x, data = SSFA_example_data, data_w=Italian_W, 
             form = "production", par_rho=FALSE)
ssfa <- ssfa(log_y ~ log_x, data = SSFA_example_data, data_w=Italian_W, 
 form = "production", par_rho=TRUE)

sfa_fitted <- fitted.ssfa(sfa)
plot_fitted(SSFA_example_data$log_x, SSFA_example_data$log_y, ssfa)
lines(sort(SSFA_example_data$log_x), sfa_fitted[order(SSFA_example_data$log_x)],col="red")
}
