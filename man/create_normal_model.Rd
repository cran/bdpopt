\name{create.normal.model}
\alias{create.normal.model}

\title{
  Create Normal Emax Model
}
\description{
  Create a simulation model object for optimisation of the dose and
  sample size for a (or several, parallel) phase III clinical trial
  given phase II data. There is one efficacy response and one safety
  response obtained as sample means for each group of patients given a
  specific dose. These are both normal given the true populations
  means. The population means for efficacy and safety are in turn
  modeled using two independent Emax models.
}
\usage{
create.normal.model(theta.mu, theta.tau, eta.mu, eta.tau,
n.II, d.II, YE.II, YS.II, sigmaE, sigmaS, k.III, path.to.package = NA)
}

\arguments{
  \item{theta.mu}{
    A numeric, atomic vector with four elements that contains the mean
    parameters for the prior distributions for the efficacy model.
}
\item{theta.tau}{
  A numeric, atomic vector with four elements that contains the precision
  parameters for the prior distributions for the efficacy model.  
}
\item{eta.mu}{
    A numeric, atomic vector with four elements that contains the mean
    parameters for the prior distributions for the safety model.
}
\item{eta.tau}{
  A numeric, atomic vector with four elements that contains the precision
  parameters for the prior distributions for the safety model.  
}
  \item{n.II}{
    A numeric, atomic vector of positive integers containing the group
    sample sizes corresponding to the phase II efficacy and safety responses.
}
  \item{d.II}{
    A numeric, atomic vector containing the group dose levels
    corresponding to the phase II efficacy and safety responses.
}
  \item{YE.II}{
    A numeric, atomic vector containing the observed sample means for
  the efficacy responses in the phase II trial.
}
\item{YS.II}{
   A numeric, atomic vector containing the observed sample means for
  the safety responses in the phase II trial.
}
  \item{sigmaE}{
    The population standard deviation for an individual efficacy
  response. The population standard deviation for a group response is
  then obtained by dividing by the square root of the group sample size.
}
\item{sigmaS}{
  The population standard deviation for an individual safety
  response. The population standard deviation for a group response is
  then obtained by dividing by the square root of the group sample size.
}
  \item{k.III}{
    A positive integer specifying the number of independent phase III
  trials, each of which consists of a single group. The sample size and
  dose is the same for all phase III trials.
}
\item{path.to.package}{
  The search path to the installation directory of \pkg{bdpopt}. For the
    default value, the function will attempt to find the path using \code{search}.
}
}
\details{
  Note that \code{n.II}, \code{d.II}, \code{YE.II} and \code{YS.II} must
  all be of the same length. Using the notation of the JAGS manual, the
  prior distributions for \code{theta} and \code{eta} are given by \cr
  \code{theta[i] ~ dnorm(theta.mu[i], theta.tau[i])}, \cr
  \code{eta[i] ~ dnorm(eta.mu[i], eta.tau[i])}, for \code{i = 1, 2}, and
  \cr
  \code{theta[i] ~ dlnorm(theta.mu[i], theta.tau[i])}, \cr
  \code{eta[i] ~ dlnorm(eta.mu[i], eta.tau[i])}, for \code{i = 3, 4}.
}

\value{
  A simulation model object of class \code{sim.model}, created using the
  data supplied as the arguments and the JAGS model file \file{normal_model_jags_model.R}.
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
  \code{\link{create.normal.model.from.file}}
}
%\examples{

%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
