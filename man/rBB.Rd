% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rMRB.R
\name{rBB}
\alias{rBB}
\title{Sampling from a Brownian bridge path give a grid time}
\usage{
rBB(time, start_pt, end_pt, sigma)
}
\arguments{
\item{time}{time points at which observations are to be simulated}

\item{start_pt}{the start point location of Brownian bridge}

\item{end_pt}{the end point location of Brownian brige}

\item{sigma}{volatility parameter of the Brownian motion}
}
\value{
A \code{data.frame} whose first column is the time points
and second column is coordinate of the locations.
}
\description{
A Brownian bridge is a continuous-time stochastic process
B(t) whose probability distribution is the conditional
probability distribution of a standard Wiener process W(t)
subject to the condition (when standardized) that W(T) = 0,
so that the process is pinned to the same value at both t = 0 and t = T.
The implementation here is a generalized Brownian bridge
that allows start point and end point at different locations.
}
\examples{
## Brownian bridge starting from location 0 and ending at location 1
## with sigma 0.1 from time 0 to time 10
plot(rBB(seq(0, 10, length.out = 100), 0, 1, 0.1), type = "l")

}
