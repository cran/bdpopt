\name{fit.gpr}
\alias{fit.gpr}

\title{
  Fit A Gaussian Process Regression Function
}
\description{
Fit a GPR regression function to the estimated expected utility values
  obtained through simulation via JAGS by calling
  \code{eval.on.grid}. This is a generic function for S3 objects.
}
\usage{
fit.gpr(model, start, gr = TRUE, method = "L-BFGS-B",
lower = 0, upper = Inf, control = list())
}

\arguments{
  \item{model}{
    A model object obtained as the return value from \code{eval.on.grid}.
}
  \item{start}{
    Start value passed on to \code{optim} when performing the marginal
  likelihood optimisation to find appropriate values for the
  hyperparameters for the GPR regression function.
}
  \item{gr}{
    Set to \code{TRUE} if gradient information should be passed to
    \code{optim}. If false, \code{optim} uses a finite difference
    approximation of the gradient when performing the optimisation of the hyperparameters.
}
  \item{method}{
    The optimisation method to be used by \code{optim}. One of
  \code{"Nelder-Mead"}, \code{"BFGS",} \code{"CG"}, \code{"L-BFGS-B"},
  \code{"SANN"} or \code{"Brent"}.
}
  \item{lower}{
    A numeric, atomic vector containing the lower limits for the
  hyperparameters. The first entry is for the standard deviation
  parameter and the remaining entries are for the length parameters.
  If supplied, all elements must be >= 0.
}
  \item{upper}{
    A numeric, atomic vector containing the upper limits for the
  hyperparameters. The first entry is for the standard deviation
  parameter and the remaining entries are for the length parameters.
}
  \item{control}{
    A list of control parameters passed on to \code{optim}.
}
}
\details{
  The fitting operation consists of maximising the
  marginal likelihood of the hyperparameters for a GPR model based on a
  squared-exponential covariance model. This is done by minimising a
  function proportional to the negative marginal likelihood. The number
  of hyperparameters for this model equals 1 + the number of decision
  variables of the decision model. The first hyperparameter is a
  standard deviation and the rest consists of a length parameter for each decision dimension.
  
  The optimisation strategy depends on the value of \code{method}. If
  \code{"L-BFGS-B"} is used, then the arguments \code{lower} and
  \code{upper} are passed on as specified to \code{optim} as the lower and upper
  limits for the optimisation of the hyperparameters. If any other value
  is provided for \code{method}, then \code{optim} will be used to
  minimise a function defined to be equal to the objective function when
  the hyperparameter argument \code{x} satisfies \code{x >= lower},
  \code{x <= upper} and equal to \code{Inf} otherwise. The actual lower
  and upper limits passed to \code{optim} in this latter case are
  \code{-Inf} and \code{Inf}, respectively.
}
\value{  
  A new simulation model object constructed from the object given as the
  first argument and the GPR regression results. The updated components in
  the new object are \code{model$regression.fun} and
  \code{model$gpr.hyper.params}. See \code{\link{sim.model}} for a
  description of these components.
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
  \code{\link{fit.loess}}
}
%\examples{

%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
