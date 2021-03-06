% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/input_f.R
\name{add_util}
\alias{add_util}
\title{Defining utilities for events and interventions}
\usage{
add_util(.data = NULL, util, evt, trt, cycle_l = NULL, cycle_starttime = 0)
}
\arguments{
\item{.data}{Existing utility data}

\item{util}{Value or expression to calculate the utility estimate}

\item{evt}{Events for which this utility is applicable}

\item{trt}{Interventions for which this utility is applicable}

\item{cycle_l}{Cycle length; only needed if utilities are calculated per cycle}

\item{cycle_starttime}{Cycle when utilities start being accrued; only needed if utilities are calculated per cycle}
}
\value{
A list of utilities
}
\description{
Defining utilities for events and interventions
}
\details{
Utilities can be defined by writing expressions and objects in the cost argument whose execution will be delayed until the model runs.

This function accepts the use of pipes (\%>\%) to define multiple utilities.
}
\examples{
add_util(evt = c("start","idfs","ttot"),
trt = c("int", "noint"),
util = util.idfs.ontx * fl.idfs.ontx + util.idfs.offtx * (1-fl.idfs.ontx))
}
