\name{optimise.eu.sim.model}
\alias{optimise.eu.sim.model}

\title{
  Optimise Expected Utility
}
\description{
  \code{optimise.eu} method for objects of class \code{sim.model}.  
}
\usage{
\method{optimise.eu}{sim.model}(model, start, method = "L-BFGS-B",
lower = -Inf, upper = Inf, control = list())
}

\arguments{
  \item{model}{
    A simulation model object returned by \code{eval.on.grid},
  \code{fit.gpr} or \code{fit.loess}. Specifying any method other than \code{"Grid"}
  requires that the object has been obtained from \code{fit.gpr} or \code{fit.loess}. 
}
  \item{start}{
    The start value when performing the search for a maximum. Passed on
  to \code{optim}. 
}
\item{method}{
  The optimisation method to be used. Must be one of
  \code{"Nelder-Mead"}, \code{"BFGS"}, \code{"CG"}, \code{"L-BFGS-B"},
  \code{"SANN"}, \code{"Brent"} or \code{"Grid"}.
}
  \item{lower}{
    A numeric, atomic vector giving the lower limits for the decision
  variables when performing the maximisation.
}
\item{upper}{
  A numeric, atomic vector giving the upper limits for the decision
  variables when performing the maximisation.
}
\item{control}{
  A list of control parameters passed on to \code{optim}.
}
}
\details{
  See \code{\link{optimise.eu}} for further documentation.

}
%\value{
%  A list with components
%  \item{opt.arg}{A named vector containing the optimal values for the
%  decision variables.}
%  \item{opt.eu}{An estimate of the optimal expected utility.}
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
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
%\examples{
%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
