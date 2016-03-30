\name{sequential.dp}
\alias{sequential.dp}

\title{
  Construct A Sequential Decision Problem
}
\description{
  Construct a sequential decision problem. The object constructed is
  just a list with components named as the arguments to the function.
}
\usage{
sequential.dp(n.stages, post.sample, pred.sample, update.state,
term.decisions, term.obs.decisions, cont.decisions,
term.utility.fun, term.obs.utility.fun, cont.utility.fun)
}

\arguments{
  \item{n.stages}{
    The number of stages in the sequential decision problem.
}
  \item{post.sample}{
    A function taking a stage, a state and the simulation iteration
  count into a random sample from the posterior distribution of the model parameter given the
  value of the state when being at the given stage.
}
  \item{pred.sample}{
    A function taking a stage, a list of parameter values and a decision
  into a list of random samples from the conditional distributions of the
  observable variable at the given stage. The i:th value in the list
  returned should be a sample from the predictive distribution
  conditioned on the i:th entry in the list of parameter values.
}
  \item{update.state}{
    A function that takes a stage, a state, a decision \code{d} and a
  list of observations into a list of updated states.
  The updated values should be the ones obtained when combining
  the observations in order with the original state, given d.
}
\item{term.decisions}{
    A list the length of which must be equal to \code{n.stages}. The
    i:th element of the list specifies the terminal decisions available at stage i.
}
\item{term.obs.decisions}{
  A list the length of which must be equal to \code{n.stages}. The
    i:th element of the list specifies the terminal observation decisions available at stage i.
}
\item{cont.decisions}{
  A list the length of which must be equal to \code{n.stages}. The
    i:th element of the list specifies the continuation decisions available at stage i.
  }
  
  \item{term.utility.fun}{
    A list of terminal utility functions of length equal to
    \code{n.stages}. Each element of the list should be a function
    mapping a pair \code{(d, theta)} into to a numeric value, where
    \code{d} is a decision and \code{theta} is a parameter value.
}
\item{term.obs.utility.fun}{
    A list of terminal utility functions of length equal to
    \code{n.stages}. Each element of the list should be a function
    mapping a triple \code{(d, X, theta)} into to a numeric value, where
    \code{d} is a decision, \code{X} is an observation and \code{theta} is a parameter value.
}
\item{cont.utility.fun}{
  A list of terminal utility functions of length equal to
  \code{n.stages}. Each element of the list should be a function
  mapping a pair \code{(d, X)} into to a numeric value, where
  \code{d} is a decision and \code{X} is an observation.
}
}
\details{
  For any stage i, at least one of the elements of the decision lists
  must be nonempty, i.e., the sum of \code{length(term.decisions[[i]])},
  \code{length(term.obs.decisions[[i]])} and
  \code{length(cont.decisions[[i]]} 
  must be greater than or equal to 1.
  
  For the last stage, all decisions must be terminal decisions, i.e.,
  \code{length(cont.decisions[[n.stages]])} must equal 0 and the sum of 
  \code{length(term.decisions[[n.stages]])} and \cr
  \code{length(term.obs.decisions[[n.stages]])} must be greater than or equal
  to 1.
}
\value{
  A list for which the components have the same names and are in the same
  order as the arguments to the function. 
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
  \code{\link{sequential.normal.dp}}
}
%\examples{

%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
