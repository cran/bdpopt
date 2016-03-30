\name{diag.mcmc.list}
\alias{diag.mcmc.list}

\title{
MCMC List For Diagnostic Evaluation
}
\description{
  Get the \code{mcmc.list} object obtained when running the JAGS model
  corresponding to \code{model}. Diagnostic functions provided by the
  \pkg{coda} package may then be applied in order to check that there is a
  sufficent amount of adaptation and burn in for the application.
  This is a generic function for S3 objects.
}
\usage{
diag.mcmc.list(model, utility.fun, data,
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
  The purpose of this function is to make it possible for the user
    diagnose the JAGS output (e.g., using the \pkg{coda} package) and select
    appropriate values for \code{n.iter}, \code{n.burn.in} and
    \code{n.adapt}.    
}
\value{
  An object of type \code{mcmc.list}, as produced by \code{rjags::coda.samples}.
}
%\references{
%% ~put references to the literature/web site here ~
%}
\author{
  Sebastian Jobjörnsson \email{jobjorns@chalmers.se}
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
%\examples{

%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
