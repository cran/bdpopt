\name{eval.eu.sim.model}
\alias{eval.eu.sim.model}

\title{
Evaluate Expected Utility
}
\description{
  \code{eval.eu} method for objects of class \code{sim.model}.
}
\usage{
\method{eval.eu}{sim.model}(model, utility.fun, data,
n.iter, n.burn.in, n.adapt = 1000, inits = NULL, independent.SE = FALSE)
}

\arguments{
  \item{model}{
    Simulation model object of class \code{sim.model} created using \cr
  \code{sim.model} or \code{create.normal.model}.
}
  \item{utility.fun}{
    An \R function defining the utility for the decision problem. It
  must be possible to extract the argument names of the function
  supplied with \code{formals}, and the argument names must constitute a
  subset of the names used in the JAGS model specification.
}
  \item{data}{
    A named list of \R objects which, when combined with the named
  objects in \code{model$data}, leads to a complete specification of the
  data for the JAGS model.
}
  \item{n.iter}{
    The number of iterations in the JAGS MCMC simulation.
}
  \item{n.burn.in}{
    The number of burn iterations prior to the JAGS MCMC simulation.
  }
  \item{n.adapt}{
    The number of adaptation iterations prior to the burn in and JAGS MCMC simulation.
}
  \item{inits}{
    The initial values for the chain passed on to the function
  \code{rjags::jags.model}, unless equal to its default value
  \code{NULL}, in which case JAGS chooses default initial values.
}
\item{independent.SE}{
    If \code{TRUE}, then the standard errors of the sample means used to estimate the expected
  utility will be computed under the assumption of i.i.d. sampling. If
  \code{FALSE}, the standard errors are instead computed using the
  \code{coda::spectrum0.ar} function.
}
}
\details{
  See \code{\link{eval.eu}} for further documentation.
}
%\value{
%  A list with components
%  \item{mean}{Sample mean of the simulated utilities.}
%  \item{SE}{Standard error of the sample mean.}
%}
%\references{
%% ~put references to the literature/web site here ~
%}
%\author{
%  Sebastian Jobjörnsson \email{jobjorns@chalmers.se}
%}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%  \code{\link{eval.on.grid}}
%}
%\examples{

%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
