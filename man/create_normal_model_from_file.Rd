\name{create.normal.model.from.file}
\alias{create.normal.model.from.file}

\title{
  Create Normal Emax Model From File
}
\description{
  Create a simulation model object for optimisation of the dose and
  sample size for a (or several, parallel) phase III clinical trial
  given phase II data. There is one efficacy response and one safety
  response obtained as sample means for each group of patients given a
  specific dose. These are both normal given the true populations
  means. The population means for efficacy and safety are in turn
  modeled using two independent Emax models. This function uses the file
  \file{normal_model_jags_data.R} to specify the parameters of the model
  instead of the user supplying these as arguments (as for \code{create.normal.model}).
}
\usage{
create.normal.model.from.file(path.to.package = NA)
}

\arguments{  
\item{path.to.package}{
  The search path to the installation directory of \pkg{bdpopt}. For the
    default value, the function will attempt to find the path using \code{search}.
}  
}

\details{
  See the argument description of \code{\link{create.normal.model}} for
  the objects that have to be specified in \file{normal_model_jags_data.R}.
}
\value{
  A simulation model object of class \code{sim.model}, created using the
  JAGS data file \file{normal_model_jags_data.R} and the JAGS model file \file{normal_model_jags_model.R}.
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
