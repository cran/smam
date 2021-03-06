% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/movres.R
\name{estVarMRME_Godambe}
\alias{estVarMRME_Godambe}
\alias{estVarMRME_pBootstrap}
\alias{estVarMRMEnaive_Godambe}
\alias{estVarMRMEnaive_pBootstrap}
\title{Variance matrix of estimators from moving-resting process with measurement error}
\usage{
estVarMRME_Godambe(
  est_theta,
  data,
  nBS,
  numThreads = 1,
  gradMethod = "simple",
  integrControl = integr.control()
)

estVarMRME_pBootstrap(
  est_theta,
  data,
  nBS,
  detailBS = FALSE,
  numThreads = 1,
  integrControl = integr.control()
)

estVarMRMEnaive_Godambe(
  est_theta,
  data,
  nBS,
  numThreads = 1,
  gradMethod = "simple",
  integrControl = integr.control()
)

estVarMRMEnaive_pBootstrap(
  est_theta,
  data,
  nBS,
  detailBS = FALSE,
  numThreads = 1,
  integrControl = integr.control()
)
}
\arguments{
\item{est_theta}{estimators of MRME model}

\item{data}{data used to process estimation}

\item{nBS}{number of bootstrap.}

\item{numThreads}{the number of threads for parallel computation. If its value
is greater than 1, then parallel computation will be processed. Otherwise,
serial computation will be processed.}

\item{gradMethod}{method used for numeric gradient (\code{numDeriv::grad}).}

\item{integrControl}{a list of control parameters for the \code{integrate}
function: rel.tol, abs.tol, subdivision.}

\item{detailBS}{whether or not output estimation results during bootstrap,
which can be used to generate bootstrap CI.}
}
\value{
variance-covariance matrix of estimators
}
\description{
'estVarMRME_Godambe' uses Godambe information matrix to obtain variance matrix
of estimators from 'fitMRME'.
'estVarMRME_pBootstrap' uses parametric bootstrap to obtain variance matrix
of estimators from 'fitMRME'.
'estVarMRMEnaive_Godambe' use Godambe information matrix to obtain variance matrix
of estimators from 'fitMRME_naive'.
'estVarMRMEnaive_pBootstrap' uses parametric bootstrap to obtain variance matrix
of estimators from 'fitMRME_naive'.
}
\examples{
\dontrun{
## time consuming example
tgrid <- seq(0, 10*100, length=100)
set.seed(123)
dat <- rMRME(tgrid, 1, 0.5, 1, 0.01, "m")

estVarMRME_Godambe(c(1, 0.5, 1, 0.01), dat, nBS = 10)
estVarMRME_pBootstrap(c(1, 0.5, 1, 0.01), dat, nBS = 10)
estVarMRMEnaive_Godambe(c(1, 0.5, 1, 0.01), dat, nBS = 10)
estVarMRMEnaive_pBootstrap(c(1, 0.5, 1, 0.01), dat, nBS = 10)

estVarMRME_Godambe(c(1, 0.5, 1, 0.01), dat, nBS = 10, numThreads = 6)
estVarMRME_pBootstrap(c(1, 0.5, 1, 0.01), dat, nBS = 10, numThreads = 6)
estVarMRMEnaive_Godambe(c(1, 0.5, 1, 0.01), dat, nBS = 10, numThreads = 6)
estVarMRMEnaive_pBootstrap(c(1, 0.5, 1, 0.01), dat, nBS = 10, numThreads = 6)
estVarMRMEnaive_pBootstrap(c(1, 0.5, 1, 0.01), dat, nBS = 10, numThreads = 6)
}
}
\author{
Chaoran Hu
}
