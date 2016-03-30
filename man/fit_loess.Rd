\name{fit.loess}
\alias{fit.loess}

\title{
  Fit A Local Polynomial Regression Function
}
\description{
Fit a local polynomial regression function to the estimated expected utility values
  obtained through simulation via JAGS by calling
  \code{eval.on.grid}. This is a generic function for S3 objects.
}
\usage{
fit.loess(model, span = 0.75, degree = 2)
}

\arguments{
  \item{model}{
    A model object obtained as the return value from \code{eval.on.grid}.
}
  \item{span}{
    A parameter which controls the degree of smoothing.
}
\item{degree}{
  The degree of the polynomials to be used, normally 1 or 2.    
}
  
}
\details{
  This function calls \code{loess} in package \pkg{stats} to perform a
  regression. Note that the number of decision variables must be
  between 1 and 4, since this is the range supported by \code{loess}.

  The formula passed as \code{formula} to \code{loess} has the form
  \code{"y ~ x1 + x2"} (for two decision variables, and correspondingly
  for any other number between 1 and 4). The \code{span} and
  \code{degree} arguments are passed on to \code{loess} as
  given. Further, \code{surface = "direct"} is used as a \code{loess}
  control value in order to allow for extrapolation for the fitted
  function. For the remaining arguments of \code{loess}, the default values are used. 
}
\value{  
  A new simulation model object constructed from the object given as the
  first argument and the local polynomial regression results. The updated components in
  the new object are \code{model$regression.fun} and
  \code{model$gpr.hyper.params} (set to \code{NA}). See \code{\link{sim.model}} for a
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
  \code{\link{fit.gpr}}
}
%\examples{

%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
