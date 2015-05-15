\name{SSFA_example_data}
\alias{SSFA_example_data}
\title{
Example dataset
}
\description{
The dataset contains the simulated data used by Fusco and Vidoli (2013) to test the model.
Data Generating Process (DGP) follows the construction criteria proposed by Banker and Natarajan (2008), also used by Johnson and Kuosmanen (2011), with the addition of a strong spatial correlation in the inefficiency term through a spatial lag parameter and a contiguity matrix (107 Italian provinces contiguity matrix, year 2008).
}
\usage{data(SSFA_example_data)}
\format{
  A data frame with 107 observations (Italian provinces) and 2 variables:
  \describe{
  \item{\code{DMU}}{the Decision Making Unit name.}
    \item{\code{log_x}}{the input vector (already in logarithmic form).}
    \item{\code{log_y}}{the output vector (already in logarithmic form).}
  }
}
\references{
Banker, R., and R. Natarajan (2008). \emph{Evaluating Contextual Variables Affecting Productivity using Data Envelopment Analysis}. Operations Research 56 (1): 48-58.

Johnson, A., and T. Kuosmanen (2011). \emph{One-stage Estimation of the Effects of Operational Conditions and Practices on Productive Performance: Asymptotically Normal and Efficient, Root-n Consistent StoNEZD Method}. Journal of Productivity Analysis 36:219-230.
}
\examples{
data(SSFA_example_data)
}
\keyword{datasets}
