\name{sequential.normal.dp}
\alias{sequential.normal.dp}

\title{
  Create A Sequential Normal Decision Problem
}
\description{
  Create an object representing a sequential normal decision problem. A
  single observation with a normal distribution is made at each
  stage. The parameter is a true population mean with a conjugate normal
  prior. Under the assumption of a known population standard deviation,
  the variance of the posterior distribution for the parameter does not
  depend on the observations as is known at each stage. This implies
  that the state is one-dimensional and equals the mean
  of the posterior distribution for the parameter at each stage.
}
\usage{
sequential.normal.dp(n.stages, group.size, tau, sigma,
stage.cost, final.cost, final.gain)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n.stages}{
    The number of stages of the sequential decision problem.
}
  \item{group.size}{
    The sample size at each stage. The individal samples are combined
  into a group mean, which is the single observation at each stage.
}
  \item{tau}{
    The standard deviation of the prior for the unknown population mean
  before the first stage.
}
  \item{sigma}{
    The population standard deviation for a single individual. The
  standard deviation for the group response is this value divided by the
  square root of \code{group.size}.
}
  \item{stage.cost}{
    The cost of proceeding to the next stage.
}
  \item{final.cost}{
    The cost payed at the final stage if a finalisation decision is
  taken (if a stopping decision is taken, this cost is not payed).
}
  \item{final.gain}{
    A constant which is multiplied with the true population mean in
  order to obtain the utility gain at the final stage, if a finalisation
  decision is taken (if a stopping decision is taken, this gain is not
  included in the total utility).
}
}
\details{
  In all stages but the last, the two decisions available are to either
  continue and pay the stage cost or to stop and abort (which costs
  nothing). At the final stage, the two decisions available are to
  either finalise the process and obtain the final gain and pay the
  final cost or to stop and abort (whith no gain and no cost).  
}
\value{
  A list representing a sequential decision problem object. See
  \code{\link{sequential.dp}} for further description of the components.
}
%\references{
%% ~put references to the literature/web site here ~
%}
\author{
  Sebastian Jobjörnsson \email{jobjorns@chalmers.se}
}
%\note{

%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
  \code{\link{sequential.dp}}
}
%\examples{

%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
