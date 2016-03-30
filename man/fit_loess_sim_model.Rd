\name{fit.loess.sim.model}
\alias{fit.loess.sim.model}

\title{
  Fit A Local Polynomial Regression Function
}
\description{
  \code{fit.loess} method for objects of class \code{sim.model}.
}
\usage{
\method{fit.loess}{sim.model}(model, span = 0.75, degree = 2)
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
  See \code{\link{fit.loess}} for further documentation. 
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
%  \code{\link{fit.gpr}}
%}
%\examples{

%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
