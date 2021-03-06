% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ResamplingSubsampling.R
\name{mlr_resamplings_subsampling}
\alias{mlr_resamplings_subsampling}
\alias{ResamplingSubsampling}
\title{Subsampling Resampling}
\description{
Splits data \code{repeats} (default: 30) times into training and test set
with a ratio of \code{ratio} (default: 2/3) observations going into the training set.
}
\section{Dictionary}{

This \link{Resampling} can be instantiated via the \link[mlr3misc:Dictionary]{dictionary} \link{mlr_resamplings} or with the associated sugar function \code{\link[=rsmp]{rsmp()}}:\preformatted{mlr_resamplings$get("holdout")
rsmp("holdout")
}
}

\section{Parameters}{

\itemize{
\item \code{repeats} (\code{integer(1)})\cr
Number of repetitions.
\item \code{ratio} (\code{numeric(1)})\cr
Ratio of observations to put into the training set.
}
}

\examples{
# Create a task with 10 observations
task = tsk("iris")
task$filter(1:10)

# Instantiate Resampling
rss = rsmp("subsampling", repeats = 2, ratio = 0.5)
rss$instantiate(task)

# Individual sets:
rss$train_set(1)
rss$test_set(1)
intersect(rss$train_set(1), rss$test_set(1))

# Internal storage:
rss$instance$train # list of index vectors
}
\references{
\cite{mlr3}{bischl_2012}
}
\seealso{
\link[mlr3misc:Dictionary]{Dictionary} of \link[=Resampling]{Resamplings}: \link{mlr_resamplings}

\code{as.data.table(mlr_resamplings)} for a complete table of all (also dynamically created) \link{Resampling} implementations.

Other Resampling: 
\code{\link{Resampling}},
\code{\link{mlr_resamplings_bootstrap}},
\code{\link{mlr_resamplings_custom}},
\code{\link{mlr_resamplings_cv}},
\code{\link{mlr_resamplings_holdout}},
\code{\link{mlr_resamplings_insample}},
\code{\link{mlr_resamplings_repeated_cv}},
\code{\link{mlr_resamplings}}
}
\concept{Resampling}
\section{Super class}{
\code{\link[mlr3:Resampling]{mlr3::Resampling}} -> \code{ResamplingSubsampling}
}
\section{Active bindings}{
\if{html}{\out{<div class="r6-active-bindings">}}
\describe{
\item{\code{iters}}{(\code{integer(1)})\cr
Returns the number of resampling iterations, depending on the values stored in the \code{param_set}.}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{ResamplingSubsampling$new()}}
\item \href{#method-clone}{\code{ResamplingSubsampling$clone()}}
}
}
\if{html}{
\out{<details ><summary>Inherited methods</summary>}
\itemize{
\item \out{<span class="pkg-link" data-pkg="mlr3" data-topic="Resampling" data-id="format">}\href{../../mlr3/html/Resampling.html#method-format}{\code{mlr3::Resampling$format()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="mlr3" data-topic="Resampling" data-id="help">}\href{../../mlr3/html/Resampling.html#method-help}{\code{mlr3::Resampling$help()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="mlr3" data-topic="Resampling" data-id="instantiate">}\href{../../mlr3/html/Resampling.html#method-instantiate}{\code{mlr3::Resampling$instantiate()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="mlr3" data-topic="Resampling" data-id="print">}\href{../../mlr3/html/Resampling.html#method-print}{\code{mlr3::Resampling$print()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="mlr3" data-topic="Resampling" data-id="test_set">}\href{../../mlr3/html/Resampling.html#method-test_set}{\code{mlr3::Resampling$test_set()}}\out{</span>}
\item \out{<span class="pkg-link" data-pkg="mlr3" data-topic="Resampling" data-id="train_set">}\href{../../mlr3/html/Resampling.html#method-train_set}{\code{mlr3::Resampling$train_set()}}\out{</span>}
}
\out{</details>}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
Creates a new instance of this \link[R6:R6Class]{R6} class.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ResamplingSubsampling$new()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ResamplingSubsampling$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
