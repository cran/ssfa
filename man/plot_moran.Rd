\name{plot_moran}
\alias{plot_moran}
\title{
SSFA residuals Moran plot
}
\description{
This function allows to plot the residuals of the object against their spatially lagged values, augmented by reporting the summary of influence measures for the linear relationship between the data and the lag.
}
\usage{
plot_moran(x, main, xlab, ylab, labels, listw, ...)
}
\arguments{
  \item{x}{an object of class \code{ssfa}.}
  \item{main}{an overall title for the plot.}
  \item{xlab}{a label for the x axis.}
  \item{ylab}{a label for the y axis.}
  \item{labels}{character labels for points with high influence measures, if set to FALSE, no labels are plotted for points with large influence.}
   \item{listw}{a listw object from \code{nb2listw} (see \link{nb2listw}).}
  \item{\dots}{arguments to be passed to methods, such as graphical parameters (see \link{par}).}}
  
\references{
Anselin, L. (1995). \emph{Local indicators of spatial association, Geographical Analysis}, 27, 93-115.

Anselin, L. (1996). \emph{The Moran scatterplot as an ESDA tool to assess local instability in spatial association}. pp. 111-125 in M. M. Fischer, H. J. Scholten and D. Unwin (eds) Spatial analytical perspectives on GIS, London, Taylor and Francis.
}
\seealso{\code{\link[spdep]{moran.plot}}}

\examples{

library(ssfa) 
data(SSFA_example_data)
data(Italian_W)

#### SFA and SSFA comparison ###
sfa <- ssfa(log_y ~ log_x, data = SSFA_example_data, data_w=Italian_W, 
             form = "production", par_rho=FALSE)
ssfa <- ssfa(log_y ~ log_x, data = SSFA_example_data, data_w=Italian_W, 
             form = "production", par_rho=TRUE)

moran.test(residuals.ssfa(sfa), sfa$list_w)
moran.test(residuals.ssfa(ssfa), ssfa$list_w)

plot_moran(sfa, listw=sfa$list_w)
plot_moran(ssfa, listw=ssfa$list_w)
}