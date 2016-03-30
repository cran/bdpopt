\name{optimise.sequential.normal.eu}
\alias{optimise.sequential.normal.eu}

\title{
  Optimise A Sequential Normal Decision Problem
}
\description{
  Optimise a sequential normal decision problem constructed by a call to
  the function \code{sequential.normal.dp}.
}
\usage{
optimise.sequential.normal.eu(dp, range, step.size,
prior.mean = 0, n.sims = 1000, plot.results = TRUE)
}

\arguments{
  \item{dp}{
    A sequential normal decision problem created by a call to \code{sequential.normal.dp}.
}
  \item{range}{
    The range of the one-dimensional grid for the state. All grid points
  will lie in the interval
    \code{c(prior.mean - range / 2, prior.mean + range / 2)}.
}
  \item{step.size}{
    The step size between the grid points for the state.
}
  \item{prior.mean}{
    Defines the mid-point of the grid for the state.
}
  \item{n.sims}{
    The number of random draws for simulations used to estimate the
  expected utility for a decision at each stage.
}
  \item{plot.results}{
    If \code{TRUE}, construct a plot of the optimal policy.
}
}
\details{
  The plot has the stage number on the x-axis. The y-axis levels of the
  points (one for each stage) shows the cutoff levels for when it is
  optimal to continue (for all but the last stage) or finalise (for the
  last stage). It will be optimal to continue or finalise if the
  posterior mean of the parameter at a given stage is above the level of
  the point at that stage.

  If no cutoff point can be established in the interior of the region
  defined by the interval \cr
  I = \code{c(prior.mean - range / 2, prior.mean + range / 2)}, then a
  cross will be used instead of a circle to indicate the level of the
  stage. If the cross is located at \code{prior.mean + range / 2}, it is
  optimal to continue for no state in I. If the cross is located at
  \code{prior.mean - range / 2}, it is optimal to continue for all states in I.
}
\value{
  A list with components
  \item{opt.decision}{Function taking a stage and a state into the
  optimal decision corresponding to the closest grid point at that stage.}
  \item{opt.utility}{Function taking a stage and a state into the
  optimal expected utility corresponding to the closest grid point at that stage.}
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
  \code{\link{optimise.sequential.eu}}
}
%\examples{
%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
