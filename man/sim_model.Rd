\name{sim.model}
\alias{sim.model}

\title{
Construct A Simulation Model Object
}
\description{
Construct a simulation model object from a JAGS model file and a JAGS
data file or a named list of data objects.
}
\usage{
sim.model(model.file, data)
}

\arguments{
  \item{model.file}{
    Name of the file defining the JAGS model. This must be an atomic
  character vector of a single element.
}
  \item{data}{
    Name of the file defining the JAGS data or a named list of \R
  objects. If a file name, it must be an atomic character vector of a single element.
}
}
%\details{}
\value{
  An S3 object of class \code{sim.model} with components	     
  \item{model.file}{The name of the JAGS model file used to create the object.}
  \item{data}{A named list of data objects extracted from the JAGS data
  file or directly supplied as an argument.}
  \item{grid.spec.list}{The grid specification list after grid
  evaluation. Initially set to \code{NA} when the object is created.}
  \item{sim.points}{A matrix with with columns holding the positions of
  the grid points after grid evaluation. Initially set to \code{NA} when the object is created.}
  \item{sim.means}{A vector holding the sample means after grid
  evaluation. Initially set to \code{NA} when the object is created.}
\item{sim.SEs}{A vector holding the standard errors corresponding to
    the sample means after grid evaluation. Initially set to \code{NA}
    when the object is created.}  
  \item{regression.fun}{The approximate, smoothed function after
  regression has been performed. Initially set to \code{NA} when the object is created.}
  \item{gpr.hyper.params}{The hyperparameters selected in the GPR
  regression after it has been performed. Initially set to \code{NA} when the object is created.}
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
  \code{\link{create.normal.model}}
}
%\examples{
%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
