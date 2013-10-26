\name{fitMovRes}
\alias{fitMovRes}
\alias{cllk.m1}
\title{
Fit a Moving-Resting Model with Embedded Brownian Motion
}
\description{
Fit a Moving-Resting Model with Embedded Brownian Motion with animal
movement data at discretely observation times by maximizing a composite
likelihood constructed from the marginal density of increment. 
}
\usage{
fitMovRes(data, start, method = "Nelder-Mead", optim.control = list())
cllk.m1(theta, data)
}
\arguments{
  \item{data}{
    a \code{data.frame} whose first column is the observation time, and other
    columns are location coordinates.
  }
  \item{start}{
    starting value of the model, a vector of three component, which
    represents two rate parameters of moving and resting duration, and
    one volatility parameter for the Brownian motion.
  }
  \item{method}{
    the method argument to feed \code{optim}.
  }
  \item{optim.control}{
    a list of control that if passed down to \code{optim}. 
  }
  \item{theta}{
    a parameter vector of three components (similar to \code{start})
  }
}
\value{
  \code{fitMovRes} returns a list of the following components:
  \item{estimate }{the esimated parameter vector}
  \item{cloglik }{composite loglikelihood evaluated at the estimate}
  \item{convergence}{convergence code from \code{optim}}
  
  \code{cllk.m1} returns the composite loglikelihood constructed from
  the marginal distribution of each increment.
}
\references{
  Yan, J., Chen, Y., Lawrence-Apfel, K., Ortega, I. M., Pozdnyakoc, V.,
  Williams, S., and Meyer, T. (2013+) A moving-resting process with an
  embedded Brownian motion for animal movements.
  Population Ecology. Forthcoming.
}
\author{
  Jun Yan \email{jun.yan@uconn.edu}
}
\examples{
tgrid <- seq(0, 10, length=2001)
## make it irregularly spaced
tgrid <- sort(sample(tgrid, 1000))
set.seed(123)
dat <- rMovRes(tgrid, 1, 1, 1, "m")
\dontrun{
fit <- fitMovRes(dat, start=c(2, 2, 2))
fit
}
}
\keyword{models}
