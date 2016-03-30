\name{fit.gpr.sim.model}
\alias{fit.gpr.sim.model}

\title{
  Fit A Gaussian Process Regression Function
}
\description{
  \code{fit.gpr} method for objects of class \code{sim.model}.
}
\usage{
\method{fit.gpr}{sim.model}(model, start, gr = TRUE, method = "L-BFGS-B",
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
  See \code{\link{fit.gpr}} for further documentation.
}
%\value{  
 
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
%  \code{\link{fit.loess}}
%}
%\examples{

%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
