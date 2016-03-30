\name{eval.on.grid.sim.model}
\alias{eval.on.grid.sim.model}

\title{
Evaluate Expected Utility On A Grid
}
\description{
  \code{eval.on.grid} method for objects of class \code{sim.model}.
}
\usage{
\method{eval.on.grid}{sim.model}(model, utility.fun, grid.spec.list,
n.iter, n.burn.in, n.adapt = 1000, independent.SE = FALSE, parallel = FALSE)
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
\item{grid.spec.list}{
  A nonempty list of array grid specifications. An array grid
  specification is a list of two componenents. The first component is a
  dimension vector, giving the dimensions of the array. The second
  component is a list of vectors of length equal to the product of the
  dimension vector. Each such vector has the form \code{c(lower, upper, step)}. 
  These are passed to the function \code{seq} in order to generate
  a range of values for each component of the array.
}
\item{n.iter}{
    The number of iterations in the JAGS MCMC simulation for each grid point.
}
\item{n.burn.in}{
    The number of burn in iterations prior to the JAGS MCMC simulation for
  each grid point.
}
\item{n.adapt}{
    The number of adaptation iterations prior to the burn in phase and
  subsequent JAGS MCMC simulation for each grid point.
}
\item{independent.SE}{
    If \code{TRUE}, then the standard errors of the sample means used to estimate the expected
  utility will be computed under the assumption of i.i.d. sampling. If
  \code{FALSE}, the standard errors are instead computed using the
  \code{coda::spectrum0.ar} function.
}
\item{parallel}{
  Logical equal to \code{TRUE} if the simulation should be done in
  parallel on a multi-core processor. The default value \code{FALSE}
  leads to single-core evaluation.
}
}
\details{
  See \code{\link{eval.on.grid}} for further documentation.
}
%\value{
 
%}
%\references{
   
%% ~put references to the literature/web site here ~
%}
%\author{
%Sebastian Jobjörnsson \email{jobjorns@chalmers.se}
%}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%  \code{\link{eval.eu}}
%}
%\examples{

%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
