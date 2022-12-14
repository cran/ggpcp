% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme_pcp.R
\name{theme_pcp}
\alias{theme_pcp}
\title{Theme for parallel coordinate plots}
\usage{
theme_pcp(base_size = 11, base_family = "")
}
\arguments{
\item{base_size}{base font size, given in pts.}

\item{base_family}{base font family}
}
\value{
A \code{ggplot2} theme object based on \code{\link[ggplot2:ggtheme]{ggplot2::theme_bw()}} without y axis and x axes labels.
}
\description{
The function \code{theme_pcp} provides a wrapper for thematic
choices suitable for parallel coordinate plots. In particular,
the labeling of axes in parallel coordinate plot is quite un-informative.
In the default theme axes labels are based on variable names derived during the
data wrangling step.
}
\examples{
library(ggplot2)
gg <- iris |>
  pcp_select(tidyselect::everything()) |>
  pcp_scale() |>
  pcp_arrange() |>
  ggplot(aes_pcp(colour = Species)) +
    geom_pcp()

# plot with the default ggplot2 theme
gg
# better:
gg + theme_pcp()
}
\seealso{
\code{\link[ggplot2:ggtheme]{ggplot2::theme_bw()}}
}
