\name{diag.mcmc.list.sim.model}
\alias{diag.mcmc.list.sim.model}

\title{
  MCMC List For Diagnostic Evaluation
}
\description{
  \code{diag.mcmc.list} method for objects of class \code{sim.model}.  
}
\usage{
\method{diag.mcmc.list}{sim.model}(model, utility.fun, data,
n.iter, n.burn.in, n.adapt = 1000, n.chains = 1, inits = NULL)
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
    The number of burn in iterations prior to the JAGS MCMC simulation.
  }
  \item{n.adapt}{
    The number of adaptation iterations prior to the burn in phase and
    subsequent JAGS MCMC simulation.
  }
  \item{n.chains}{
    The number of parallel MCMC chains to run.
  }
  \item{inits}{
    The initial values for the chain(s) passed on to the function
  \code{rjags::jags.model}, unless equal to its default value
  \code{NULL}, in which case JAGS chooses default initial values.
}
}
\details{
  See \code{\link{diag.mcmc.list}} for further documentation.
}
%\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
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
%  \code{\link{diag.mcmc.list}}
%}
%\examples{

%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
