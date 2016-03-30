\name{n.opt}
\alias{n.opt}

\title{
  Optimise A Simple Normal Model
}
\description{
  Find an approximation of the optimal sample size and corresponding
  expected utility for a simple phase III clinical trial model with a single, normally
  distributed response and a utility function of a fixed form.
}
\usage{
n.opt(nu = 0, tau = 1, sigma = 1, alpha = 0.025,
gain.constant = 1, gain.function = function(X, mu) 0,
fixed.cost = 0, sample.cost = 0.005,
k = 1, n.min = 1, n.max = 50, n.step = 1,
n.iter = 10000, n.burn.in = 1000, n.adapt = 1000,
regression.type = "loess",
plot.results = TRUE, independent.SE = FALSE,
parallel = FALSE, path.to.package = NA)
}

\arguments{
  \item{nu}{
    The mean of the conjugate normal prior distribution for the unknown
  population mean.
}
  \item{tau}{
    The standard deviation of the conjugate normal prior distribution for the unknown
  population mean.
}
  \item{sigma}{
    The known population standard deviation for each individual response in the trial.
}
\item{alpha}{
  The significance level in the one-sided test used by the regulatory
  authority to decide upon marketing approval for the new treatment.
}
  \item{gain.constant}{
    A constant utility gain received upon treatment approval. The total
  gain consists of the sum of \code{gain.constant} and \code{gain.function}.
}
  \item{gain.function}{
    A variable utility gain obtained in addition to the constant utility
  gain upon treatment approval.
}
  \item{fixed.cost}{
    The fixed cost of performing the trial.
}
  \item{sample.cost}{
    The marginal cost per observation for the trial.
}
  \item{k}{
    The number independent, parallel trials. Must be an integer greater
  than zero.
}
  \item{n.min}{
    Lower limit for the one-dimensional grid for the sample size.
}
\item{n.max}{
  Upper limit for the one-dimensional grid for the sample size.
}
  \item{n.step}{
    The step size of the grid for the sample size.
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
  \item{regression.type}{
    If set to \code{"loess"}, the default value, then local polynomial
    regression will be used (via a call to \code{fit.loess}) to fit the grid
    simulation results. If set to \code{"gpr"}, GPR regression will be
    used instead. For any other value, no regression is performed and
    the optimisation done will consist of a maximisation over the values
    corresponding to the grid points.
  }
\item{plot.results}{
  Set to \code{TRUE} if a plot of the results of the simulation over
  the grid is to be constructed.
}
\item{independent.SE}{
    If \code{TRUE}, then the standard errors of the sample means used to estimate the expected
  utility will be computed under the assumption of i.i.d. sampling. If
  \code{FALSE}, the standard errors are instead computed using the
  \code{coda::spectrum0.ar} function.
}
\item{parallel}{
    Set to \code{TRUE} if the simulations over the grid should be done in
  parallel on a multi-core processor. The default value \code{FALSE}
  leads to single-core computations.
}
\item{path.to.package}{
  The search path to the installation directory of \pkg{bdpopt}. For the
    default value, the function will attempt to find the path using \code{search}.
}
}
%%\details{
%%  ~~ If necessary, more details than the description above ~~
%%}
\value{
  A list with components
   \item{ns}{A numeric, atomic vector containing the sample size grid points.}
   \item{eus}{A numeric, atomic vector containing the sample means of
   the simulated expected utilities corresponding to the sample size
   grid points.}
   \item{opt.arg}{The optimal sample size found by maximising the
   estimated expected utility.}
   \item{opt.eu}{The estimated optimal utility corresponding to the
     optimal sample size found.}
 }
%\references{
%% ~put references to the literature/web site here ~
%}
\author{
  Sebastian Jobjörnsson \email{jobjorns@chalmers.se}
}
%%\note{
%%  ~~further notes~~
%%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
  \code{\link{optimise.eu}}
}
%\examples{
%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
