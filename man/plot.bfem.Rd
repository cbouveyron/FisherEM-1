% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.bfem.R
\name{plot.bfem}
\alias{plot.bfem}
\alias{plot_subspace}
\alias{plot_bound}
\alias{plot_crit}
\title{Plotting function}
\usage{
\method{plot}{bfem}(x, type = "subspace", ...)

plot_subspace(
  x,
  alpha_levels = c(0.95),
  plot.dims = c(1, 2),
  show.ellipses = T,
  show.uncertainty = T,
  size = 2,
  cex.uncertainty = 1,
  ...
)

plot_bound(x, ...)

plot_crit(x, crit = NULL, ...)
}
\arguments{
\item{x}{The results of \code{\link{bfem}}.}

\item{type}{The plot type: \itemize{ \item "subspace" (default) - Uses
\code{plot_subspace()} to plot the projected data \item "criterion" - Uses
\code{plot_crit()} to plot the criterion value. \item "elbo" - Uses
\code{plot_bound()} to plot the variational lower bound evolution. }}

\item{...}{Additional parameter to pass to corxponding functions:}

\item{alpha_levels}{A vector giving the desired Gaussian ellipses level set. Default to 0.95.}

\item{plot.dims}{The dimension to be plotted. Default to the first two dimensions.}

\item{show.ellipses}{Should Gaussian ellipses be plotted. Default to TRUE}

\item{show.uncertainty}{Should uncertainty be plotted. A point is considered uncertain if its posterior probability of membership is peaked toward 2 or more clusters. Graphically, it can be displayed with a bigger point size depending on the uncertainty level, bigger points being more uncertain.}

\item{size}{The point size.}

\item{cex.uncertainty}{The multiplicative factor for the basic point size controlling the size of uncertain points.}

\item{crit}{Used to specify which criterion should be plotted. Possible values are "aic", "bic" and 'icl. The default is the criterion used in the algorithm.}
}
\value{
a ggplot2 plot object
}
\description{
Utility function to plot the results of the BFEM algorithm. The S3 plot
function is a wrapper function over the 3 other functions
}
\section{Functions}{
\itemize{
\item \code{plot_subspace}: Plot Y projected on the `plot.dims` dimensions of the latent space

\item \code{plot_bound}: plot the variational bound evolution

\item \code{plot_crit}: Plot the criterion xult
}}

\examples{
\donttest{
data(iris)
Y = iris[,-5]
res = bfem(Y, 3, model = 'DB')
gg = plot(x=res, type = "subspace")
print(gg)
}
}
