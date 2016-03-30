\name{create.utility.function}
\alias{create.utility.function}

\title{
  Create Utility Function For The Normal Model
}
\description{
  Create a utility function to be used together with a
  normal simulation model object created using \code{create.normal.model} or \code{create.normal.model.from.file}.
}
\usage{
create.utility.function(model, n.min, sig.level, safety.max, cE, cS, p,
fixed.cost, cost.per.sample)
}

\arguments{
  \item{model}{
    A model object created using \code{create.normal.model} or \code{create.normal.model.from.file}.
}
  \item{n.min}{
    The minimum group sample size for each phase III group trial
  required by the regulatory authority in order to consider market approval.
}
  \item{sig.level}{
    The significance level used by the regulatory authority when
  performing the one-sided hypothesis tests for acceptable efficacy and
  safety levels in the phase III trial.
}
  \item{safety.max}{
    A parameter defining the maximum safety threshold in the
  significance test for an acceptable safety level.
}
  \item{cE}{
    A constant defining the utility gain per unit of efficacy.
}
  \item{cS}{
    A constant defining the utility gain per unit of safety. The
  absolute value of this number defines the utility loss, and hence
  \code{cS} should typically be less than or equal to zero.
}
  \item{p}{
    A number between 0 and 1 which weighs the relative contribution of
  the observed responses and the true population means to the utility
  upon regulatory approval. A value of 1 corresponds to no contribution
  made by the population means.
}
  \item{fixed.cost}{
    The fixed cost of performing the phase III trials.
}
\item{cost.per.sample}{
  The cost per observation in the phase III trials.
  }
}
\details{
  The utility function has the form:

  \code{RA.decision * gain - trial.cost}

  where

  \code{gain = p * (cE * mean(YE) + cS * mean(YS)) + (1 - p) * (cE * mean(muE)
    + cS * mean(muS))}

  \code{trail.cost = fixed.cost + cost.per.sample * k.III * n.III}
}
\value{
  An \R function to be used together with \code{model} when calling
  \code{eval.on.grid}, \code{fit.gpr}, \code{fit.loess} and \code{optimise.eu}.
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
