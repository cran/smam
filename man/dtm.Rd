\name{dtm}
\alias{dtm}
\alias{dtr}
\title{
Density for Time Spent in Moving or Resting
}
\description{
Density for time spent in moving or resting in a time interval,
unconditional or conditional on the initial state.
}
\usage{
dtm(w, t, lamM, lamR, s0 = NULL)
dtr(w, t, lamM, lamR, s0 = NULL)
}
\arguments{
  \item{w}{
    time points at which the density is to be evaluated
  }
  \item{t}{
    the length of the time interval
  }
  \item{lamM}{
    the rate parameter of the exponentially distributed moving stage
    duration
  }
  \item{lamR}{
    the rate parameter of the exponentially distributed resting stage
    duration
  }
  \item{s0}{
   the initial state. If \code{NULL}, the unconditional density is
   returned; otherwise, it is one of "m" or "s", standing for moving and
   resting, respectively, and the conditional density is returned given
   the initial state.
  }
}
\value{
  a vector of the density evaluated at \code{w}
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
lamM <- 1
lamR <- c(1/2, 1, 2)
lr <- length(lamR)
totalT <- 10

old.par <- par(no.readonly=TRUE)

par(mfrow=c(1, 2), mar=c(2.5, 2.5, 1.1, 0.1), mgp=c(1.5, 0.5, 0), las=1)

curve(dtm(x, totalT, 1, 1/2, "m"), 0, totalT, lty=1, ylim=c(0, 0.34),
      xlab="M(10)", ylab="density")
curve(dtm(x, totalT, 1, 1, "m"), 0, totalT, lty=2, add=TRUE)
curve(dtm(x, totalT, 1, 2, "m"), 0, totalT, lty=3, add=TRUE)
mtext(expression("S(0) = 1"))
legend("topleft", legend = expression(lambda[r] == 1/2, lambda[r] == 1,
      lambda[r] == 2), lty = 1:lr)

curve(dtm(x, totalT, 1, 1/2, "r"), 0, totalT, lty=1, ylim=c(0, 0.34),
      xlab="M(10)", ylab="density")
curve(dtm(x, totalT, 1, 1, "r"), 0, totalT, lty=2, add=TRUE)
curve(dtm(x, totalT, 1, 2, "r"), 0, totalT, lty=3, add=TRUE)
mtext(expression("S(0) = 0"))
legend("topleft", legend = expression(lambda[r] == 1/2, lambda[r] == 1,
      lambda[r] == 2), lty = 1:lr)

par(old.par)
}
\keyword{distribution}
