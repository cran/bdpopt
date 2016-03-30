\name{plot.sim.model}
\alias{plot.sim.model}

\title{
  Plot The Results Contained In Simulation Model Object
}
\description{
  Plot method for an object of class \code{sim.model}.
}
\usage{
\method{plot}{sim.model}(x, main.var.name = NULL, main.var.min = -Inf,
  main.var.max = Inf, fixed = list(), no.legends = FALSE,
no.reg = FALSE, reg.steps = 100, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
    A simulation model object obtained as output from
  \code{eval.on.grid}, \code{fit.gpr} or \code{fit.loess}.
}
  \item{main.var.name}{
    A name for the main variable to be used when plotting. This defines
  the variable that varies along the x-axis of the plot. The full name
  of the variable must be given as a string, i.e., the name must include
  array brackets and array indices.
}
  \item{main.var.min}{
    The minimum value for the main variable.
}
\item{main.var.max}{
  The maximum value for the main variable.
}
  \item{fixed}{
    A list of vectors with named entries. Each such vector defines a set
    of fixed values for the remaining decision variables. The number of
    curves in the plot will be equal to the length of \code{fixed}. Note that the
    names of the entries must be written in full array notation, including
    explicit brackets and indices.
}
\item{no.legends}{
  By default, legends are included with numbers corresponding to the
  entries of \code{fixed}. Set \code{no.legends} to \code{TRUE} to remove it.
}
  \item{no.reg}{
    Set to \code{TRUE} in order so suppress plotting of the regression curves.
}
  \item{reg.steps}{
    The number of steps to use when plotting the regression curves.
}
  \item{\dots}{
    Not used.
}
}
\details{
  The simulation grid points included in the plot are selected as
  follows:

  \enumerate{
    \item All points for which the value of the decision variable
    defined by \code{main.var.name} is not within the region defined by
    \code{main.var.min} and \code{main.var.max} are excluded from the
    total set of grid points.
    \item For the points remaining, any point which does not correspond
    to a value listed in \code{fixed} is excluded.
  }

  In the special case when there is only one decision variable, only the
  model \code{x} needs to be specified. In the special case when there
  are only two decision variables, \code{fixed} may also be given as a vector.
  It then specifies the values of the secondary variable and one curve will
  be drawn for each value.

  The default behaviour is to also plot the fitted regression function
  if it is available, with one curve corresponding to each of the point
  sets defined by the entries of \code{fixed}.
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
