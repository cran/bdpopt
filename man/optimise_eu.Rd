\name{optimise.eu}
\alias{optimise.eu}

\title{
  Optimise Expected Utility
}
\description{
  Optimisation of expected utility, either directly over the results of
  a grid evaluation performed by \code{eval.on.grid} or by optimisation
  of the regression function constructed by \code{fit.gpr} or
  \code{fit.loess}. This is a generic function for an S3 object.
}
\usage{
optimise.eu(model, start, method = "L-BFGS-B",
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
The optimisation strategy depends on the value of \code{method}. All
  arguments except \code{model} are ignored if the method \code{"Grid"}
  is used. If \code{"L-BFGS-B"} is used, then the arguments \code{lower} and
  \code{upper} are passed on as specified to \code{optim} as the lower and upper
  limits for the optimisation of the decision variables. If any other value
  is provided for \code{method}, then \code{optim} will be used to
  maximise a function defined to be equal to the objective function when
  the decision variable argument \code{x} satisfies \code{x >= lower},
  \code{x <= upper} and equal to \code{-Inf} otherwise. The actual lower
  and upper limits passed to \code{optim} in this last case are
  \code{-Inf} and \code{Inf}, respectively.

}
\value{
  A list with components
  \item{opt.arg}{A named vector containing the optimal values for the
  decision variables.}
  \item{opt.eu}{An estimate of the optimal expected utility.}
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
