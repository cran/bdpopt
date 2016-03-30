\name{optimise.sequential.eu}
\alias{optimise.sequential.eu}

\title{
  Optimise Sequential Expected Utility
}
\description{
  Optimise the expected utility for a sequential decision problem. The
  optimisation proceeds by backward induction, computing the optimal
  decision and corresponding expected utility at each stage over a
  grid for the current state summarising the posterior distribution of the
  unknown parameter.
}
\usage{
optimise.sequential.eu(dp, mins, maxs, steps, n.sims, state.start = NA)
}

\arguments{
  \item{dp}{
    A decision problem object constructed by calling \code{sequential.dp}.
}
  \item{mins}{
    A numeric, atomic vector specifying the lower boundary of the grid
  points for each dimension of the state vector.
}
  \item{maxs}{
    A numeric, atomic vector specifying the upper boundary of the grid
  points for each dimension of the state vector.
}
  \item{steps}{
    A numeric, atomic vector specifying the step size between grid points for each
    dimension of the state vector.
}
  \item{n.sims}{    
    A numeric, atomic vector of length equal to \code{dp$n.stages}
  specifying the number of simulation draws to perform at each stage.
}
  \item{state.start}{
    An optional start value for the state. If provided,
  this value effectively determines a fixed prior for the parameter of
  the decision problem (before the first stage). The first stage
  computations will then only be performed for this particular value. If
  the default value \code{NA} is used, computations for the first stage will
  be performed for all grid points, as for the subsequent stages.
}
}
%\details{
  
%}
\value{
  If \code{state.start} equals \code{NA}, then the value returned is
  a list with components
  \item{opt.decision}{Function taking a stage and a state into the
    optimal decision corresponding to the closest grid point at that
    stage.
  }
  \item{opt.utility}{Function taking a stage and a state into the
    optimal expected utility corresponding to the closest grid point at
    that stage.
  }

  If an explicit value for \code{state.start} is provided, the value
  returned is a list with components
  \item{opt.stage1.decision}{Optimal stage 1 decision.
  }
  \item{opt.stage1.utility}{Optimal stage 1 utility.
  }
  \item{opt.decision}{Function taking a stage (greater than 1) and a
  state into the optimal decision corresponding to the closest grid
  point at that stage.
}
  \item{opt.utility}{Function taking a stage (greater than 1) and a
  state into the optimal expected utility corresponding to the closest grid
  point at that stage.
}
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

\seealso{
  \code{\link{optimise.sequential.normal.eu}}
}
%\examples{

%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
