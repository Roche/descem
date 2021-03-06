% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculator_f.R
\name{draw_resgompertz}
\alias{draw_resgompertz}
\title{Draw from a restricted Gompertz distribution}
\usage{
draw_resgompertz(
  n,
  shape,
  rate,
  lower_bound = 0,
  upper_bound = Inf,
  seed = NULL
)
}
\arguments{
\item{n}{The number of observations to be drawn}

\item{shape}{The shape parameter of the Gompertz distribution, defined as in the coef() output on a flexsurvreg object}

\item{rate}{The rate parameter of the Gompertz distribution, defined as in the coef() output on a flexsurvreg object}

\item{lower_bound}{The lower bound of the restricted distribution}

\item{upper_bound}{The upper bound of the restricted distribution}

\item{seed}{An integer which will be used to set the seed for this draw.}
}
\value{
Estimate(s) from the restricted Gompertz distribution based on given parameters
}
\description{
Draw from a restricted Gompertz distribution
}
\examples{
draw_resgompertz(1,shape=0.05,rate=0.01,lower_bound = 50)
}
