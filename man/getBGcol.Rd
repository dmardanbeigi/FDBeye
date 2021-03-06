% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/textCanvas.R
\name{getBGcol}
\alias{getBGcol}
\title{Finds 'background' value in a matrix.}
\usage{
getBGcol(cnvs)
}
\arguments{
\item{cnvs}{A matrix representing a text canvas.}
}
\value{
A numeric value corresponding to the the most common value in \code{cnvs}.
}
\description{
Finds the most common value in a matrix and returns it.
}
\details{
Finds the 'background' value in a matrix, defined as the most common value in a matrix.

    Not necessarily intended to be called by the end user.
}
\examples{
cnvs <- system.file("extdata/story01.png", package="FDBeye")
cnvs <- png::readPNG(cnvs)
fcnvs <- apply(cnvs, c(1,2), sum) # flatten to a single plane for convenience
getBGcol(fcnvs)
}
\author{
Dave Braze <davebraze@gmail.com>
}
