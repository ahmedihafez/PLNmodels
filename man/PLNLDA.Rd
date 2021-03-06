% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PLNLDA.R
\name{PLNLDA}
\alias{PLNLDA}
\title{Poisson lognormal model towards Linear Disciminant Analysis}
\usage{
PLNLDA(formula, data, subset, weights, grouping, control = list())
}
\arguments{
\item{formula}{an object of class "formula": a symbolic description of the model to be fitted.}

\item{data}{an optional data frame, list or environment (or object coercible by as.data.frame to a data frame) containing the variables in the model. If not found in data, the variables are taken from environment(formula), typically the environment from which lm is called.}

\item{subset}{an optional vector specifying a subset of observations to be used in the fitting process.}

\item{weights}{an optional vector of weights to be used in the fitting process. Should be NULL or a numeric vector.}

\item{grouping}{a factor specifying the class of each observation used for discriminant analysis.}

\item{control}{a list for controling the optimization process. See details.}
}
\value{
an R6 object with class \code{\link[=PLNLDAfit]{PLNLDAfit}}
}
\description{
Fit the Poisson lognormal for LDA with a variational algorithm. Use the (g)lm syntax for model specification (covariates, offsets).
}
\details{
The list of parameters \code{control} tunes the optimization of the intialization and the main process, with the following entries
\itemize{
 \item{"ftol_rel"}{stop when an optimization step changes the objective function by less than ftol_rel multiplied by the absolute value of the parameter.}
 \item{"ftol_abs"}{stop when an optimization step changes the objective function by less than ftol_abs .}
 \item{"xtol_rel"}{stop when an optimization step changes every parameters by less than xtol_rel multiplied by the absolute value of the parameter.}
 \item{"xtol_abs"}{stop when an optimization step changes every parameters by less than xtol_abs.}
 \item{"maxeval"}{stop when the number of iteration exceeds maxeval. Default is 10000}
 \item{"method"}{the optimization method used by NLOPT among LD type, i.e. "MMA", "LBFGS",
    "TNEWTON", "TNEWTON_RESTART", "TNEWTON_PRECOND", "TNEWTON_PRECOND_RESTART",
    "TNEWTON_VAR1", "TNEWTON_VAR2". See NLOPTR documentation for further details. Default is "MMA".}
 \item{"lbvar"}{the lower bound (box constraint) for the variational variance parameters. Default is 1e-5.}
 \item{"trace"}{integer for verbosity. Useless when \code{cores} > 1}
 \item{"inception"}{a PLNfit to start with. If NULL, a PLN is fitted on the . If an R6 object with class 'PLNfit' is given, it is used to initialize the model.}
 \item{"cores"}{The number of core used to paralellize jobs over the \code{ranks} vector. Default is 1.}
}
}
\examples{
## See the vignette: vignette("PLNLDA_trichoptera", package="PLNmodels")
}
\seealso{
The class \code{\link[=PLNLDAfit]{PLNLDAfit}}
}
