\name{print.sim.model}
\alias{print.sim.model}

\title{
  Print Status Of Simulation Model Object
}
\description{
  Print method for an object of class \code{sim.model}. Outputs some
  very concise information about the given model object.
}
\usage{
\method{print}{sim.model}(x, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{The simulation model object.}
  \item{\dots}{Not used.}
}
\details{
  Prints the JAGS model used. If a simulation over a grid has been
  performed, prints the number of simulation points. Prints a message
  stating whether or not regression has been performed. Prints the hyperparameters
  of a GPR regression if available.
}
\value{
  Returns \code{NULL}.
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
