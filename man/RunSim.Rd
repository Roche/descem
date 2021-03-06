% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RunSim.R
\name{RunSim}
\alias{RunSim}
\title{Run the simulation}
\usage{
RunSim(
  trt_list = c("int", "noint"),
  common_all_inputs = NULL,
  common_pt_inputs = NULL,
  unique_pt_inputs = NULL,
  init_event_list = NULL,
  evt_react_list = evt_react_list,
  util_ongoing_list = NULL,
  util_instant_list = NULL,
  util_cycle_list = NULL,
  cost_ongoing_list = NULL,
  cost_instant_list = NULL,
  cost_cycle_list = NULL,
  npats = 500,
  n_sim = 1,
  psa_bool = NULL,
  ncores = 1,
  drc = 0.035,
  drq = 0.035,
  input_out = NULL,
  ipd = TRUE,
  debug = FALSE
)
}
\arguments{
\item{trt_list}{A vector of the names of the interventions evaluated in the simulation}

\item{common_all_inputs}{A list of inputs common across patients that do not change within a simulation}

\item{common_pt_inputs}{A list of inputs that change across patients but are not affected by the intervention}

\item{unique_pt_inputs}{A list of inputs that change across each intervention}

\item{init_event_list}{A list of initial events and event times. If no initial events are given, a "Start" event at time 0 is created automatically}

\item{evt_react_list}{A list of event reactions}

\item{util_ongoing_list}{A list of utilities that are accrued at an ongoing basis}

\item{util_instant_list}{A list of utilities that are accrued instantaneously at an event}

\item{util_cycle_list}{A list of utilities that are accrued in cycles}

\item{cost_ongoing_list}{A list of costs that are accrued at an ongoing basis}

\item{cost_instant_list}{A list of costs that are accrued instantaneously at an event}

\item{cost_cycle_list}{A list of costs that are accrued in cycles}

\item{npats}{The number of patients to be simulated}

\item{n_sim}{The number of simulations to run per patient}

\item{psa_bool}{A boolean to determine if PSA should be conducted. If n_sim > 1 and psa_bool = FALSE, the differences between simulations will be due to sampling}

\item{ncores}{The number of cores to use for parallel computing}

\item{drc}{The discount rate for costs}

\item{drq}{The discount rate for LYs/QALYs}

\item{input_out}{A vector of variables to be returned in the output data frame}

\item{ipd}{A boolean to determine if individual patient data should be returned. If set to false, only the main aggregated outputs will be returned (slightly speeds up code)}

\item{debug}{A boolean to determine if non-parallel RunEngine function should be used, which facilitates debugging. Setting this option to true will ignore the value of ncores}
}
\value{
A list of data frames with the simulation results
}
\description{
Run the simulation
}
\examples{
\dontrun{
RunSim(trt_list=c("int","noint"),
common_all_inputs = common_all_inputs,
common_pt_inputs = common_pt_inputs,
unique_pt_inputs = unique_pt_inputs,
init_event_list = init_event_list,
evt_react_list = evt_react_list,
util_ongoing_list = util_ongoing_list,
util_instant_list = util_instant_list,
cost_ongoing_list = cost_ongoing_list,
cost_instant_list = cost_instant_list,
npats = 500,
n_sim = 1,
psa_bool = FALSE,
ncores = 1,
drc = 0.035,
drq = 0.035,
ipd = TRUE)
}
}
